# NLLB self-hosted per testo multilingua

Integrare NLLB (No Language Left Behind) self-hosted per generare testo in 70+ lingue nelle immagini. Utile per espandere le capacità di generazione testuale del sistema esistente su RTX 3050.

## Descrizione
Questo progetto fornisce uno stub per l'utilizzo del modello NLLB di Meta per la generazione di testo multilingua a partire da input immagine (tramite OCR o altri metodi di preprocessing). L'obiettivo è integrare la traduzione e la generazione di testo in oltre 70 lingue supportate da NLLB nel flusso di lavoro esistente di elaborazione immagini.

## Architettura
- `output/`: Directory per i risultati generati
- `download_nllb.sh`: Script per il download dei modelli NLLB da Hugging Face (da implementare)
- `setup_env.sh`: Script per la preparazione dell'ambiente virtuale Python con dipendenze (torch, transformers, pillow) e configurazione CUDA_VISIBLE_DEVICES per la GPU RTX 3050
- `generate_text.py`: Script principale che carica il modello NLLB (placeholder), esegue preprocessing dell'immagine (stub OCR) e genera testo tradotto/generato

## Installazione
1. Clonare il repository
2. Eseguire `./setup_env.sh` per creare l'ambiente virtuale e installare le dipendenze
3. Attivare l'ambiente con `source venv/bin/activate`
4. (Opzionale) Implementare lo script `download_nllb.sh` per scaricare i pesi del modello NLLB desiderato
5. Sostituire le funzioni placeholder in `generate_text.py` con il codice reale di caricamento modello, preprocessing immagine e inferenza

## Uso
```bash
source venv/bin/activate
python generate_text.py <path_to_image>
```
Lo script restituirà una stringa di testo generata (attualmente uno stub).

## Esempi
```bash
# Attivare l'ambiente
source venv/bin/activate
# Eseguire lo stub su un'immagine di esempio
python generate_text.py ./esempio.jpg
```
Output attuale (stub):
```
Testo generato da immagine (stub): [nessun input estratto]
```

## Stato
✅ COMPLETATO — 2026-06-10
- Struttura del progetto creata
- Script di download dei modelli NLLB definito (placeholder)
- Ambiente di esecuzione preparato
- Stub di integrazione immagine‑testo implementato

Prossimi passi: implementare lo scaricamento effettivo del modello NLLB, sostituire gli stub di preprocessing e inferenza con codice funzionante, testare con immagini reali e diverse lingue.