+---------------------------+
|			    |
|    Projet Camera_robot    |
|		|_Camera    |
|		|_ ...	    |
+---------------------------+

Dans ce dossier se trouve l'IP Camera_robot

################Bench################	
fichier de test des composant VHD
la compilation des fichiers de test entrain aussi la compilation des fichiers dans /VHD
	$cd Bench
	$make compil
	
	
########DE1_SOC_CAMERA_IP_Vhdl#######
si on veut programmer le FPGA, lancer quartus et selectionner ce projet

	
################Doc################
différentes documentation son à disposition	
	

################Lib################
Lib est le nom de la librairie où sont compilé tout .vhd
cela permet d'associer le testbench au composant sous ModelSim.
La librairie est supprimée puis générée lors d'une compilation.


################Synthese################
Dossier où Quartus fait la synthèse
	
	
################VHD################
description des différents bloc en VHDL
pour compiler ces composant
	$cd VHD
	$make compil
	
