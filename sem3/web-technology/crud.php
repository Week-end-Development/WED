<?php
######################WEEK#END#DEVELOPMENT######################
# file:        crud.php
# autor:       BO$
# date:        25.01.2023
# version:     0x0001
# copyrights:  All rights reserved (c) 2024 Week-End Development
# ==============================================================
# TOPIC:       CRUD.
######################WEEK#END#DEVELOPMENT######################
# TABLE1:  user_data
#      id_user     int     AI
#      email       varchar(80)
#      tel         varchar(15)
#      grupa       varchar(32)
#      img_id      int
#      pass_id     int
#
# TABLE2:  user_img
#      id_img      int     AI
#      file_name   varchar(255) mediatype(imege/jpeg)
#      uploaded_on datetime
#
# TABLE3:  user_pass
#      id_pass     int     AI
#      pass        varchar(512)
######################WEEK#END#DEVELOPMENT######################
?>
<!DOCTYPE html>
<html lang="pl">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name='googlebot' content='follow, index' />
	<meta name='Classification' content='Bisiness' />
	<meta name='copyright' content='Week-End Development' />
	<meta name='category' content='example' />
	<meta name='author' content='B0$' />
	<meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no' />
	<title>CRUD by WEEK-END DEVS</title>
	<!-- <link rel='icon' type='image/gif' href='.'/> -->

    <style>
        *{
            box-sizing:border-box;
            padding: 0;
            margin: 0;
            text-decoration: none;
            list-style: none;
        }
        body{
            margin:0;
            background:#333;
        }
        main{
            height: 100vh;
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 1fr;
            grid-template-rows: 50px 1fr 50px;
            grid-template-areas:
                "slider"
                "nav"
                "footer";
            row-gap: .5rem;
            column-gap: .5rem;
        }
        nav{
            grid-area: nav;
            background:#666;
        }
        #slider{
            grid-area: slider;
            background:#666;
        }
        footer{
            grid-area: footer;
            background:#666;
        }
        table, th, td {
            border: 1px solid black;
        }
    </style>

</head>
<?php
# ==============================================================
//CONNECTION
require_once "conn.php";
# ==============================================================
//DELETE
if(isset($_POST['delete'])){
    $id = $_POST['id'] ?? null;

    $resultU = $conn->query("SELECT * FROM user_data JOIN user_img ON (img_id=id_img) JOIN user_pass ON (pass_id=id_pass) WHERE `id_user`='$id';");
    $dataU = $resultU->fetch_assoc();

    $conn->query("DELETE FROM user_pass WHERE id_pass = '".$dataU['id_pass']."';");
    $conn->query("DELETE FROM `user_img` WHERE `user_img`.`id_img` = '".$dataU['id_img']."';");
    $conn->query("DELETE FROM user_data  WHERE id_user = '".$dataU['id_user']."';");
}

# ==============================================================
//UPDATE
if(isset($_POST['save'])){
    $id = $_POST['id'] ?? null;
    $email = $_POST['email'] ?? null;
    $phone = $_POST['tel'] ?? null;
    $grupa = $_POST['grupa'] ?? null;

    //echo "--->".$id.$email.$phone.$grupa;

    $resultU = $conn->query("SELECT * FROM user_data JOIN user_img ON (img_id=id_img) JOIN user_pass ON (pass_id=id_pass) WHERE `id_user`='$id';");
    $dataU = $resultU->fetch_assoc();

    if(isset($_FILES["file"]["name"])){
        $targetDir = "uploads/";
        $fileName = basename($_FILES["file"]["name"]) ?? null;
        $targetFilePath = $targetDir . $fileName;
        $fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
        if(!empty($_FILES["file"]["name"])){
            // Allow certain file formats
            $allowTypes = array('jpg','png','jpeg','gif');
            if(in_array($fileType, $allowTypes)){
                // Upload file to server
                if(move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath)){
                    // Insert image file name into database

                    $insert = $conn->query("UPDATE `user_img` SET `file_name` = '$fileName', `uploaded_on`=NOW() WHERE `user_img`.`id_img` = '".$dataU['id_img']."';");
                    if(!$insert){$statusMsg = "Nie udało się uploadować pliku!!!";}
                }else{$statusMsg = "Nie udało się uploadować pliku!!!";}
            }else{$statusMsg = 'Przyjmowane formaty JPG, JPEG, PNG & GIF.';}
        }
    }

    if($email || $phone || $grupa){
        if(isset($_POST['pass']) && $_POST['pass']!= $dataU['pass']){
            $password = sha1($_POST['pass']) ?? null;
            $conn->query("UPDATE user_pass SET `pass` = '$password' WHERE id_pass = '".$dataU['id_pass']."';");
        }

        $sqlAdd = "UPDATE user_data SET `email` = '$email', `tel` = '$phone', `grupa` = '$grupa' WHERE id_user = '".$dataU['id_user']."';";

        if($conn->query($sqlAdd)){$wynik = "Zmieniono wiersz";}
        else{$wynik = "Błąd zmiany: ".$conn->error;}
    }
    else{$wynik = "Wpisz wszystkie dane";}

}
# ==============================================================
//INSERT
if(isset($_POST['submitIt'])){
    $email = $_POST['email'] ?? null;
    $phone = $_POST['tel'] ?? null;
    $grupa = $_POST['grupa'] ?? null;
    $password = sha1($_POST['pass']) ?? null;

    $targetDir = "uploads/";
    $fileName = basename($_FILES["file"]["name"]) ?? null;
    $targetFilePath = $targetDir . $fileName;
    $fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
    if(!empty($_FILES["file"]["name"])){
        // Allow certain file formats
        $allowTypes = array('jpg','png','jpeg','gif');
        if(in_array($fileType, $allowTypes)){
            // Upload file to server
            if(move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath)){
                // Insert image file name into database
                $insert = $conn->query("INSERT into user_img  VALUES (null, '".$fileName."', NOW());");
                if(!$insert){$statusMsg = "Nie udało się uploadować pliku!!!";}
            }else{$statusMsg = "Nie udało się uploadować pliku!!!";}
        }else{$statusMsg = 'Przyjmowane formaty JPG, JPEG, PNG & GIF.';}
    }else{$statusMsg = 'Wybierz plik do uploadowania.';}


    if($email && $phone && $grupa && $password){

        $conn->query("INSERT INTO user_pass VALUES (null, '$password')");
        $query0 = $conn->query("SELECT id_pass FROM user_pass WHERE pass = '$password';");
        $data0 = $query0->fetch_assoc();

        $query1 = $conn->query("SELECT id_img FROM user_img WHERE file_name = '$fileName';");
        $data1 = $query1->fetch_assoc();

        $sqlAdd = "INSERT INTO user_data VALUES (null, '$email', '$phone', 'user', '".$data1['id_img']."', '".$data0['id_pass']."');";

        if($conn->query($sqlAdd)){$wynik = "Dodano wiersz";}
        else{$wynik = "Błąd dodawania: ".$conn->error;}
    }
    else{$wynik = "Wpisz wszystkie dane";}
}
# ==============================================================
//DISPLAY
$sql = "SELECT * FROM user_data JOIN user_img ON (img_id=id_img) JOIN user_pass ON (pass_id=id_pass);";
$result = $conn->query($sql);
# ==============================================================
//CONNECTION CLOSE
$conn->close();
?>
<body>
    <main>
        <nav>
            <table style="border:1px solid black; border-spacing:0px; width:90%; margin:10px auto;">
                <tr>
                    <td>ID</td>
                    <td>Email</td>
                    <td>Tel.</td>
                    <td>Grupa</td>
                    <td>Pass</td>
                    <td>File_name</td>
                    <td>File_date</td>
                    <td>Edytuj</td>
                    <td>Usuń</td>
                </tr>
                <?php
                if($result->num_rows){
                    while($row = $result->fetch_assoc()){
                        if(isset($_POST['change']) && $_POST['id']==$row['id_user']){
                ?>
                <tr>
                    <form action="" method="POST" enctype="multipart/form-data">
                        <td><?=$row['id_user']?></td>
                        <td><input name="email" type="text" value="<?=$row['email']?>"/></td>
                        <td><input name="tel" type="text" value="<?=$row['tel']?>"/></td>
                        <td><input name="grupa" type="text" value="<?=$row['grupa']?>"/></td>
                        <td><input name="pass" type="text" value="<?=$row['pass']?>"/></td>
                        <td><input name="file" type="file" value="<?=$row['file_name']?>"/></td>
                        <!-- <td><input name="uploaded_on" type="text" value="<?=$row['uploaded_on']?>"/></td> -->
                        <td><?=$row['uploaded_on']?></td>

                    <td>

                            <input name="id" type="hidden" value="<?=$row['id_user']?>"/>
                            <input name="save" type="submit" value="&nbsp;v&nbsp;"/>
                        </form>
                    </td>
                    <td>
                        <form action="" method="POST">
                            <input name="cancel" type="submit" value="&nbsp;/&nbsp;"/>
                        </form>
                    </td>
                </tr>
                <?php
                        }else{
                ?>
                <tr>
                    <td><?=$row['id_user']?></td>
                    <td><?=$row['email']?></td>
                    <td><?=$row['tel']?></td>
                    <td><?=$row['grupa']?></td>
                    <td><?=$row['pass']?></td>
                    <td><?=$row['file_name']?></td>
                    <td><?=$row['uploaded_on']?></td>
                    <td>
                        <form action="" method="POST">
                            <input name="id" type="hidden" value="<?=$row['id_user']?>"/>
                            <input name="change" type="submit" value="&nbsp;?&nbsp;"/>
                        </form>
                    </td>
                    <td>
                        <form action="" method="POST">
                            <input name="id" type="hidden" value="<?=$row['id_user']?>"/>
                            <input name="delete" type="submit" value="&nbsp;X&nbsp;"/>
                        </form>
                    </td>
                </tr>
                <?php
                        }
                    }
                }
                else{echo "brak wyników";}
                ?>
            </table>
        </nav>
        <div id="slider">
            <div style="width:90%; margin:10px auto;">
            <form action="" method="POST" enctype="multipart/form-data">
                <input name="email" type="email" placeholder="email">
                <input name="tel" type="text" placeholder="tel.">
                <input name="grupa" type="text" placeholder="grupa">
                <input name="pass" type="text" placeholder="password">
                <input name="file" type="file">
                <input name="submitIt" type="submit" value="Wyślij">
            </form>
            </div>
        </div>
        <footer>
            <?= @$statusMsg?>
            <?= @$wynik?>
        </footer>
    </main>
</body>
</html>