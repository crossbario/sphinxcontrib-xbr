clean:
	-rm -rf ./dist
	-rm -rf ./build
	-find . -name "__pycache__" -type d -exec rm -rf {} \;

requirements:
	pip install --no-cache --upgrade pip
	pip install --no-cache --upgrade -r requirements-dev.txt

test:
	tox .
