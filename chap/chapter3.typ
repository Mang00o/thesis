#pagebreak(to:"odd")
= Il Tirocinio


== Prime Settimane
Questa sezione parla delle prime settimane di tirocinio, in cui ho configurato l'ambiente di lavoro e ho appreso le norme di sviluppo aziendali.

=== Configurazione Ambiente
L'azienda mi ha fornito una postazione su cui lavorare, ho quindi dovuto configurare il computer ed inserire le mie credenziali. 
\ \
*Google Chrome* \ In azienda viene usata una web app per la timbratura, siccome utilizza delle credenziali di accesso, ho deciso di accedere al mio profilo google in modo da poter salvare le password. \ Inoltre l'accesso su chrome mi permetteva di salvare nei preferiti alcune pagine, come quelle di documentazione e quelle di strumenti aziendali, come Plane o Plesk. \ Salvare queste pagine garantiva una facile e veloce consultazione in caso di dubbi.
\ \
*Telegram e Discord* \ Sono i due canali di comunicazione interna, ho quindi provveduto subito ad effettuare l'accesso ed entrare nei canali aziendali.
\ \
*Git* \ Fondamentale per il versionamento ho installato Git e GitHub Desktop, effettuato l'accesso e clonato in locale i repositori su cui dovevo lavorare. \ Inoltre, come menzionato in precedenza, l'azienda utilizzava Gitea per il versionamento di alcuni progetti, ho provveduto a richiedere che il mio account Git fosse collegato con l'account aziendale per visualizzare i progetti interni.
\ \ 
*Docker e DDEV* \ Fondamentale per un ambiente di lavoro condiviso è contenizzare il progetto. \ Ho quindi provveduto a scaricare Docker Desktop ed installare DDEV nella mia macchina. \ I progetti aziendali sono tutti contenerizzati con DDEV, quindi ho letto la documentazione e testato il funzionamento per capirlo appieno.
\ \ 

#pagebreak()

*Visual Studio Code* \ L'azienda non impone un ambiente di sviluppo comune, _integrated development environment_ (IDE), ogni programmatore è libero di usare quello che preferisce, nel mio caso per abitudine e semplicità di adattamenteo, ho utilizzato _Visual Studio Code_ (VS Code), ho effettuato l'accesso con il mio profilo per la sincronizzazione, ho poi provveduto ad installare le estensioni necessarie per i progetti aziendali: 
- Pacchetto estensioni per Python;
- Pacchetto estensioni per Laravel;
- Pacchetto estensioni per Php;
- Pacchetto estensioni Git Lens.
\
*WSL* \ RelAI, il progetto su cui ho lavorato, viene eseguito sull'ambiente virtuale Linux in Windows, _Windows Subsystem for Linux_ (WSL), per garantire maggior velocità, ho quindi installato nel computer WSL 2 e spostato nell'apposita cartella di sistema i progetti aziendali. 
\ \
*Python e Venv* \ Ho ovviamente installato una versione di Python per lo sviluppo del RAG e ho attivato un ambinete virtuale _venv_ per sviluppare il RAG.
\ \
*Ollama* \ Per il mio progetto dovevo sviluppare un RAG, quindi mi serviva un modello AI per generare le risposte, l'azienda mi ha proposto di utilizzare un modello in locale, ci siamo affidati ad Ollama. \ In azienda c'è un computer in cui è installato il modello _llama3:70b_, ma in locale, per effettuare test, ho installato un modello più leggero: _codellame:7b_.
\ \
*TensorFlow 3.10* \ Nella seconda parte di progetto, quella definita dal cambio, ho utilizzato la potenza della scheda video NVidia per analizzare le immagini, questo ha portato all'installazione di TensorFlow 3.10, ultima versione su windows compatibile con scheda grafica, _graphics processing unit_ (GPU). \ TensorFlow è un framework open source sviluppato da Google che consente di creare e allenare modelli di machine learning e deep learning.\ Questa installazione è stata veramente faticosa poichè richiedeva specifiche dipendenze di sistema e un'attenta installazione, ha richiesto quasi un giorno, ma con il sostegno in azienda l'installazione è avvenuta con successo.
\ \ 
*Account Aziendali* \ Infine mi sono stati forniti gli account aziendali per l'accesso ad alcune risorse: 
- ChatGPT pro;
- NAS locale;
- Plesk;
- Plane;

=== Norme Aziendali
Questa sezione parla delle convenzioni aziendali per i progetti di gruppo.
\ \ 
*Issue* \
Le norme riguardati le issue sono:
- *Titolo Parlante*: Fondamentale è creare le issue con titoli parlanti, così da garantire una rapida comprensione per tutto il gruppo;
- *Assegnare Stato*: Assegnare ed aggiornare lo stato di una issue permette di evitare che più persone inizino a lavorare sulla stesso issue, oltre che dare un'indicazione sull'evoluzione del progetto;
- *Assegnare Programmatore*: Fondamentale assegnare la issue a un programmatore, così da garantire che venga chiusa;
- *Assegnare Date*: Quando si inizia a lavorare su una issue è fondamentale inserire la data di inizio, analogamente quando si termina il lavoro, così da poter completare correttamente i consultivi;
- *Assegnare Dipendenze*: Assegnare una gerarchia all'interno delle issue, questo permette di svolgere il lavoro con la giusta progressione. \ Stabilire quale issue ne blocca un'altra permettere di non perdere traccia del lavoro da svolgere e semplifica la pianificazione;
- *Assegnare Label*: Assegnare un'etichetta alla issue permette di filtrare facilmente le issue.
\  
*Versionamento* \ 
Le norme riguardati il versionamento sono:
- *Branch*: Sviluppare il più possibile in branch atomici, aprire tanti branch feature quante funzionalità ha il prodotto;
- *Nome Branch*: Utilizzare la sintassi _feature/funzione-x_ per nominare i branch;
- *Merge*: Prima di effettuare il merge su develop o main, assicurarsi di integrare prima il branch principale nel branch secondario, così da prevenire eventuali errori in produzione;
- *Comunicare*: Fondamentale comunciare push o merge quando si sta lavorando alla stessa funzionalità.
\
*Commit* \
Le norme riguardanti i commit sono:
- *Commit Atomici*: Fondamentale inserire modifiche atomiche in ogni commit, questo permette di individuare facilmente la modifica in caso di errore. Un commit atomico solitamente include un solo file, ma potrebbe includere più file nel caso in cui il commit riguardi una  funzionalità gestita in più file.
- *Titolo*: Il titolo del commit deve riferire che operazione si sta facendo, quindi se si tratta di creazione, modifica, eliminazione, update o refactory;
- *Descrizione (opzionale)*: Fortemente consigliata per motivare le modifiche effettuale;
- *Lingua (opzionale)*: Preferibilmente i commit vanno fatti in lingua inglese, ma è opzionale.
\ 
*Php* \ 
Le norme riguardanti PHP sono:
- *Laravel*: Programmando con il framework Laravel la documentazione stabilisce le convenzioni da seguire, tutti i programmatori devono seguire la documentazione ufficiale;
- *Filament*: Analogo alla documentazione Laravel;
- *Creazione File*: Creazione di file tramite comando specifico PHP artisan;
- *Nominazione*: 
  - Le *Classi* segnuono il PascalCase, esempio _class UserController{}_;
  - I *Metodi* seguono il camelCase, esempio _public function getUserName(){}_;
  - Le *Variabili* seguono il camelCase, esempio _\$userName = \"John Doe\"_;
- *Lingua*: Usare la lingua inglese;
- *Commenti*: Utilizzare più commenti possibili
  - *Commenti in linea* per specificare assegnazioni o valori;
  - *Commonti multi linea* per invarianti o comportamento di classi e metodi;
- *Incapsulamento*: Utilizzare il principio di incapsulamento per controllare l'accesso ai dati e ai comportamenti di una classe;
- *Principio di Responsabilità Unica*: Applicare questo principio il più possibile su classi e metodi.
\
*Python* \
Le norme riguardanti python sono:
- *Nome File*: Utilizzare snake_case, esempio _my_script.py_;
- *Nominazione*:
  - Le *Classi* seguono il PascalCase, esempio _class MyClass_;
  - I *Metodi* seguono lo snake_case, esempio _def my_method(self)_;
  - Le *Variabili* seguono lo snake_case, esempio _my_variable = 10_;
  - Le *Costanti* seguono l'UPPER_CASE_WITH_UNDERSCORES, esempio _MAX_RETRIES = 5_;
  - I *Moduli* seguono lo snake_case, esempio _import my_module_;
  - Le *Eccezioni* seguono il PascalCase con il suffisso Error, esempio _class ValidationError(Exception)_;
- *Principio di Responsabilità Unica*: Applicare questo principio il più possibile su classi e metodi.

#pagebreak()

== Tecnologie Usate
Questa sezione parla delle tecnologie usate durante il progetto.

=== Python
Per lo sviluppo del RAG ho scelto Python. \ 
Questo linguaggio non è il più veloce, ad esempio C++, linguaggio studiato affondo durante il percorso universitario, garantisce una maggior velocità, inoltre non è il più facile da integrare in _RelAI_, visto che questo prodotto aziendale è basato su framework PHP, PHP sarebbe stato più facile da integrare. \
Python, però, offre potenti librerie per l’elaborazione del linguaggio naturale e l’AI, libreria che mancano per gli altri due linguaggi. \
Inoltre per Python è presente una grande comunità che condivide tutorial, esempi, e best practice per costruire RAG e altri sistemi AI. \
Altro vantaggio è la facilità con cui si riesceno ad integrare database. \
Infine, essendo Python un linguaggio ad alto livello, permette di sviluppare rapidamente prototipi e iterare sul design del sistema.

=== MySQL
Nel progetto, i dati sono stati principalmente archiviati e gestiti utilizzando database relazionali MySQL, che garantiscono efficienza e scalabilità. \ 
Per il RAG era necessaria l'integrazione con _RelAI_, questo prodotto aziendale utilizza un database MySQL, quindi per semplicità ho utilizzato lo stesso database. \ 
In particolare avevo la necessità di salvare e leggere documenti e il loro contenuto. \ 
Come strumenti ho utilizzato _MySQL Workbench_ per la modellazione dello schema e _PHPMyAdmin_ per la gestione operativa, gli stessi utilizzati in azienda.

=== Chroma DB
Chroma DB è stato utilizzato come database vettoriale per la memorizzazione e il recupero di rappresentazioni semantiche dei dati. \ Analizzerò meglio nelle sezioni successive questo strumento. \
La scelta di Chroma su un database relazionale SQL è dovuta al supporto nativo della gestione di embedding, fondamentali per recuperare informazioni basate su similarità semantica.

#pagebreak()

=== Laravel e Filament
Anche in questo caso la scelte delle tecnologie è stata legata al prodotto _RelAI_, il CRM offerto dall'azienda. \
Laravel è un framework PHP moderno, progettato per creare applicazioni web scalabili e manutenibili. \ Questo lo rende perfetto per un CRM, che spesso richiede funzionalità complesse e personalizzabili. \
Filament è una libreria per Laravel che permette di creare rapidamente dashboard e pannelli di amministrazione. \ Questo è particolarmente utile in un CRM, dove è necessario gestire entità come clienti, vendite, o spese. \
Filament utilizza un design moderno e accessibile, basato su _Tailwind CSS_, strumento utilizzato in azienda.

=== Docker e DDEV
Docker è una piattaforma che permette di sviluppare, ed eseguire applicazioni in contenitori. \
Essendoci diversi ambienti di sviluppo in azienda, Docker è stata una scelta forzata per evitare codice funzionante solo su certe macchine. \
DDEV è una piattaforma di sviluppo che semplifica l’utilizzo di Docker per gestire ambienti di sviluppo complessi. \
Integra Docker con una serie di configurazioni predefinite per applicazioni web, come PHP, MySQL e altro, riducendo la necessità di configurazioni manuali. \
DDEV è stato scelto per la sua capacità di automatizzare la creazione e gestione degli ambienti di sviluppo grazie alle sue configurazioni pronte all’uso.

#pagebreak()


== Sviluppo del progetto
Questa sezione parla dello sviluppo del progetto. \ In particolare il progetto ha avuto 3 fasi:
+ Sviluppo del RAG;
+ Sviluppo del modello AI per classificazione siti web;
+ Invio automatico di email.
Poichè questo documento tratta dello sviluppo del RAG le sottosezioni successive analizzarennao i vari passaggi solo della prima fase dello stage, lo sviluppo del RAG appunto.

=== RAG - Ingesting
La prima fase di un RAG è l'ingesting, letteralmente ingestione, in questa fase il sistema riceve in input dei documenti e ne ritorna una variabile con il contenuto dei documenti. \ 
In particolare nel mio caso i documenti ricevuti in input erano file pdf e l'output erano due liste di stringhe, la prima contente i titoli dei documenti, la seconda contenente i testi dei documenti. \
Ho utilizzato due librerie:
```python
import os
from PyPDF2 import PdfReader
```
+ La prima per la lettura da disco del documento: `os` cerca un documento nella cartella con i documenti e, se lo trovava, costruisce il percorso completo verso quel documento.
  ```python
  path = "/path/to/documents/folder"
  
  if filename in os.listdir(path):
    full_path = os.path.join(path, filename)
      if full_path.endswith('.pdf'):
        texts.append(_extract_text_from_pdf(full_path))
  ``` \
+ La seconda libreria per la lettura del contenuto del documento, in particolare la lettura del titolo e del testo pagina per pagina.
  ```python
  file = "/path/to/documents/folder/example.pdf"
  
  reader = PdfReader(file)
  
  metadata = reader.metadata
  if metadata and '/Title' in metadata:
    title =  metadata['/Title']
  
  text = ""
  for page in reader.pages:
    text += page.extract_text()
  ```\
*Considerazioni:*\
- Ogni tipologia di documenti richiede librerie specifiche, però considerando che per la maggior parte dei documenti è possibile la conversione in pdf, io ho esplorato l'ingesting di file pdf;
- Conoscere il contenuto di un documento potrebbe facilitare l'ingestione, se ad esempio si ha un documento tecnico molto lungo, ma ben stutturato, si potrebbe preferire un'ingestione dei capitoli o delle sezioni piuttosto di tutto il testo per intero, allo stesso modo se si hanno documenti molto eterogenei si possono ingerire anche i metadati dei documenti per maggiori informazioni;
- Bisogna sottolineare che questa fase è la più dispendiosa in termini di tempo, poichè molto meccanica, analizzare l'intero documento e salvarlo richiede più tempo tanto è lungo il documento. \ Come analizzerò in seguito, un'ottima strategia è salvare il contenuto in un database.

=== RAG - Embedding
La seconda fase di un RAG è l'embedding, la vettorializzazione del documento, in questa fase il contenuto del documento viene vettorializzato all'interno di uno spazio multi dimensionale, in questo modo si riesce a dare un significato matematico al documento. \
Questa è la fase più importante, poichè più precisa e complessa sarà la vettorializzazione maggiore sarà la precisione con cui il sistema RAG riuscirà ad estrarre le informazioni. \ 
Ho utilizzato:
```python
from transformers import AutoTokenizer, AutoModel
```
Dalla libreria `transformers` ho importato:
+ `AutoTokenizer` per assegnare un token, un valore numerico, al testo dei documenti, usando il modello pre addestrato _all-MiniLM-L6-v2_;
+ `AutoModel` che carica il modello pre addestarto _all-MiniLM-L6-v2_.
```python
pre_trained_model = "sentence-transformers/all-MiniLM-L6-v2"
tokenizer = AutoTokenizer.from_pretrained(pre_trained_model)
model = AutoModel.from_pretrained(pre_trained_model)

#texts = list of contents of documents
inputs = tokenizer(texts, padding=True, truncation=True, return_tensors="pt")

embeddings = model(**inputs).last_hidden_state.mean(dim=1).numpy()
```
La variabile `embedding` è una lista, della stessa dimensione della variabile _texts_, contenente, non più stringhe, ma _numpy.ndarray_. \ \ 

#pagebreak()

*Considerazioni* \
- Esistono altri modelli, e verranno sicuramente implementati nuovi modelli in futuro, ma lo scopo del progetto non era sviluppare il RAG più preciso possibile, ma dimostrare che il sistema RAG poteva essere integrato nei progetti aziendali. \ _OpenAI_, ad esempio, fornisce librerie per embedding, ma voleva esplorare soluzioni meno convenzionali;
- Come per l'ingesting, anche questa fase richiede diverso tempo, quindi sarebbe opportuno salvare il risultato delle operazioni in un database, tratterò di questo argomeno più avanti.

*Ottimizzazione* \
- Si può disabilitare il calcolo dei gradienti durante le operazioni, riducendo l'uso di memoria e aumentando la velocità
  ```python
  import torch
  with torch.no_grad()
  ``` 
- Si possono normalizzare i vettori embeddings in modo che abbiano una norma L2 unitaria, rendendoli di lunghezza unitaria nel loro spazio vettoriale
  ```python
  import faiss
  faiss.normalize_L2(embeddings)
  ```
\
=== RAG - Indexing
La terza fase di un RAG è l'indexing, l'indicizzazione degli embedding. \ Questa fase è fondamentale per organizzare e rendere accessibile i dati. \ In particolare io ho usato _FAISS (Facebook AI Similarity Search)_. \ L'indice è progettato per permettere ricerche rapide basate sulla somiglianza semantica, spesso calcolata con metriche come il coseno della distanza o la distanza euclidea, come nel mio caso.
```python
import faiss

# embedded_texts = list of embeddings of documents 
embed_dim = embedded_texts.shape[1]

index = faiss.IndexFlatL2(embed_dim)

index.add(embedded_texts)
```

#pagebreak()

=== RAG - Retrieving
La quarta fase di un RAG è il retrieving, ovvero il recupero dei documenti a partire da una domanda. \ Questa fase ha bisogno di una query, ovvero la domanda, questa query va a suo volta vettorializzata e passata all'indice calcolato in precedenza. \ Io ho utilizzato la libreria _FAISS_ che permette facilmente di inserire documenti vettorializzati nell'indice e, altrettanto facilmente, permette di ricercara un numero n documenti rilevanti la query. \ 
```python
# embedded_query = embedded query
# documents_names = list of names of documents
# index = index generated with faiss
# n = number of document to retrieve
        
# Search the FAISS index for the documents closest to the query embedding
distances, indices = index.search(embedded_query, n)

# Retrieve the most relevant documents and their distances
results = [
  (documents_names[i], distances[0][idx]) 
  for idx, i in enumerate(indices[0])
]
```

*Considerazioni* \ 
- Analogamente alla vettorializzazione dei documenti, più precisa sarà la vettorializzazione della query, migliore sarà il recupero dei documenti;
- Sottolineo che la lista dei documenti ha la stessa dimensione della lista con gli embedding, la lista degli embedding viene inserita nell'indice, quindi per corrispondenza l'indice verso gli embedding corrisponde all'indice verso i documenti, grazie a questa corrispondenza posso utilizzare i nomi dei documenti come metrica per valutare i documenti recuperati e la relativa distanza alla query;
- Il numero di documenti recuperati è importante: un numero basso di documenti recuperati potrebbe portare ad una risposta incompleta o povera di dettagli, mentre un numero alto di documenti potrebbe portare ad una risposta incorretta, poco precisa, poichè, trovando molte corrispondenza, il sistema RAG potrebbe generare risposte non autentiche.
- A seconda dei documenti si potrebbero trovare diverse strategie per migliorare il recupero: ad esempio se il numero di documenti è ampio, si potrebbe preferire una ricerca sui titoli e sui sommari dei documenti, prima che su tutto il testo, questo permette un recupero più preciso. \
  Oppure si potrebbe assegnare un peso alla corrispondenza di specifiche parole, così da ponderare adeguatamente la distanza fra la query e il documenti. 

#pagebreak()
  
=== RAG - Generating
La quinta e ultima fase di un RAG è generating, ovvero la generazione della risposta. \
In questa fase il sistema utilizza un modello AI per la generazione, la scelta del modello è fondamentale. \ Nel mio caso, viste le richieste del progetto, si è scelto un modello Ollama, _llama3:70b_ per la precisione, ostato in un computer aziendale. \
Il computer locale faceva da client per la convesazione fra il RAG ed il modello.

```python
from ollama import Client

# query = string with the question
# retrieved_documents_contents = list with the content of the retrieved documents

client = Client(host='http://192.168.x.x:x')

prompt = 
f"Question: {query}\nDocuments: {retrieved_documents_contents}"

response = client.chat(model='llama3:70b', messages=[
  {
    'role': 'user',
    'content': prompt,
  }
])

answer = response['message']['content']
```

*Considerazioni* \ 
La variabile _prompt_ è cruciale in questa fase. \ Modificando il suo valore si può ottenere un grande miglioramento nella risposta. \ Ad esempio se si vuole una risposta in italiano bisogna assicurarsi di scrivere il prompt in italiano e, volendo, anche specificare che si vuole, appunto, la risposta in italiano. \
Altre richieste più specifiche al modello fanno fatte tramite il prompt.

#pagebreak()

=== RAG - Database
Come anticipato nelle sezioni precedenti, alcune fasi del sistema RAG sono molto dispendiose in termini di tempo, le operazioni che devono eseguire sono complesse e lunghe. \ Una soluzione che ho adottato è stata eseguire le operazioni una sola volta e salvare il risultato in un database. \
La prima fase che richiede tempo è l'ingesting, poichè deve analizzare l'intero documento e salvarne tutto il testo sotto forma di stringa dentro una variabile. \ Per risolvere questo problema, per velocizzare l'utilizzo del sistema ho deciso di salvare i documenti in un database SQL. \
La seconda fase che richiede tempo è l'embedding, poichè, anche in questo caso, deve analizzare l'intera stringa di testo e calcolarne la vettorializzazione, per poi salvarla sotto forma di matrice dentro una variabile. \ Risolvere questo problema non è stato facile, ho inizialmente provato con il salvataggio in un database SQL, per poi passare all'utilizzo di ChromaDB. \
Analizziamo ora le due soluzioni.
\ \
*MySQL* \
Il RAG doveva integrarsi con il progetto aziendale _RelAI_, questo progetto utilizza un database SQL, quindi io dovevo utilizzare lo stesso database per le funzionalità del RAG. \ Il progetto aziendale era basato su _Laravel_ e _Filament_ quindi dovevo imparare come utilizzare questo due tecnologie per interagire con un database. \ I passi sono i seguenti:
+ *Migrazione*: Il primo passo è la creazione di una migrazione, che in Laravel rappresenta lo schema di una tabella nel database;
  ```cpp
  Schema::create('documents', function (Blueprint $table) {
    $table->id();
    $table->string('name');
    $table->string('path');
    $table->text('description')->nullable(); // opzional
    $table->timestamps();
  });
  ``` 
+ *Modello*: Il secondo passo è la creazione del modello, ovvero l'oggetto che contiene il documento;
  ```cpp
  class Document extends Model
  {
    protected $fillable = [
      'name', 
      'path',
      'description'
    ];
  }
  ``` 
#pagebreak()
3. *Risorse Filament*: Le risorse Filament facilitano le operazioni CRUD da parte dell'utente. \ Le varie risorse si creano tramite il comando:
  ```
  php artisan make:filament-resource ResourceName
  ```
  + *Pagina creazione*: La pagina di creazione non è altro che una pagina con un form in cui si inseriscono gli attributi del modello precedentemente creato. \ Ecco il codice:
    ```cpp
    $form->schema([
      FileUpload::make('path')
        ->label('Document')
        ->directory('documents')
        ->required(),

      TextInput::make('name')
        ->label('File Name')
        ->required(),

      Textarea::make('description')
        ->label('Description'),
    ]);
    ```
  + *Pagina visualizza*: La pagina di visualizzazione non è altro che una pagina con una tabella in cui si visualizzano gli attributi del modello precedentemente creato. \ Ecco il codice:
    ```cpp
    $table->columns([
      TextColumn::make('name')
        ->label('File Name'),
      TextColumn::make('description')
        ->label('Description'),
      TextColumn::make('created_at')
        ->label('Uploaded At')
        ->dateTime(),
    ]);
    ```
  + *Pagina modifica*: La pagina modifica utilizza lo stesso form della pagina di creazione, andando però a modificare gli attributi del modello precedentemente creato.

Una volta eseguiti tutti questi passaggi si avrà un'interfaccia utente in cui è possibile inserire nuovi documenti, visualizzarli e modificarli. \ I documenti verranno salvati nella cartella del progetto, che nel mio caso era contenerizzato, quindi venivano salvati dentro la cartella storage del container Docker. \ 
Come vedremo successivamente la cartella storage del progetto veniva clonata all'interno del container del RAG, avevo quindi accesso ai documenti tramite il RAG.
\ \
*ChromaDB* \
Il RAG deve salvare anche gli embedding, ma il salvataggio di questi ultimi risulta molto complicato in un database SQL, poichè si tratta di matrici multidimensionali e SQL non riesce a gestirle, richiede infatti di convertire le matrici in dati binari, salvare i dati binari e poi riconvertirli in matrici per utilizzarli. \ Ho impiegato un'intera settimana per implementare il salvataggio degli embedding su database SQL e la lettura da SQL, ma non ho avuto nessun risultato, gli errori e i problemi nella conversione erano troppi. \ Sono quindi passato a tecnolgie già ottimizzate: _ChromaDB_. \ 
Questo sistema permette il salvataggio del contenuto dei documenti e degli embedding in maniera molto semplice, i passaggi sono i seguenti:
+ *Creazione della collezione*: Per creare una collezione bisogna prima creare un client, nel mio caso il client era il container docker del RAG, vedremo successivamente questo container
  ```python
  client = await chromadb.AsyncHttpClient(
    host='chromadb_service', 
    port=8000
  )       
  collection = await client.create_collection(
    "collection_name"
  )
  ```
+ *Salvataggio in Chroma*: Il salvataggio in Chroma avviene tramite il metodo _collection.add_, permette di salvare con un'unica operazione il contenuto e gli embedding dei documenti. \ Ecco il codice:
  ```python
  # names = list of names of documents - type string[]
  # contents = list of contents of documents - type string[]
  # embeddings = list of embeddings of contents - type np.array[]
  for name, content, embedding in zip(names, contents, embeddings):
    await collection.add(
      ids=[name],
      contents=[content],
      embeddings=[embedding],
    )
  ```
+ *Lettura da Chroma*: La lettura da Chroma avviene tramite il metodo _collection.get_, permette di ottenere con un'unica operazione il contentuo e gli embedding dei documenti.  Ecco il codice:
  ```python
  results = await collection.get(
    ids=names,
    include=["contents", "embeddings"]
  )
  contents = results['contents']
  embeddings = results['embeddings']
  ```
  In questo modo, quando mi serve il testo di un documento, non devo eseguere delle operazioni per estrarlo dal documento, ma mi basta leggerlo dal database Chroma, operazione molto più veloce ed efficace.
=== RAG - Contenirizzazione
Come detto in precedenza, il progetto Aziendale era contenerizzato con DDEV, ho quindi provveduto contenerizzare il RAG all'interno del progetto _RelAI_. \ In particolare ho creato il container per il codice python del RAG e il container per il database Chroma.
\ \ 
*Docker-Compose RAG* \
Ecco il codice del file _docker-compose.rag.yaml_:
```python
services:
  rag:
    build:
      context: ../rag
    container_name: rag_service
    command: >
      sh -c "python main.py && tail -f /dev/null"      
    volumes:
      - ../rag:/app
      - ../storage/app/documents:/storage/app/public/documents  
    ports:
      - "5000:5000"  
    networks:
      - ddev_default

networks:
  ddev_default:
    external: true
```
*Annotazioni*: 
- Il container che si crea associa il proprio storage con lo storage del container del progetto
  ```python
  volumes:
    - ../storage/app/documents:/storage/app/public/documents 
  ```
  In questo modo ogni modifica veniva simultaneamente esegueta in entrambe i container;
- Il container utilizzava le porte 5000 
  ```python
  ports:
    - "5000:5000" 
  ```
  non essenci conflitti ho utilizzato quelle predefinite per container python;
- Infine il container dichiara di utilizzare DDEV per la gestione della rete
  ```python
  networks:
    ddev_default:
      external: true
  ```

#pagebreak()
  
*Dockerfile RAG* \
Il Dockerfile permette al container di eseguire il codice python
```python
FROM python:3.9-slim

WORKDIR /app

COPY rag_requirements.txt .
RUN pip install -r rag_requirements.txt

COPY . .

CMD ["python", "main.py"]
```
\ 
*Docker-Compose ChromaDB* \
Ecco il codice del file _docker-compose.chroma.yaml_:
```python
services:
  chromadb:
    container_name: chromadb_service
    image: chromadb/chroma:latest
    volumes:
      - chroma_data:/data
    ports:
      - "8000:8000"
    networks:
      - ddev_default
    
volumes:
  chroma_data:
    driver: local

networks:
  ddev_default:
    external: true
```
*Annotazioni*: 
- Il container utilizzava le porte 8000 
  ```python
  ports:
    - "8000:8000" 
  ```
  non essenci conflitti ho utilizzato quelle predefinite per container chromadb;
- Infine il container dichiara di utilizzare DDEV per la gestione della rete
  ```python
  networks:
    ddev_default:
      external: true
  ```

#pagebreak()
  
=== RAG - Integrazione
La fase finale dello sviluppo del RAG era l'integrazione fra il sistema già esistente e il RAG. \ I due sistemi sono su due container indipendenti, dovevo quindi implementare chiamate API per la comunicazione fra _RelAI_ ed il RAG. 
\ \
*API lato PHP*
- *Caricamento su Chroma*
  ```python
  $rag_service_url = 'http://rag_service:5000/load_to_chroma';
  
  $response = Http::get($rag_service_url, [
    'names' => $names
  ]);

  $response = response()->json(['message' => 'Data successfully sent to RAG service']);

  ```
  \
- *Risposta dal RAG*
  ```python
  $documentsGeneratedNames = Document::where('organization_id', 1)
    ->pluck('generated_name')
    ->toArray();
      
  $query = "Domanda per il rag :)";
  
  $response = Http::retry(5, 100)->timeout(60)
    ->post('http://rag_service:5000/generate_rag_response', 
      [
        'names' => $documentsGeneratedNames,
        'query' => $query,
      ]
    );
  
  $response = response()->json($response->json());
  ```
\ 

#pagebreak()

*API lato python* \
```python
from quart import Quart, request, jsonify
```
- *Caricamento su chroma*
  ```python
   @self.app.route('/load_to_chroma', methods=['GET'])
   names = request.args.get('names')

  ingester = Ingesting(names)
  contents = ingester.ingesting()

  embedder = Embedding(contents)
  embeddings = embedder.embedding()

  chroma_instance = MyChroma()
  await chroma_instance.chromaing()
  await chroma_instance.save_to_chroma_async([names], contents, embeddings)

  return jsonify({"message": f"Loaded {names} into Chroma"})
  ``` 
  \
- *Risposta dal RAG*
  ```python
  @self.app.route('/generate_rag_response', methods=['POST'])
  data = await request.get_json()  
  names = data.get('names', [])
  query = data.get('query', '')

  chroma_instance = MyChroma()
  await chroma_instance.chromaing()
  contents, embeddings = 
  await chroma_instance.load_from_chroma(names)

  indexer = Indexing(embeddings)
  index = indexer.indexing()

  retriever = Retrieving(query, names, contents, index)
  DOCUMENTS_TO_RETRIEVE = 5
  k = min(DOCUMENTS_TO_RETRIEVE, len(names))

  retrieved = retriever.retrieving(k)

  generator = Generating(query, names, contents, retrieved)
  response = generator.generating_response_with_ollama()

  return jsonify({'output': response})
  ```
Con questo si conclude l'integrazione del RAG nel progetto aziendale. \
Il RAG è ora integrato nel progetto _RelAI_
  

