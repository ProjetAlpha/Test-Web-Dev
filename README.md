## Installation

- Prérequis : [composer](https://getcomposer.org/doc/00-intro.md), php >= 7.2.5 et mysql.

- Vérifier le fichier php.ini dans le dossier d'installation php.
<p> Si le fichier php.ini n'est pas présent dans le dossier d'installation de php, vous devez le créer manuellement par exemple : </p>
<pre>
    touch php.ini
    cp php.ini-development php.ini
</pre>

- Vérifiez les extensions php.
<p> php_openssl, pdo_mysql, php_mbstring, php_fileinfo doivent être activées lors de l'installation de php et extension_dir dans php.ini doit pointer vers le dossier des extensions. Elles sont nécessaires à l'utilisation du framework laravel. </p>

- Vérifier qu'il n'y pas d'erreur dans le fichier php.ini.
<pre>
    php --ini
</pre>

- Installer laravel
<pre>
    composer global require laravel/installer
</pre>

- Installer les dépendances du projet
<pre>
    git clone https://github.com/ProjetAlpha/Test-Web-Dev
    composer install
</pre>

- Création et modification des fiches d'acteurs.
<p> Vous avez besoin d'être authentifier en tant qu'administrateur pour modifier les fiches d'acteurs. La column type doit avoir la valeur admin dans la table user. Un utilisateur lambda ne peut pas modifier les fiches d'acteur.
Pour faciliter le test du projet, vous pouvez importer TestWebDev.sql (à la racine du projet) dans votre base de donnée.
<pre>
    mysql -u[utilisateur] -p [nom_base_de_donnees] < TestWebDev.sql # WINDOWS
    mysql < TestWebDev.sql # LINUX
</pre>

La base de donnée TestWebDev contient un administrateur avec les identifiants : 
<pre>
    mail : test@gmail.com
    mot de passe : test123test123
</pre>
</p>

- Création et ajout des variables d'environnement
Vous devez creer un fichier d'environnement
<pre>
   cp .env.example .env 
</pre>

<p> Dans le fichier .env, remplacer DB_DATABASE=Laravel par DB_DATABASE=TestWebDev, si vous êtes sur une machine linux, remplacer DB_HOST=127.0.0.1 par DB_HOST=localhost </p>

- Générer une clé
<pre>
    php artisan key:generate
</pre>

- Lien symbolique entre le dossier public et le dossier de stockage des données.
<pre>
    php artisan storage:link
</pre>

- Lancer le server
<pre>
    php artisan serve
</pre>
