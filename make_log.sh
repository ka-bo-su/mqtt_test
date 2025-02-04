docker-compose up -d  # launch the containers in the background
docker-compose logs -f --tail=0 > ./logs/all_log.log &  # save the logs of all containers
SUB_PID=$!
for i in {30..1}; do
    echo -n -e "\r${i} seconds remaining before stopping the subscriber"
    sleep 1
done
kill "$SUB_PID"  # stop the log saving process
docker-compose down  # stop the containers
