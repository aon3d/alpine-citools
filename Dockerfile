FROM alpine:latest

RUN apk update && apk add \
        openssh \
        git \
        make \
        python3 \
        gcc-avr \
        avr-libc

RUN git clone https://github.com/arduino/ArduinoCore-avr.git && \
        mkdir -p /usr/share/arduino/hardware/arduino && \
        mv  ArduinoCore-avr /usr/share/arduino/hardware/arduino/avr
