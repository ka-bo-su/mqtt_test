sleep 3
count=$((RANDOM % 4 + 1))  # random number between 1 and 4 and this is the number of messages to be published
i=0

while [ "$i" -lt "$count" ]; do
    mosquitto_pub -h mqtt-broker -t "test" -m "Hello, World!" -d | while read line; do echo "$(date "+%Y-%m-%d %H:%M:%S") $line" | tee -a /logs/mqtt-publisher.log; done
    sleep 5
    i=$((i + 1))
done