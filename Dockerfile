# Dockerfile

FROM python:3.11.2-slim-bullseye AS builder

RUN apt-get update && \
    apt-get upgrade --yes

RUN useradd --create-home peyton
USER peyton
WORKDIR /home/peyton

ENV VIRTUALENV=/home/peyton/venv
RUN python3 -m venv $VIRTUALENV
ENV PATH="$VIRTUALENV/bin:$PATH"

COPY --chown=peyton pyproject.toml constraints.txt ./

RUN python -m pip install --upgrade pip setuptools && \
    python -m pip install --no-cache-dir -c constraints.txt ".[dev]"

COPY --from=builder /home/realpython/dist/page_tracker*.whl /home/realpython

