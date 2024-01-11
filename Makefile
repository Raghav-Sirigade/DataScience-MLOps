install:
	pip install --upgrade pip && \
		pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py
	#	python -m pytest --nbval data_science_notebook.ipynb

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

all: install lint test