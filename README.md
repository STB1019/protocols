# protocols
IEEE SB1019 Executive Protocols

# Come creare un protocollo

1. `git checkout model`
2. `git checkout -b proposal/<protocol_number>`
3. `mv -v protocol_template protocol_<protocol_number>`
4. Scrivilo!
    - Ogni protocollo deve essere salvato in una directory nominata `protocollo_<numero>`
    - Ogni branch `proposal/<protocol_number>` deve contenere un solo protocollo in una sola directory dedicata
    - Ogni protocollo deve avere la seguente struttura:
        - `protocol_<number>`/
            - `abstract.md`: File markdown contenente una breve descrizione del documento e dei suoi obiettivi. Evitare sezioni e titoli. Non è possibile omettere questo file
            - `protocol.tex`: File contenente la descrizione dell'executive e dei dati del protocollo. Sostituire i valori tra parentesi graffe.
            - `content/`: Questa directory contiene vari documenti `*.md` che verranno riportati nel corpo del documento concatenandoli in ordine alfabetico. Una volta terminati, il documento sarà concluso con lo spazio delle firme automaticamente.
            - `edits/`: Questa directory contiene una lista di modifiche apportate al documento. Ogni documento dovrà riportare come titolo la dicitura `Modifica del <data>` e come sottotitolo il titolo della modifica. Inoltre dovrà essere terminato con la dicitura `\makeending`.

5. `git add ./protocol_<protocol_number>`
6. `git commit -a -m "<commit message>"`
7. `git push origin proposal/<numero>`
8. Una volta caricato il contenuto, andare su github e creare una pull request dal branch appena creato verso master.
    - Una volta che tutti i restanti membri dell'executive hanno approvato il documento sarà possibile mergiare e rilasciare il protocollo
    - È possibile visionare una bozza del compilato da gli artefatti della build.

## Note

È possibile usare codice latex nei documenti markdown.

## Modifiche al modello

In caso di modifiche al modello, un nuovo branch chiamato `model_change/<YYYYMMGG>` deve essere creato e una PR deve essere proposta.