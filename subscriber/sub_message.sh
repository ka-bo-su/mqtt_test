tc qdisc add dev eth0 root netem delay 200ms 100ms distribution normal
sleep 2
# use `mosquitto_sub` as a subscriber to the broker
mosquitto_sub -h mqtt-broker -t "test" -d -C 3 | while read line; do echo "$(date "+%Y-%m-%d %H:%M:%S") $line" | tee -a /logs/mqtt-subscriber.log; done