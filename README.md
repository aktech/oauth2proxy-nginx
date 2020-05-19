# OAuth2Proxy-Nginx

OAuth2Proxy running with nginx
https://oauth2-proxy.github.io/oauth2-proxy/

## Prerequisite

Create a Google OAuth client and fill in the client_id and client_secret
in OAUTH2_ID, OAUTH2_SECRET in `.env` respectively. In Authorized redirect URIs
write: http://localhost/oauth2/callback

## Installation and Setup

* Install Docker and `docker-compose` and run the following command.

```bash
docker-compose up
```
