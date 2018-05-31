OUTPUT="$(docker ps -aqf 'name=casamonedatour_app')"
docker exec -it ${OUTPUT} rails db:create
docker exec -it ${OUTPUT} rails db:migrate
docker exec -it ${OUTPUT} rake import_data:dataCoins
