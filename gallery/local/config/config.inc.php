<?php

/* Plik nie powstanie dopóki niżej nie zostanie coś wpisane.Po uzupełnieniu wymaganych informacji plik zostanie utworzony. */

$conf['show_template_in_side_menu'] = true;

// Dynamiczne wykrywanie aktualnej domeny (protokół http/https + nazwa hosta)
$protocol = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on') ? 'https://' : 'http://';
$current_domain = $protocol . $_SERVER['HTTP_HOST'];

// Dynamiczne ustawienie adresu URL galerii Piwigo
$conf['gallery_url'] = $current_domain;
?>