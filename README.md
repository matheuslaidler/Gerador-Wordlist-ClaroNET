# Gerador de senhas para redes WiFi Claro-NET para Brute-Force

  ### Script simples que desenvolvido a tempos com o objetivo da criação de uma forma de automatização de wordlists para redes wifi não configuradas da Claro-NET, isto é, das que ainda utilizam o login padrão configurado.
  
  O padrão é, geralmente, o nome da rede com um código de login, para a senha é usado o mesmo código com mais dois dígitos.
  Por exemplo: `CLARO_2G40D231` ou `CLARO_5G40D231` é o nome das redes reconhecidas em sua varredura.
  A senha padrão dela veio como `40D231EF`, ou seja, pegou o código posterior ao nome da rede 2G ou 5G e adicionou dois novos caracteres.
  
  Não sei se este ainda é o padrão usado, mas faz tempo que eu vejo que os logins padrões da claro são bem simples de se entender e lembrar.
  Na minha casa, na casa de minha mãe e na casa de meu avô as senhas estavam sendo usadas a padrão que aparece no modem, assim percebi só com o tempo, sem quere, uma forma que facilitava a memorização da senha padrão aleatória.
  Eu selecionava qual rede queria, se era a 2G ou outra - como a 5G dessa rede que eu nem tenho como acessar por não ter equipamento que reconhece ainda -, me conectava e pronto. Eu lembrava via muita repetição, ou precisava ir ver mesmo a senha, até perceber que a entre o nome da rede tinha quase toda a chave, agora era só lembrar de duas letras, então facilitou lembrar da senha.
  Após esse acontecimento, acabei pensando que ficaria super tranquilo de criar uma wordlist para um ataque de força bruta nessas redes, tendo em vista que será sempre letra maiuscula e sempre contendo apenas mais dois caracteres do alfabeto. 
  Criar uma wordlist de apenas dois caracteres simples (todos com caps ou todos sem caps, sem meio termo) é algo BEM tranquilo, rápido e fácil de fazer, usando ferramentas simples como crunch, por exemplo.
 
  É bem tranquilo utilizar crunch para acabar criando uma wordlist de apenas dois caracteres com o padrão "40D231" de início. 
  Agora será fácil de invadir a rede em caso do usuário manter essa configuração padrão do modem, isso se essa configuração continuar sendo deste modo. 
  Nesse caso, sabemos que uma das linhas das palavras criadas no brute force será a senha da wifi necessariamente, permitindo que seja feito o ataque a redes WPA2 via brute force com Aircrack-ng, por exemplo.
  
  Eu não tinha postado aqui antes pois, além de ser super simples e fácil de fazer, eu queria publicar um script mais completo que já tenha a opção de fazer o brute force direto, assim automatizaria ainda mais as coisas.
  Ainda vou separar um tempo para desenvolver ele e publicar aqui também, enquanto isso fiquem com essa ferramenta que já funciona.


## Modo de usar & Requisitos
**Padrão de qualquer script shell**
 -  `bash wlgenerator.sh` já funciona normal.
 -  `chmod +x wlgenerator.sh` para poder executá-lo `./wlgenerator.sh`
    - Mova-o pra dentro de /usr/bin: 
     `sudo mv wlgenerator.sh /usr/bin` para executá-lo de qualquer diretório
     
       usando somente o comando `./wlgenerator.sh`
 
 **Requisito de uso**: Terminal ; WSL2 {windows} // {Linux} || Crunch
