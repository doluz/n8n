FROM n8nio/n8n:latest

RUN apt-get update && apt-get install -y --no-install-recommends tini && rm -rf /var/lib/apt/lists/*

ENV TINI_SUBREAPER=1

ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["n8n"]