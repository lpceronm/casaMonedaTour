OUTPUT="$(docker ps -aqf 'name=casamonedatour_app')"
docker exec -it ${OUTPUT} rails db:create