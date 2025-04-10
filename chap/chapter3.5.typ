=== WebScraping - Unsupervised Learning
Il secondo progetto a cui ho lavorato è stato WebScraping, l'obiettivo era classificare l'aspetto dei siti tramite AI. \ La task risultava complicata da svolgere manualmente, quindi abbiamo cercato di sviluppare un modello AI in grado di classificare questi siti. \ Il primo passo era creare dei batch di immagini tramite unsupervised learning, ovvero lasciavamo al sistema la classificazione delle immagini secondo criteri non noti, ma tramite riconoscimento ed analisi di feature grafiche. \
Lo sviluppo passa per queste fasi:
+ *Preparazione delle Immagini*: In breve tramite crawling prendevamo screenshot delle pagine dei siti e la salvavamo nel NAS locale, da qui dovevamo poi prenderle, processarle e passarle al resto del codice. \ Il primo problema è stato il processare parallelamente il gran numero di immagini che avevamo, il secondo l'effettivo processare e normalizzare le immagini. 
  - Per il primo problema ho utilizzato la classe _ThreadPoolExecutor_ che distribuisce il lavoro in tutti i core del processore:
    ```python
    from concurrent.futures import ThreadPoolExecutor, as_completed
    from tqdm import tqdm
    
    max_workers = os.cpu_count()
    images = []
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
      future_to_task = {}
      for image_name in os.listdir(self.local_image_dir):
        future = executor.submit(process_image, image_name)
        future_to_task[future] = image_name

   for future in 
    tqdm(as_completed(future_to_task), 
    total = len(future_to_task), 
    desc = "Caricamento immagini"):
      image = future.result()
      if image is not None:
        images.append(image)
            
    return np.array(images)
    ```
    
  - Per processe le immagini ho utilizzato la classe _cv2_:
    ```python
    import cv2

    image = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE if as_gray else cv2.IMREAD_COLOR)

    if not as_gray:
        image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

    image = cv2.resize(
      image, 
      (image_size, image_size), 
      interpolation=cv2.INTER_AREA
    )

    image = image.astype(np.float32) / 255.0
    ```
    Dove è fondamentale il passaggio di ridimensionamento dell'immagini, _image_size_ indica la grandezza in pixel dell'immagine. \ Immagini con dimensioni piccole velocizzano il processo, ma diminuiscono il numero di feature, immagini con dimensioni grande viceversa
   \ \
+ *Batching e prefetching delle Immagini*: Questo passaggio usa la libreria _TensorFlow_ con ottimizzazione per la GPU. \
  ```python
  import tensorflow as tf

  dataset = tf.data.Dataset.from_tensor_slices((images, images))
  dataset = dataset.batch(batch_size)
  dataset = dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)
  ```
  Dove è importante assegnare correttamente la variabile _batch_size_, se si dispone di una GPU potente con molta memoria si può utilizzare un valore alto per velocizzare il processo, altrimenti conviene abbassare il valore. \ La variabile indica quante immagini vengono prese per ogni operazione di prefeching;
   \ \
+ *Creazione e addestramento dell'autoencoder*: Anche questo passaggio utilizza la libreria _TensorFlow_ con ottimizzazioni per GPU.
  ```python
  from tensorflow.keras.layers import Input, Dense, Flatten, Reshape

  encoder_function = 'relu'
  decoder_function = 'sigmoid'
  optimizer = optimizers.Adam()
  loss = 'binary_crossentropy

  x = Flatten()(images)
  x = Dense(2048, activation = encoder_function)(x)
  x = Dense(1024, activation = encoder_function)(x)
  x = Dense(512, activation = encoder_function)(x)
  x = Dense(128, activation = encoder_function)(x)
  
  # Bottleneck
  encoded = Dense(64, activation=encoder_function)(x)  
  
  x = Dense(128, activation = decoder_function)(encoded)
  x = Dense(512, activation = decoder_function)(x)
  x = Dense(1024, activation = decoder_function)(x)
  x = Dense(2048, activation = decoder_function)(x)
  x = Dense(np.prod(input_shape), activation=decoder_function)(x)
  
  decoded = Reshape(input_shape)(x)
  
  autoencoder = Model(image, decoded)
  autoencoder.compile(optimizer = optimizer, loss = loss)

  # utilizza il dataset con batching e prefetching
  autoencoder.fit(dataset, epochs = EPOCHS, shuffle = True)
  ```
  Questo è il passaggio cruciale dell'unsupervised learning, si definisce ogni strato dell'encoder fino al bottleneck e poi ogni strato del decoder. \ Gli strati dell'encoder vanno a comprimere e sintetizzare l'immagine fino ad una sua rappresentazione astratta, gli strati del decoder, successivamente, espandono e ricostruiscono l'immagine. \
  Ogni strato viene definito con il numero di neuroni che lo compone e la funzione di attivazione per la codifica o decodifica dell'immagine. \ \
+ *Estrazione delle feature dai dati*: In questa fase si utilizza l'output del _Bottleneck_, lo strato centrale dell'autoencoder per estrarre le feature delle immagini. \ Le feature vengono poi ridotte di dimensione con la libreria PCA, questo serve per velocizzare il modello. 
  ```python
  encoder = 
  Model(autoencoder.input, autoencoder.layers[-5].output)
  latent_features = encoder.predict(images)
  
  pca = PCA(n_components=PCA_COMP)
  latent_features_pca = pca.fit_transform(latent_features)
  ```
  Dove _autoencoder.layers[-5],output_ rappresenta il bottleneck, ma a seconda dell'autoencoder questo strato potrebbe cambiare posizione. \ Per limiti hardware noi abbiamo utilizzato 4 layer per encoder e 4 per decoder e un certo numero limitato di neuroni, ma combinazioni diverso potrebbero portare a risultati migliori. \ Nel nostro caso serveva provare che il processo funzionasse prima di ottimizzarlo.

+ *Clustering delle immagini*: Il penultimo passaggio è la clusterizzazione delle immagini
  ```python
  from sklearn.cluster import KMeans
  
  n_cluster = 7
  random_state = 42
  
  kmeans = KMeans(n_clusters, random_state)
  clusters = kmeans.fit_predict(latent_features)
  ```
  Dove 7 indica il numero di cluster, ogni applicazione richiede un numero di cluster differente, per la classificazione di siti web 7 cluster erano sufficienti. \ La variabile _random_state_ previene la clusterizzazine casuale, il 42 viene usato solo come riferimento, si può scegliere qualsiasi numero. Questo numero indica il _seed_ della clusterizzazione.
  
+ *Creazione dei cluster*: Il passaggio finale è la creazione dei cluster in cartelle locali, viene creata una cartella per ogni cluster e le immagini del cluster inserite nella cartella.
  ```python
  clusters_dir = "path/to/clusters/direcotry"
  image_paths = "path/to/images/direcotry"
  
  for cluster in set(clusters):
    cluster_dir = os.path.join(clusters_dir, f"cluster_{cluster}")
    os.makedirs(cluster_dir, exist_ok=True)

    for i, img_path in enumerate(image_paths):
      if clusters[i] == cluster:
        if os.path.exists(img_path):
          shutil.copy(img_path, cluster_dir)
  ```
  Con questo termina l'unsupervised learning, ottenendo la suddivisione degli screenshot dei siti web in cartelle. 

=== WebScraping - Supervised Learning
Questa sezione parla dello sviluppo del modello di apprendimento supervisionato. \
Le fasi son state le seguenti: 
+ *Preparazione categorie supervisionate*

+ *Suddivisione dataset*

+ 

=== WebScraping - Validation

=== Invio Automatico Mail