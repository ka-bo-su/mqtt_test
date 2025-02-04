# Overview

This repository can make simple MQTT communication between a publisher and a subscriber. The publisher sends a message to the broker 1 to 4 times, and the subscriber receives the message from the broker.
./make_log.sh is a shell script that runs docker-compose to make log files. The log files are saved in the log directory.

# How to use

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/mqtt_test.git
    ```
2. Navigate to the project directory:
    ```sh
    cd mqtt_test
    ```
3. Run docker-compose to make log
    ```sh
    ./make_log.sh
    ```
