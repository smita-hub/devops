
setup:
	python3 -m venv ~/.devops

install:
	
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	
lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint test
