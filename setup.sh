#Setup FTP par zolkra
su
echo "Code par Zolkra#5689"
echo "Début de la mise à jour et installation de VSFTPD."
echo "Appuyer sur enter pour commencer l'installation."
sudo apt update && upgrade
sudo apt install vsftpd
clear
echo "Fin de la mise à jour et installation de VSFTPD."
echo "Appuyer sur enter pour passer à l'étape suivante."
read pause
echo "Début de la configuration automatique."
sudo systemctl stop vsftpd
sudo rm /etc/vsftpd.conf
sudo cp ./files/vsftpd.conf /etc/
sudo cp ./files/userlist.chroot_list /etc/
sudo systemctl start vsftpd
clear
echo "Dernière étape !"
echo "Status et IP locale"
echo "Si l'ip est = à 127.0.0.1 elle n'est pas bonne."
read pause
sudo systemctl status vsftpd
echo
echo
hostname -i
echo "Installation terminée !"
read pause