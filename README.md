# steam-encryption
## Crédits: [Cracko298](https://github.com/Cracko298) | TRAD en français + ajouts des fichiers

# Guide d'Extraction de Clé AES
- Ce tutoriel détaille les étapes pour extraire une clé AES-256 pour UE4/UE5.
- Il explique également comment utiliser cette clé pour extraire le fichier *.pak* situé dans le dossier "contents".
- Cette méthode *FONCTIONNE* pour [Steam](https://store.steampowered.com/) et [Epic](https://store.epicgames.com/en-US/download), *mais peut parfois rencontrer des problèmes avec certains jeux Epic*.
- Ce guide ne couvre *PAS* les utilisateurs de [Linux](https://www.linux.org/) ou de [MacOS](https://www.apple.com/in/macos/monterey/).

# Avant de Commencer :
- Je ne suis *PAS* responsable de l'utilisation que vous ferez des clés que vous trouverez en suivant ce guide.
- Ce guide est créé dans le but de permettre l'extraction de fichiers à des fins de modding *UNIQUEMENT*.

# Logiciels Nécessaires :
- [UEViewer](https://www.gildor.org/en/projects/umodel#files) - Pour visualiser et extraire des fichiers.
- [Steamless](https://github.com/atom0s/Steamless/releases/tag/v3.1.0.0) - Pour supprimer les restrictions SteamStub/DRM sur le fichier *Shipping.exe*.
- [AES Key Finder](https://github.com/GHFear/AESKeyFinder-By-GHFear) - Pour trouver les clés AES dans le fichier *Shipping.exe* sans DRM.
- [FModel](https://fmodel.app/) - Pour modder et visualiser les assets de vos jeux. (Note : Ce guide ne couvre pas en détail cet outil, bien que certains le préfèrent à Umodel).
- [UE4 Mod Unlocker](https://illusory.dev/).

---

# Guide :

### Étape 1 : Suppression de la restriction DRM
1. Lancez [Steamless](https://github.com/atom0s/Steamless/releases/tag/v3.1.0.0) pour retirer les restrictions DRM de votre fichier *Shipping.exe*.
2. Pour accéder à votre fichier *Shipping.exe*, allez dans "[Steam](https://store.steampowered.com/) > Bibliothèque > *Votre Jeu*". Faites un clic droit sur le nom du jeu et allez dans "Gérer > Explorer les fichiers locaux".
3. L'explorateur de fichiers devrait s'ouvrir *en arrière-plan probablement*. Rendez-vous dans "*Nom de votre jeu > Binaries > Win64/32*".
4. Collez le lien du répertoire dans [Steamless](https://github.com/atom0s/Steamless/releases/tag/v3.1.0.0) ou recherchez le répertoire de *Shipping.exe* via le bouton "Parcourir".
5. Cliquez sur le bouton d'extraction dans [Steamless](https://github.com/atom0s/Steamless/releases/tag/v3.1.0.0). Cela prendra quelques secondes/minutes.
6. Le nouveau fichier *.exe* créé est le jeu sans DRM.

### Étape 2 : Recherche des clés AES
1. Utilisez [AES Key Finder](https://github.com/Cracko298/AES-Key-Extracting-Guide/files/9074659/AES.Key.Finder.zip) pour trouver les clés AES-256.
2. Copiez le fichier *Shipping.exe* sans DRM nouvellement créé dans le dossier [AES Key Finder](https://github.com/Cracko298/AES-Key-Extracting-Guide/files/9074659/AES.Key.Finder.zip), extrait du fichier *AES.Key.Finder.zip*.
3. Lancez le fichier *.bat* nommé *RUN Find 256-bit UE4 AES Key.bat*, qui recherchera toutes les clés récupérables dans le *Shipping.exe* sans DRM.
4. Après l'exécution de *RUN Find 256-bit UE4 AES Key.bat*, 1 à 6 dossiers devraient être créés. Un seul contient la clé AES-256.
5. Les dossiers ne contiennent que des fragments de la clé. Le ***nom du fichier*** à l'intérieur du dossier *EST* la clé AES-256.

### Étape 3 : Extraction du fichier *.pak* chiffré
1. Enfin, vous aurez besoin de [UEViewer/Umodel](https://www.gildor.org/en/projects/umodel#files) pour extraire/enregistrer les fichiers du jeu.
2. Comme d'habitude, extrayez le fichier *.zip* et lancez l'application. Pour simplifier, copiez le fichier *.pak* dans le dossier [Umodel](https://www.gildor.org/en/projects/umodel#files) nouvellement extrait.
3. Pour accéder à votre jeu dans [Steam](https://store.steampowered.com/) *si vous l'avez fermé*, allez dans "[Steam](https://store.steampowered.com/) > Bibliothèque > Votre Jeu > Clic droit > Gérer > Explorer les fichiers locaux".
4. Naviguez dans "*Nom de votre jeu > Content > Paks*" depuis l'explorateur de fichiers.
5. Vous devriez trouver au moins un fichier *.pak*. Il s'agit normalement du plus volumineux, mais cela dépend du jeu.
6. Copiez le fichier *.pak* et collez-le dans le dossier [Umodel](https://www.gildor.org/en/projects/umodel#files).
7. Ouvrez [Umodel.exe](https://www.gildor.org/en/projects/umodel#files) et sélectionnez tout ce que vous souhaitez extraire/enregistrer. Assurez-vous de choisir la version du jeu.
8. Vous pouvez trouver la version du jeu en faisant un clic droit sur *Shipping.exe* puis en allant dans "Propriétés > Détails".
9. [Umodel](https://www.gildor.org/en/projects/umodel#files) ouvrira ensuite une fenêtre de chiffrement AES. Collez les clés AES-256 dans cette fenêtre. Ajoutez une ligne pour chaque clé que vous souhaitez essayer.

---

# Notes :
- Pour connaître la ***version du jeu***, *Clic droit* sur le fichier original *Shipping.exe*, puis allez dans : *Propriétés > Détails > Version du fichier*.
- Si cela échoue, vous utilisez probablement un fichier *.pak* non Steam, ou une version non supportée d'UE (UE3 ou UE2).
- En cas de succès, vous avez réussi à décrypter le fichier *.pak*.
- Fonctionne uniquement avec les exécutables *Win32* et *Win64* (***.exe uniquement***, non compatible avec *.msi*, *.com*, *.bat*, ou *.cmd*).
- Ce guide ne fonctionne *PAS* pour les jeux *MacOS* ou *Linux*, ni pour *Nintendo Switch*, *PlayStation*, ou *Xbox* (évidemment).

---

# Logiciels :
- [Glidor](https://github.com/gildor2) pour UEViewer, l'outil d'extraction et de visualisation d'UE4.
- [Atom0s](https://github.com/atom0s) pour Steamless.
- [GHFear](https://github.com/GHFear) pour AES Key Finder et UE4 Mod Unlocker.
- [4sval](https://github.com/4sval) pour FModel, l'outil de visualisation UE4/UE5.

