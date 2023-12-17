# PIMVIEW

## About

PIMVIEW is a modular home automation system, with the intent to be extendable to accomodate current and future IOT and automation devices in such a manner that the core architecture / structure is not impacted - this is achieved through the use of Webpacks Module Federation with *Dynamic Remotes* for the front end and modular back end message q system via MQTT

Module federation
https://webpack.js.org/concepts/module-federation/#dynamic-remote-containers

MQTT
https://rabbitmq.com/

### Why MQTT

PIMVIEW needed to consider home networks, their reliability and also scalability of the product,
given this while looking at viable technologies the nature of a messaging queue system mitigated issues that would be present in a more general direct REST or SOAP solution, such  as lost packets, slow networks etc. resulting in either delayed or undelivered instructions to the end device.

Leveraging MQTT was decided as it provides 1 - 1 backend solution vs direct api which would have every device with its own api connection to the discrete IOT / home devices, also messaging protocols such as MQTT have inherint capacity to scale.

### Architecture

> Note: diagram needs to be updated to incorporate module federation and extendible frontend

<img width="533" alt="image" src="https://user-images.githubusercontent.com/37164299/211138713-60bbc7f6-a31e-4f04-bca5-ce356b9d98b4.png">

## Starting Application
After cloning the repository set the copy .env_template to .env,
update the environment variables appropriately.

execute docker-compose up -d or podman-compose up -d

then browse to the url configured in .env