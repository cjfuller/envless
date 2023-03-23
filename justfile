lint:
    ruff .

fix: format
    ruff . --fix

format:
    black .

type-check:
    mypy envless

test:
    PYTHONPATH=. python tests/basic_deps_test.py
    PYTHONPATH=. python tests/native_deps_test.py

check: lint format type-check
