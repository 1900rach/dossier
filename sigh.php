<?php
      require('database.php');
      ?>
      <?php
//validation du formulaire
      if(isset($_POST['valider'])){   
// //verifier si l'utilisateur a completer tous ses champs 
          if(!empty($_POST['mat']) AND !empty($_POST['nom']) 
          AND!empty($_POST['prenom']) AND !empty($_POST['date'])
          AND!empty($_POST['dep']) AND !empty($_POST['pwd'])
         AND!empty($_POST['num']) AND !empty($_POST['mail'])){
               
//prise des données de l'utilisateur 
            $user_mat = htmlspecialchars($_POST['mat']);
            $user_name = htmlspecialchars($_POST['nom']);
//le htmlspecialchars est là pour eviter qu'un connaisseur viennent recupérer les informations de notre bd
            $user_prenom = htmlspecialchars($_POST['prenom']);
            $user_date = htmlspecialchars($_POST['date']);
            $user_dep= htmlspecialchars($_POST['dep']);
            $user_pwd = password_hash($_POST['pwd'] , PASSWORD_DEFAULT);
            $user_numero = htmlspecialchars($_POST['num']);
            $user_email = htmlspecialchars($_POST['mail']);
            //$user_pwd= htmlspecialchars($_POST['mdp']);
            
//password_hash crypte le mot de passe et password_default le garde sans changement
$check = $bdd->prepare('SELECT ID, NOM, PRENOM, DATE_NAIS, DEPART, PASSWORD, NUM_TEL, EMAIL FROM utilisateur WHERE  MATRICULE = ? NOM = ?  AND PRENOM = ?  AND DATE_NAIS = ? AND DEPART = ? AND PASSWORD = ? AND NUM_TEL = ? AND EMAIL = ? '); 
$check->execute(array($user_mat, $user_name, $user_prenom, $user_date, $user_dep,  $user_pwd, $user_numero, $user_email));
//compte le nombre de fois où le serveur reconnait le même NOM et le même prénom déjà entré 
if($check->rowCount() == 0){   
   // var_dump('bonjour') ;   
      //  die;  
$insert = $bdd->prepare('INSERT INTO utilisateur(ID, NOM, PRENOM, DATE_NAIS, DEPART, PASSWORD, NUM_TEL, EMAIL) VALUES(?, ?, ?, ?, ?, ?, ?,?)');
$insert->execute(array($user_mat, $user_name, $user_prenom, $user_date, $user_dep, $user_pwd, $user_numero, $user_email));
header('location:login.php');
                       
   

//verifier si l'utilisateur n'est pas déja inscrit
            
                }else {
                    echo "<script> alert('cet utilisateur existe déja')</script>";
                   }

        //si le NOM et le prénom sont reconnu il ya cette erreur 
            }
            else{
                echo "<script> alert('Une erreur est survenue')</script>";
            }
            
        //si tous les champs ne sont pas remplis il ya cette erreur 
        //   }
        //   else{
        //     echo "<script> alert('remplis tous les champs nor ')</script>";
        // }

}

//xyoncode-->