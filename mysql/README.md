Environment Variables

MYSQL_ROOT_PASSWORD
Esta variável é obrigatória e especifica a senha que será definida para a conta de superusuário root do MySQL. No exemplo acima, ele foi definido como my-secret-pw.

MYSQL_DATABASE
Esta variável é opcional e permite especificar o nome de um banco de dados a ser criado na inicialização da imagem. Se um usuário / senha foi fornecido (veja abaixo), então esse usuário terá acesso de superusuário (correspondente a GRANT ALL) a este banco de dados.

MYSQL_USER, MYSQL_PASSWORD
Essas variáveis são opcionais, usadas em conjunto para criar um novo usuário e para definir a senha desse usuário. Este usuário receberá permissões de superusuário (veja acima) para o banco de dados especificado pela variável MYSQL_DATABASE. Ambas as variáveis são necessárias para que um usuário seja criado.

Observe que não há necessidade de usar este mecanismo para criar o superusuário root, esse usuário é criado por padrão com a senha especificada pela variável MYSQL_ROOT_PASSWORD.

MYSQL_ALLOW_EMPTY_PASSWORD
Esta é uma variável opcional. Configure com um valor não vazio, como yes, para permitir que o contêiner seja iniciado com uma senha em branco para o usuário root. NOTA: Definir esta variável como yes não é recomendado a menos que você realmente saiba o que está fazendo, uma vez que isso deixará sua instância do MySQL completamente desprotegida, permitindo que qualquer pessoa obtenha acesso de superusuário completo.

MYSQL_RANDOM_ROOT_PASSWORD
Esta é uma variável opcional. Defina com um valor não vazio, como sim, para gerar uma senha inicial aleatória para o usuário root (usando pwgen). A senha de root gerada será impressa em stdout (GENERATED ROOT PASSWORD: .....).

MYSQL_ONETIME_PASSWORD
Define o usuário root (não o usuário especificado em MYSQL_USER!) Como expirado quando o init é concluído, forçando uma mudança de senha no primeiro login. Qualquer valor não vazio ativará esta configuração. NOTA: Este recurso é compatível apenas com MySQL 5.6+. Usar esta opção no MySQL 5.5 gerará um erro apropriado durante a inicialização.

MYSQL_INITDB_SKIP_TZINFO
Por padrão, o script do entrypoint carrega automaticamente os dados de fuso horário necessários para a função CONVERT_TZ (). Se não for necessário, qualquer valor não vazio desativa o carregamento do fuso horário.