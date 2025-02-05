tc qdisc add dev eth0 root netem delay 200ms 100ms distribution normal
sleep 3
count=3  # 3 messages will be published
i=0

while [ "$i" -lt "$count" ]; do
    mosquitto_pub -h mqtt-broker -t "test" -m "Hello, World!" -d | while read line; do echo "$(date "+%Y-%m-%d %H:%M:%S") $line" | tee -a /logs/mqtt-publisher.log; done
    sleep 1
    i=$((i + 1))
done