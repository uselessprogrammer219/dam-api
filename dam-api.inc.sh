# Section start: exit codes
EXIT_OK=0
ERROR_USERNAME_UNSET=1
ERROR_PASSWORD_UNSET=2
# Section end: exit codes

# Variable initialisation
USERPASS_BASE64=""
REQUEST_HEADER=""

# Construct login request header
construct_login_request_header() {
    USERPASS_RAW="${DAM_API_USERNAME}:${DAM_API_PASSWORD}"
    USERPASS_BASE64=$(echo -n "$USERPASS_RAW" | base64)
    REQUEST_HEADER="Authorization: Basic $USERPASS_BASE64"
}

# Call construct_login_request_header function
construct_login_request_header

# Print REQUEST_HEADER
echo "$REQUEST_HEADER"
