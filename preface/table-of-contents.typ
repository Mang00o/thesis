#import "../config/constants.typ": figuresList, tablesList
#set page(numbering: none)

#[
  // Configurazione per visualizzare l'indice
  #outline(
    title: "Indice",    // Titolo dell'indice
    indent: auto,       // Rientro automatico per le voci
    depth: 3            // Profondità dell'indice (ad esempio fino a livello 3)
  )

  // Mostrare le voci dell'indice a livello 1 (per esempio, capitoli principali)
  #show outline.entry.where(level: 1): it => {
    linebreak()
    link(it.element.location(), strong(it.title))  // Usa il campo 'title' per ogni voce dell'indice
    h(1fr)
  }

  // Mostrare voci a livello 2 (per esempio, sottocapitoli)
  #show outline.entry.where(level: 2): it => {
    linebreak()
    link(it.element.location(), strong(it.title))
    h(1fr)
  }

  // Mostrare voci a livello 3 (per esempio, paragrafi)
  #show outline.entry.where(level: 3): it => {
    linebreak()
    link(it.element.location(), strong(it.title))
    h(1fr)
  }
]