#!/bin/bash

# Ativa exportação automática das variáveis
set -a
source .env
set +a

# Verificações básicas
if [[ -z "$REPOS" || -z "$SECRETS" ]]; then
  echo "❌ Variáveis REPOS e SECRETS precisam estar definidas no arquivo .env"
  exit 1
fi

# Converte as strings em arrays (separadas por vírgula)
IFS=',' read -r -a REPO_ARRAY <<< "$REPOS"
IFS=',' read -r -a SECRET_ARRAY <<< "$SECRETS"

echo "🔐 Iniciando atualização de secrets..."

for REPO in "${REPO_ARRAY[@]}"; do
  echo -e "\n📦 Repositório: $REPO"

  for SECRET in "${SECRET_ARRAY[@]}"; do
    NAME="${SECRET%%=*}"
    VALUE="${SECRET#*=}"

    echo "  ➤ Atualizando secret: $NAME..."

    gh secret set "$NAME" \
      --repo "$REPO" \
      --body "$VALUE"

    if [ $? -eq 0 ]; then
      echo "    ✅ Secret '$NAME' atualizada com sucesso"
    else
      echo "    ❌ Erro ao atualizar secret '$NAME'"
    fi
  done
done
