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
    PYTHONPATH=. python tests/cli_args_test.py a b c

check: lint format type-check

publish:
    poetry publish --build \
        -u __token__ -p `op read "op://Personal/pypi api token/password"`

