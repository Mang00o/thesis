#import "../config/constants.typ": abstract
#import "../config/variables.typ" : myName, myCompany
#set page(numbering: none)


#v(10em)

#text(24pt, weight: "semibold", abstract)

#v(2em)
#set par(first-line-indent: 0pt)
Il presente documento descrive il lavoro svolto durante il periodo di stage, della durata di circa trecento ore, dal laureando #text(myName) presso l'azienda #text(myCompany).

Questo progetto di tirocinio si concentra sullo sviluppo di un sistema di generazione basato sul recupero delle informazioni, _Retrieval-Augmented Generation_ (RAG), completamente gestito in locale, realizzato in Python, integrato con Ollama, utilizzando l'ampio modello linguistio, _Large Language Model_ (LLM), llama3:70B, e supportato da database. \
L'obiettivo principale è fornire un'infrastruttura interna in grado di gestire processi aziendali senza dipendere da fornitori esterni di modelli linguistici. \
Il sistema, containerizzato tramite Docker e configurato con DDEV (strumento che offre ambieti di sviluppo preconfigurati), permette di eseguire analisi avanzate sui dati aziendali fornendo risposte precise basate su documentazione specifica e/o di precedenti progetti aziendali. \
Il risultato finale è un sistema utilizzabile per ricerche interne, analisi del codice e automazione di processi, favorendo il miglioramento continuo delle attività aziendali. \
Il lavoro si basa su una metodologia che sfrutta tecniche di containerizzazione per garantire un sistema flessibile e scalabile, in grado di adattarsi alle esigenze dei diversi progetti aziendali. \
Grazie all'integrazione di strumenti di apprendimento automatizzato, _Machine Learning_ (ML), e all'uso di modelli linguistici su server locali, il sistema è progettato per offrire un'architettura modulare e personalizzabile, facilitando la gestione efficiente delle risorse informative interne.

#v(1fr)