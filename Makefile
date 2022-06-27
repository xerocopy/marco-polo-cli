install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_cli.py

lint:
	#pylint --disable=R,C, no-value-for-parameter cli.py
	pylint --disable=R,C, cli.py
	#pylint: disable = no-value-for-parameter   # Disables the pylint check for the next line
	
all: install lint test