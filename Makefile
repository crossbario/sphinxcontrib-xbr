clean:
	-pip uninstall -y sphinxcontrib-xbr
	-rm -rf ./dist
	-rm -rf ./build
	-find . -name "__pycache__" -type d -exec rm -rf {} \;
	-rm -rf ./.eggs
	-rm -rf ./.mypy_cache
	-rm -rf ./*.egg-info

requirements:
	pip install --no-cache --upgrade pip
	pip install --no-cache --upgrade -r requirements-dev.txt

install:
	pip install --no-cache --upgrade -e .
	pip show sphinxcontrib-xbr

test:
	tox .

# auto-format code - WARNING: this my change files, in-place!
autoformat:
	yapf -ri sphinxcontrib
