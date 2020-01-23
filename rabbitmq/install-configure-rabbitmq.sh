# install rabbitmq
sudo apt install -y rabbitmq-server
# start rabbitmq
sudo service rabbitmq-server start
# enable plugin for UI using
sudo rabbitmq-plugins enable rabbitmq_management
# go to http://localhost:15672/ to check RabbitMQ UI
-
# create alex_rmq user with root password
sudo rabbitmqctl add_user alex_rmq root
# tag the user with "administrator" for full management UI and HTTP API access
sudo rabbitmqctl set_user_tags alex_rmq administrator
# login to rabbitMQ via UI to test user accesss
-
# for magento 2 add this configuration array item for env.php, 5672 is default port
'queue' => [
        'amqp' => [
            'host' => 'localhost',
            'port' => '5672',
            'user' => 'alex_rmq',
            'password' => 'root',
            'virtualhost' => '/'
        ]
    ]

sources:
installation - https://www.rabbitmq.com/install-debian.html
UI management - https://www.rabbitmq.com/management.html
