# WINMISKAM Pipeline

Extrahiert die Notebooks 01–03 in ein Python-Paket + Streamlit-UI.

## Install (Python 3.11 empfohlen)
py -3.11 -m pip install -r requirements.txt

## Start UI
py -3.11 -m streamlit run app/ui/streamlit_app.py
(oder `start_ui.bat` doppelklicken, nutzt ebenfalls Python 3.11)

## CLI
py -3.11 -m app.pipeline --year 2009 \
  --wind data/raw/wind/03379_Muenchen_stadt.txt \
  --cloud data/raw/cloudiness/produkt_n_stunde_19790101_20241231_03379.txt \
  --out-dir data/processed --project muenchen_stadt --lat 48.1372 --lon 11.5756 --tz UTC

## Deploy (Streamlit Cloud)
- Repo pushen
- Main file: app/ui/streamlit_app.py
- Requirements: requirements.txt (passt für Python 3.11)
- Daten per Upload/Pfad in der UI angeben (nicht ins Repo).
