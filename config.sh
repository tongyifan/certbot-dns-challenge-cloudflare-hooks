CLOUDFLARE_API_TOKEN=<input-your-api-token-here>

CHALLENGE_PREFIX="_acme-challenge"
CHALLENGE_DOMAIN="${CHALLENGE_PREFIX}.${CERTBOT_DOMAIN}"

CLOUDFLARE_ZONE=$(curl -X GET "https://api.cloudflare.com/client/v4/zones?name=${CERTBOT_DOMAIN}" \
     -H "Authorization: Bearer ${CLOUDFLARE_API_TOKEN}" \
     -H "Content-Type: application/json" -s | jq -r '.result[0].id')
