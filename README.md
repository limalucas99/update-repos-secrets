# 🔐 Atualizador de Secrets para Múltiplos Repositórios GitHub

Este script Bash automatiza a atualização de múltiplos secrets (`GitHub Actions secrets`) em vários repositórios do GitHub ao mesmo tempo, usando o GitHub CLI (`gh`).

---

## 📌 Funcionalidade

- Lê uma lista de repositórios e secrets do arquivo `.env`
- Cria/Atualiza essas secrets em todos os repositórios indicados via `gh secret set`

---

## ⚙️ Requisitos

- Bash shell
- GitHub CLI instalado e autenticado (`gh auth login`)
- Permissões adequadas para alterar as secrets dos repositórios alvo
- Um arquivo `.env` na raíz do projeto indicando quais são os repositórios e as secrets

---

## 🧪 Exemplo de `.env`

```env
# Lista de repositórios (separados por vírgula)
REPOS="limalucas99/repo1,limalucas99/repo2,limalucas99/repo3"

# Lista de secrets no formato NOME=VALOR (também separados por vírgula)
SECRETS="SECRET1=valor1,SECRET2=valor2,SECRET3=valor3,SECRET4=valor4"
```

> ✅ Use aspas se houver espaços ou caracteres especiais.

---

## 🚀 Como executar

### ✅ Linux (Debian, Ubuntu, Arch, Fedora, etc.)

1. Dê permissão de execução:

```bash
chmod +x update-secrets.sh
```

2. Execute o script:

```bash
./update-secrets.sh
```

---

### 🪟 Windows

Você pode usar:

- **Git Bash** (recomendado)
- **WSL** (Windows Subsystem for Linux)

> ⚠️ O terminal do CMD/PowerShell **não funciona**, pois não interpreta Bash corretamente.

1. Abra o **Git Bash**
2. Execute:

```bash
./update-secrets.sh
```
---

## 👨‍💻 Autor

**Lucas Lima** — Engenheiro de Software  
[GitHub @limalucas99](https://github.com/limalucas99)

