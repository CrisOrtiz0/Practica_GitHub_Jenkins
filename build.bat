@echo off
setlocal

set W3CSS_URL=https://www.w3schools.com/w3css/4/w3.css
set CSS_DIR=css
set W3CSS_FILE=%CSS_DIR%\w3.css

if not exist %CSS_DIR% mkdir %CSS_DIR%

if not exist "%W3CSS_FILE%" (
    echo Descargando w3.css...
    powershell -Command "Invoke-WebRequest -Uri '%W3CSS_URL%' -OutFile '%W3CSS_FILE%'"
    
    if errorlevel 1 (
        echo Error: No se pudo descargar w3.css
        exit /b 1
    )
) else (
    echo w3.css ya esta descargado
)

echo Proceso completado exitosamente