DURATION=25  # after 25 seconds, the subscriber will stop
sleep 2
# use `mosquitto_sub` as a subscriber to the broker
mosquitto_sub -h mqtt-broker -t "test" -d | while read line; do echo "$(date "+%Y-%m-%d %H:%M:%S") $line" | tee -a /logs/mqtt-subscriber.log; done &

# get PID of `mosquitto_sub` process
SUB_PID=$!

# wait for the duration of the subscriber
sleep "$DURATION"

# kill the `mosquitto_sub` process
kill "$SUB_PID"
