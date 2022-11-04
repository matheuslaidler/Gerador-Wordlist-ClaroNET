# Gerador de senhas para qualquer rede Claro-NET padrão

  ### Script simples que foi desenvolvido a tempos com o objetivo da criação de uma forma de automatização de wordlists para redes wifi não configuradas da Claro-NET, isto é, das que ainda utilizam o login padrão configurado. A funcionalidade deste script é justamente a criação de uma wordlist que vai certamente conter a senha padrão dentro para ser usado em um ataque de força bruta, conhecido como brute force, para descobrir se a rede usa senha padrão e/ou para ter acesso legal ou ilegal da mesma.
![image](https://user-images.githubusercontent.com/76860503/199823261-6601ed11-83a9-432b-a65d-5f9c5fa21539.png)


  O padrão é, geralmente, o nome da rede com um código de login, para a senha é usado o mesmo código com mais dois dígitos.
  Por exemplo: `CLARO_2G40D231` ou `CLARO_5G40D231` é o nome das redes reconhecidas em sua varredura.
  A senha padrão dela veio como `40D231EF`, ou seja, pegou o código posterior ao nome da rede 2G ou 5G e adicionou dois novos caracteres.
  
  Não sei se este ainda é o padrão usado, mas faz tempo que eu vejo que os logins padrões da claro são bem simples de se entender e lembrar.
  Na minha casa, na casa de minha mãe e na casa de meu avô as senhas estavam sendo usadas a padrão que aparece no modem, assim percebi só com o tempo, sem querer, uma forma que facilitava a memorização da senha padrão aleatória.
  Eu selecionava qual rede queria, se era a 2G ou outra - como a 5G dessa rede que eu nem tenho como acessar por não ter equipamento que reconhece ainda -, me conectava e pronto. Eu só lembrava via repetição da senha direto ou precisava ver mesmo a senha no modem, até perceber que a entre o nome da rede tinha quase toda a chave, agora era só lembrar de duas letras, então facilitou lembrar da senha.
  Após esse acontecimento, acabei pensando que ficaria super tranquilo de criar uma wordlist para um ataque de força bruta nessas redes, tendo em vista que será sempre letra maiuscula e sempre contendo apenas mais dois caracteres do alfabeto. Caso possa vir outros caracteres, ainda sim fica fácil a criação da wordlist por ser apenas dois dígitos.
  Criar uma wordlist de apenas dois caracteres simples (todos com caps ou todos sem caps, sem meio termo) é algo BEM tranquilo, rápido e fácil de fazer, usando ferramentas simples como crunch, por exemplo.
 
  É bem tranquilo utilizar crunch para acabar criando uma wordlist de apenas dois caracteres com o padrão "40D231" de início. 
  Agora será fácil de invadir a rede em caso do usuário manter essa configuração padrão do modem, isso se essa configuração continuar sendo deste modo. 
  Nesse caso, sabemos que uma das linhas das palavras criadas no brute force será a senha da wifi necessariamente, permitindo que seja feito o ataque a redes WPA2 via brute force com Aircrack-ng, por exemplo.
  
  Eu não tinha postado aqui antes pois, além de ser super simples e fácil de fazer, eu queria publicar um script mais completo que já tenha a opção de fazer o brute force direto, assim automatizaria ainda mais as coisas.
  Ainda vou separar um tempo para desenvolver ele e publicar aqui também, enquanto isso fiquem com essa ferramenta que já funciona.

  **Lembrando que este é um conteúdo criado com fins acadêmicos e não me responsabilizo por nenhum ato de terceiro, aqui é algo para estudo e que mostra a importância da configuração adequada de sua rede interna, coisa que a própria operadora recomenda.**

## Modo de usar & Requisitos
**Padrão de qualquer script shell**
 -  `bash wlgenerator.sh` já funciona normal.
 ![image](https://user-images.githubusercontent.com/76860503/199819242-cb07284d-e6cc-4d73-ac91-e5d9293b0a72.png)
 
 -  `chmod +x wlgenerator.sh` para poder executá-lo `./wlgenerator.sh`
 ![image](https://user-images.githubusercontent.com/76860503/199819347-36fe84e0-f331-464d-9eae-80cd7f225ce2.png)
    - Mova-o pra dentro de /usr/bin: 
     `sudo mv wlgenerator.sh /usr/bin` para executá-lo de qualquer diretório
     
       usando somente o comando `./wlgenerator.sh`
       
  ![image](https://user-images.githubusercontent.com/76860503/199819530-58bb37a9-5fdc-4ba8-873f-6fe16f313e63.png)
 - Colocar o nome da wifi como no exemplo e esperar a wordlist ser feita.
   - Quando ficar pronta ela vai abrir na tela do terminal, poderá apertar Q para fechar, End pra ir até a ultima linha, PagDn ou seta baixo para descer, PgUp ou seta cima para subir e Home pra voltar a primeira linha. 
   
      ![image](https://user-images.githubusercontent.com/76860503/199819738-028f8d10-771d-46fb-bc27-9e39890f9217.png)
   
   - Talvez eu mude essa parte e coloque se o usuário quer abrir pelo terminal ou não, caso não queira só pular essa parte, caso queira, venha esse cat com less que mostra a wordlist.
   
 **Requisito de uso**: Terminal ; WSL2 {windows} // {Linux} || Crunch
