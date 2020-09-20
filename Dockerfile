FROM tensorflow/tensorflow:latest

LABEL version="1.0.0" by="clement.bolin@epitech.eu"

WORKDIR /deepLearningGaz 


# Install python
RUN apt update -y && apt-get install python3-dev python3-pip -y
# Install dependencies
RUN pip3 install Theano
RUN pip3 install keras

COPY . .
EXPOSE 8080