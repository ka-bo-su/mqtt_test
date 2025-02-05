# docker-compose logs -f --tail=0 > ./logs/all_log.log &  # save the logs of all containers
docker-compose up -d # launch the containers in the background
docker-compose logs -f | tee ./logs/all_log.log &  # save the logs of all containers
echo "$SUB_PID"
for i in {8..1}; do
    echo -n -e "\r${i} seconds remaining before stopping the container"
    sleep 1
done
docker-compose down  # stop the containers
