+---------------------------+
|			    |
|   Projet Camera_robot 
|			    |
+---------------------------+
				(2018-2019)

Etudiants:	Delage Vincent
		Fernandez Thomas
			
Encadrant:	Engels Sylvain

Support technique :	Rolland Robin 



Sujet: Le but du projet est de faire pointer un bras robotis� 2 axes vers un objet film�

Materiel : FPGA, Camera, Servos moteur


#######################################
Environnement :
	-Camera //contient l'IP Camera
	-Config //contient les fichiers de configuration afin de faire les simulations (Modelsim), synth�se (Quartus)
	-Moteur //contient l'IP Moteur
	


#######################################
Recommendations :	sourcer les configurations d�s le d�part
dans le terminal
$cd Camera_robot/Config
$source source settings_modsim10_5c.sh
$source source settings_quartus140.sh

vous pourrez lancer ModelSim en ex�cutant : $vsim &
vous pourrez lancer Quartus en ex�cutant : $quartus &
