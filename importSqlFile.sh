dbName=$1
script=$2

docker exec -i phpnginxstack_db_1 mysql -uroot -proot <<< "Create Database "$dbName
docker exec -i phpnginxstack_db_1 mysql -uroot -proot $dbName < $script
