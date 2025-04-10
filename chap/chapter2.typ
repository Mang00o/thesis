#pagebreak(to:"odd")

= La Proposta aziendale


== Progetto di stage
Questa sezione parla del progetto proposto dall'azienda, le problematiche riscontrare e il cambio avvenuto in conclusione.

=== Proposta StageIt
Ho conosciuto l'azienda tramite l'evento StageIt organizzato dall'università, in questa occasione l'azienda aveva portato tre progetti, uno dei quali, quello che più mi aveva colpito si chiamava _Smart Agriculture_, consisteva nell'utilizzare le immagini di campi agricoli catturate da un drone, farle elaborare da un'AI e tramite AI analizzarle per valutare lo stato di salute delle piante. \
*Come mai nasce il progetto?* \ I fondatori dell'azienda erano a conoscenza delle tecniche di valutazione dello stato di salute di piantagioni di palme da cocco in paesi africani. \ In queste vastissime piantagioni il lavoro di analisi viene svolto a mano valutando su una cartina lo stato della pianta, per poi intervenire in ampie zone, tramite l'uso di veicoli aerei, con prodotti chimici disinfestanti. \ Ovviamente questo processo richiede molto tempo e molto denaro, da qui la proposta di automatizzare il tutto con droni e AI.

=== Cambio di Progetto
Sfortunatamente il progetto non si è avviato come previsto, pertanto l'azienda mi richiedeva uno studio teorico e la preparazione di un POC per gli investitori. \ Il progetto è stato sottovalutato dall'azienda e non mi conveniva iniziarlo perchè sarei stato da solo e poco seguito. \ In accordo con l'azienda abbiamo quindi valutato altre proposte che rimanessero sempre in ambito AI.

#pagebreak()

=== Proposta Finale
La proposta finale dell'azienda consisteva nello sviluppare un sistema di generazione automatica della risposta tramite ricerca aumentata da documenti, _Retrieval-Augmented Generation_ (RAG), da integrare con _RelAI_, il loro prodotto principale. \ Il sistema RAG permette la generazione di risposta partendo da documenti selezionati e una volta sviluppato, il RAG deve ricevere lo storico delle campagne marketing fatte dall'azienda e fornire in risposta una profilazione degli utenti e delle strategie per le campagne future. \ Questa proposta si inseriva in un progetto già avviato, che mi permetteva di essere molto più seguito e sostenuto, inoltre il reparto era ben formato, quindi gli obiettivi erano molto più chiari, cosi come le buone pratiche di sviluppo. \ Un contesto molto più realistico per una figura giovane come la mia.

=== Variazione al Piano di Progetto
Un'altro cambio è avvenuto durante il periodo di stage. \ L'azienda aveva fatto partire il nuovo reparto AI e aveva bisogno di un'aiuto sul progetto WebScraper, quindi, in accordo con il tutor interno ed il tutor universitario ho modificato le ultime settimane del piano di progetto. \ Terminate la fase di implementazione del RAG in _RelAI_, non ancora completamente ultimata l'interfaccia utente, _User Interface_ (UI), mi sono spostato verso il nuovo progetto aziendale. \ Questo progetto prevedeva lo sviluppo di modelli AI per la classificazione grafica dei siti web.

#pagebreak()



== Obiettivi di Progetto
Questa sezione parla degli obiettivi del progetto, le aspettative del mio responsabile interno: l'analisi dei requisiti, l'interfaccia utente, la documentazione ed infine la metodologia.

=== Analisi dei Requisiti
I requisiti fondamentali del progetto erano:
- Creare un'interfaccia di input per il caricamento dei documenti;
- Creare un'interfaccia di input per la richiesta al RAG;
- Creare un'interfaccia di ouput per visualizzare la risposta del RAG;
In questo progetto di stage non esisteva un vero e proprio cliente, ma delle esigenze interne all'azienda che andavano esplorate. \
Dopo la variazione al piano di progetto i requisiti si sono aggiornati: 
- Clusterizzazione con apprendimento non supervisionato, _unsupervised learning,_ degli screenshot delle pagine web di un'ampio database di siti;
- Creazione del modello di classificazione tramite apprendimento supervisionato, _supervised learning_;
- Classificazione dei siti tramite il modello sopra citato;
- Valutazione della classificazione e successivo invio automatico di email.

=== Interfaccia Utenti
L'interfaccia utenti doveva integrarsi con RelAI, il CRM offerto dall'azienda, sviluppato in Laravel e Filament, framework php, e contenerizzato con DDEV, strumento che sfrutta Docker per fornire container preconfigurati. \ Successivo al cambio del piano di progetto è seguito anche il cambio dell'interfaccia utenti richiesta: sempre utilizzando Laravel e Filament andava implementeta un'interfaccia per la schedulazione e l'invio delle email.

=== Documentazione
Il progetto richiedeva la documentazione necessaria per garantire ai futuri sviluppatori un facile inserimento all'interno del progetto, inoltre, vista la natura didattica del tirocinio, era un ottimo modo per familiarizzare con pratiche aziendali. \ L'azienda utilizza Plane oltre che come ITS, anche come piattaforma per la documentazione interna. \ Questo strumento integrato nelle pratiche aziendali è perfetto per la documentazione interna. \ Su Plane è possibile creare documenti ed associarli ai progetti, non è dotato di versionamento, ma la documentazione richiesta era abbastanza semplice.

=== Metodologia
Un'altra richiesta dell'azienda era la produzione di un software altamente manutenibile e evolvibile. \ Vista la natura del progetto, il forte utilizzo di AI, richiede la possibilità di evolvere facilmente alcune funzionalità. 



== Obiettivi Personali
Questa sezione parla delle motivazioni che mi ha portato a scegliere l'azienda e il progetto. \ Premetto che non ero interessato a fare il tirocinio in una grande azienda per poter inserire il loro nome nel curriculum, non era neanche interessato a cercare un'azienda che mi garantisse un tirocinio rimunerato, come non lo era trovare un'azienda comoda o che offrisse smart-working. \ Il mio obiettivo principale era andare in un'azienda dove potessi imparare il più possibile.

=== Obiettivi Tecnici
Era per me molto importate trovare un progetto che mi permettesse di esplorare il mondo AI, volevo conoscere più a fondo questo mondo sia dal lato teorico che dal lato pratico. \ La proposta di SpazioDev era per me la più convincente.

=== Obiettivi Sociali
Un'altra caratteristica aziendale che mi piaceva esplorare era la grandezza e la complessità dell'azienda: ero molto curioso di provare una realtà piccola, ancora in fase di crescita, dove l'impegno individuale contava molto, rispetto a grandi aziende dove c'è il rischio di essere visti solo come un altro programmatore. \ Anche in questo caso, l'ambiete di SpazioDev era molto attraente.

