# Use the official HashiCorp Vault image
FROM hashicorp/vault:latest

# Set Vault to development mode (not recommended for production)
ENV VAULT_DEV_ROOT_TOKEN_ID="root"

# Expose the default Vault port
EXPOSE 8200

# Command to start Vault server in development mode
CMD ["server", "-dev"]
