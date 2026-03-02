FROM n8nio/n8n:latest

# Install tini for Heroku compatibility
RUN apk add --no-cache tini

ENV TINI_SUBREAPER=1

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["n8n"]