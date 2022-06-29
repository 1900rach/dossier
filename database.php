<?php
       try {
           $bdd = new PDO('mysql:host=localhost;dbname=polytechnique','root','');
       } catch (\Exception $e) {
           die('Erreur :'.$e->getMessage());
       }
?>