install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv test_main.py

format:
	#black *.py

run:
	#python app.py

run-uvicorn:
	#uvicorn main:app --reload

killweb:
	#sudo killall uvicorn

lint:
	#pylint --disable=R,C main.py
deploy:
	aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 185183796631.dkr.ecr.us-east-2.amazonaws.com
	docker build -t ecs-demo .
	docker tag ecs-demo:latest 185183796631.dkr.ecr.us-east-2.amazonaws.com/ecs-demo:latest
	docker push 185183796631.dkr.ecr.us-east-2.amazonaws.com/ecs-demo:latest
all: install lint
