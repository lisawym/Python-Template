install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	@echo "Running pytest..."
	pytest -vv --cov=src --cov=lib --ignore=lib/__init__.py mytest/

format:	
	black --include lib/*.py mytest/*.py src/*.py 

lint:
	ruff check .

refactor: format lint

		
all: install lint test format
