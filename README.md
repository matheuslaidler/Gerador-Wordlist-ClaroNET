# Encontrando senha de redes wireless específicas com padrão vulnerável

**Precisei censurar o nome da operadora por ter sido notificado via e-mail para tirar do ar. Foi feito por meses e agora recoloquei com o nome censurado, assim evitando problemas para a marca e seus clientes, peço perdão pelo incomodo**

  #### Script simples desenvolvido a tempos com o objetivo da criação de uma forma de automatização para desenvolver wordlists de redes wifi não configuradas da operadora {censurado}, isto é, organizar uma wordlist certeira para descobrir a senha de uma rede que ainda utiliza o login padrão configurado - Atualização: Versões mais novas de modem com planos mais atuais já possuem um padrão corrigido - porém, pessoas que usam a mesma desde 2020-2021 (período testado) ainda podem estar com as redes de padrão frágeis (como já foi testado em 2023 onde moro). A funcionalidade deste script é justamente a criação de uma wordlist que vai certamente conter a senha padrão dentro para ser usado em um ataque de força bruta, conhecido como brute force, para descobrir se a rede usa senha padrão e/ou para ter acesso da mesma - fins acadêmicos.
![image](https://github.com/matheuslaidler/Gerador-Wordlist-WIFI/assets/76860503/ba9988d3-d31f-4959-a0de-06c9e987146d)


  
  #### Padrão das credenciais de entrada das redes wireless {censurado}:
  O padrão é, geralmente, o nome da rede com um código aleatório ao final, para a senha é usado o mesmo código após dois digitos aleatórios.
  Por exemplo: `{censurado}_2G40D231` // `{censurado}_5G40D231` é o nome das redes reconhecidas em sua varredura. A senha padrão mostrada no modem veio como `EF40D231`.
  Podemos perceber que pegou o código - posterior ao nome da rede 2G ou 5G - e o adicionou depois de dois caracteres aleatórios.
  
  Este não parece mais ser o padrão usado em 2023, mas quando o script foi feito era, portanto ainda haverá redes que utilizam o padrão do modem e, assim, estão vulneráveis e precisam alterar as credenciais urgentemente. 
  
  (2021) Faz tempo que eu vejo que os logins padrões da {censurado} são bem simples de se entender e lembrar.
  Na minha casa, na casa de minha mãe e na casa de meu avô as senhas da rede {censurado} estavam sendo usadas neste padrão. Percebi só com o tempo, sem querer, já que conforme vamos colocando a senha, a memória vai buscando uma forma que facilita o trabalho para digitar a senha, daí reconhecendo o padrão. Agora era só lembrar de duas letras, facilitando na hora de lembrar.
  Após esse acontecimento, acabei pensando que ficaria super tranquilo de criar uma wordlist para um ataque de força bruta nessas redes com finalidade acadêmica, não apenas para mostrar a fragilidade e aprender sobre força bruta e redes wireless, mas para poder ajudar quem está riscos de terem suas redes invadidas.
 A criação da wordlist por ser apenas dois dígitos, o resto é um código padrão. Os dígitos serão sempre 2 letras maiusculas antes do código, um padrão bem fácil de quebrar sem gastar tempo e espaço para a criação da wordlist.
  Criar uma wordlist de apenas dois caracteres simples (hex) é algo BEM tranquilo, rápido e fácil de fazer, usando ferramentas simples como crunch, por exemplo, que é a utilizada.
 
  É bem tranquilo utilizar crunch para acabar criando uma wordlist de apenas dois caracteres com o padrão "40D231" de início. 
  Agora será fácil de invadir a rede em caso do usuário manter essa configuração padrão do modem, isso se essa configuração continuar sendo deste modo (não continuou). 
  Nesse caso, sabemos que uma das linhas das palavras criadas no brute force será a senha da wifi necessariamente, permitindo que seja feito o ataque a redes WPA2 via brute force com Aircrack-ng, por exemplo.
  
  Eu não tinha postado aqui antes pois, além de ser super simples e fácil de fazer, eu queria publicar um script mais completo que já tenha a opção de fazer o brute force direto, assim automatizaria ainda mais as coisas - essa ferramenta está praticamente pronta -, enquanto isso fiquem com essa ferramenta que já funciona.

  **Lembrando que este é um conteúdo criado com fins acadêmicos e não me responsabilizo por nenhum ato de terceiro, aqui é algo para estudo e que mostra a importância da configuração adequada de sua rede interna, coisa que a própria operadora recomenda.**
 
  

## Modo de usar & Requisitos
**Padrão de qualquer script shell**
 -  `bash wlgenerator.sh` ou `. wlgenerator.sh` já funciona normal .
 ![image](https://github.com/matheuslaidler/Gerador-Wordlist-WIFI/assets/76860503/e8960e25-8e07-41b7-b2df-e426180fd7ea)

 
 -  `chmod +x wlgenerator.sh` para poder executá-lo `./wlgenerator.sh`
![image](https://github.com/matheuslaidler/Gerador-Wordlist-WIFI/assets/76860503/9c9c26b3-3928-41ed-bc62-87752db77c98)

    - Mova-o pra dentro de /usr/bin: 
     `sudo mv wlgenerator.sh /usr/bin` para executá-lo de qualquer diretório
     
       > Execute usando somente o comando `./wlgenerator.sh`
       
    ![image](https://github.com/matheuslaidler/Gerador-Wordlist-WIFI/assets/76860503/e0a94676-b1e1-41ab-ada6-d11166f2ac31)

 - Colocar o nome da wifi como no exemplo e esperar a wordlist ser feita.
   - Quando ficar pronta ela vai abrir na tela do terminal, poderá apertar Q para fechar, End pra ir até a ultima linha, PagDn ou seta baixo para descer, PgUp ou seta cima para subir e Home pra voltar a primeira linha. 
   
   - Talvez eu mude essa parte e coloque se o usuário quer abrir pelo terminal ou não, caso não queira só pular essa parte, caso queira, venha esse cat com less que mostra a wordlist.

    
    
 **Requisito de uso**:
 
    -  SO's: {windows} // {Linux}
 
    -  Terminal UNIX
 
    -  WSL2 
 
    -  Ferramenta Crunch
 
 **Créditos** -> Matheus Laidler (Criador)
