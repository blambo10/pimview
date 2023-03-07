rabbitmq-plugins enable rabbitmq_amqp1_0 rabbitmq_mqtt rabbitmq_stomp rabbitmq_stream rabbitmq_web_mqtt rabbitmq_management 
rabbitmqctl add_user ${PIMVIEW_RABBITMQ_MQTT_USER} ${PIMVIEW_RABBITMQ_MQTT_PASSWORD}
rabbitmqctl set_permissions -p "/" ${PIMVIEW_RABBITMQ_MQTT_USER} ".*" ".*" ".*"
rabbitmqctl set_user_tags mqtt-test management
rabbitmq-server $@