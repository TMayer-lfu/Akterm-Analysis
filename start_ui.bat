@echo off
setlocal
rem Launch Streamlit UI from repo root so app package is importable
cd /d "%~dp0"
set PYTHONPATH=%CD%
python -m streamlit run app/ui/streamlit_app.py
echo.
echo Zum Beenden dieses Fensters schliessen oder Strg+C druecken.
pause
