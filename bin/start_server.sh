source .env

rails s -b 'ssl://localhost:3000?key=./certs/localhost.key&cert=./certs/localhost.crt'
