<html>
    <head> 
        <h1>TESTE PHP</H1>
    </head>
    <body>
<?php

$nomes = array('fulano de tal', 'fulano da silva', 'CICRANO DE SOUZA');
$fones = array('(47)3635-3434','(47)99990-4545','(48)98818-1818');
$emails = array('fulano@gmail.com','fsilva@gmail.com','cicrano@hotmail.com');
$bday = array('19/09/2001','23/10/1997','08/03/2002');

// Funções de validação
function validarTelefone($telefone) {
    return preg_match('/^\(?\d{2}\)?\s?\d{4,5}-?\d{4}$/', $telefone);
}

function validarEmail($email) {
    return filter_var($email, FILTER_VALIDATE_EMAIL);
}

function validarData($data) {
    $partes = explode('/', $data);
    if (count($partes) === 3) {
        return checkdate((int)$partes[1], (int)$partes[0], (int)$partes[2]);
    }
    return false;
}

echo "=== Validação ===\n";

for ($i = 0; $i < count($nomes); $i++) {
    echo "\nNome: " . ucwords(strtolower($nomes[$i])) . "\n";

    // Validação telefone
    if (validarTelefone($fones[$i])) {
        echo "Telefone válido: {$fones[$i]}\n";
    } else {
        echo "Telefone inválido: {$fones[$i]}\n";
    }

    // Validação e-mail
    if (validarEmail($emails[$i])) {
        echo "Email válido: {$emails[$i]}\n";
    } else {
        echo "Email inválido: {$emails[$i]}\n";
    }

    // Validação data de nascimento
    if (validarData($bday[$i])) {
        echo "Data de nascimento válida: {$bday[$i]}\n";
    } else {
        echo "Data de nascimento inválida: {$bday[$i]}\n";
    }
}

echo "\n=== E-mails do Hotmail ===\n";
foreach ($emails as $email) {
    if (str_ends_with(strtolower($email), '@hotmail.com')) {
        echo "$email\n";
    }
}
?>
        
    </body>
 </html>