<h1 align="center">
  Testes de Aceitação com Robot Framework
</h1>
<p align="center">
  <a href="#tecnologias-e-práticas-utilizadas">Tecnologias e práticas utilizadas</a> •
  <a href="#chromedriver">ChromeDriver</a> •
  <a href="#comandos">Comandos</a>
</p>

Scripts para realização de testes de aceitação.

## Tecnologias e práticas utilizadas
- Python 3.8
- Robot Framework 6.0.2
- ChromeDriver

## ChromeDriver

É necessário fazer o download do ChromeDriver (https://chromedriver.chromium.org/downloads) de acordo com a versão do *Chrome* instalada no seu computador, descompactar o arquivo e copiar o executável para dentro da pasta *Scripts* da instalação do seu python.

## Comandos

### pip
```
pip list --outdate
pip install --upgrade pip setuptools Django ...
```

### virtualenv (windows)
```
python -m venv env
env\Scripts\activate.bat
env\Scripts\deactivate.bat
```

### Instalar bibliotecas, gravar/instalar requerimentos
```
(env) pip install robotframework
(env) pip install robotframework-seleniumlibrary

(env) pip freeze > requirements.txt
(env) pip install -r requirements.txt
```

### Executar projeto
```
(env) robot .
(env) robot_run_all.cmd
```
