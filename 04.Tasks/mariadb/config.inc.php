<?php
// Настройки аутентификации
$cfg['Servers'][1]['auth_type'] = 'cookie';
$cfg['Servers'][1]['user'] = 'phpmyadmin';
$cfg['Servers'][1]['password'] = 'phpmyadmin';

// Настройки базы данных
$cfg['Servers'][1]['host'] = 'localhost';
$cfg['Servers'][1]['connect_type'] = 'tcp';
$cfg['Servers'][1]['compress'] = false;
$cfg['Servers'][1]['AllowNoPassword'] = false;

// Настройки безопасности
$cfg['blowfish_secret'] = 'secret'; // Секретная фраза для шифрования cookie
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';
?>


