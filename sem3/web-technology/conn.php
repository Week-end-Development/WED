<?php
######################WEEK#END#DEVELOPMENT######################
# file:        conn.php
# autor:       BO$
# date:        27.05.2020
# version:     0x0004
# copyrights:  All rights reserved (c) 2024 Week-End Development
# ==============================================================
# TOPIC:       POŁĄCZENIE DO BAZY DANYCH.
######################WEEK#END#DEVELOPMENT######################
  $conn = new mysqli('server_IP','user','password','db_name');
  if($conn->connect_error){
    die("Connection failed: ".$conn->connect_error);
  }
  $conn->set_charset("utf8");
?>