#!bin/bash

#mkdir myapp
cd myapp
python3 -m venv venv
venv/bin/activate
pip install flask
touch app.py
nano app.py
docker build -t my app .
docker run -p 5000:5000 myapp
