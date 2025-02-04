while read line; do
  echo "$(date --utc "+%Y-%m-%dT%H:%M:%S.%3N%:z") $line"
done < /mosquitto/log/mosquitto.log >> /mosquitto/log/mosquitto_timestamped.log
