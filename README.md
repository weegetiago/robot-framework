# Instalar o python:
- https://python.org.br/

# Instalar libraries:
- API: pip install robotframework-requests 
- Web: pip install --upgrade robotframework-seleniumlibrary
  - DOC: https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#library-documentation-top 
- DOC do usuário robot: https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#user-keyword-tags   

# Driver para automação web:
- Firefox: https://github.com/mozilla/geckodriver/releases 
- Chrome: https://chromedriver.chromium.org/downloads 
  - obs: Recomendado instalar dentro da pasta scripts na instalação do python. 

# Úteis
- Robot Framework Language Server da Robocorp no VSCode  
- Instalar a extensão: Robot Framework Language Server da Robocorp no VSCode
- Sugestão, na chromestore, instalar truepath
- Fake API - https://fakerestapi.azurewebsites.net/index.html  
- Comando para executar os testes: 
  - robot web  
  - robot -t "02 Caso de teste - Pesquisa de produto" web
  - Executar uma tag: robot -i tag testes
  - Executar todos os testes menos a tag X: robot -e X testes
  - Executar substituindo o browser: robot -v BROWSER:firefox web
  - Jogar os resultados para dentro de uma pasta: robot -d results api/Books.robot 
 