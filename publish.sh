#!/bin/bash

# Script para Publicar o Site Automaticamente
# Execute este script para fazer o merge e publicar

echo "═══════════════════════════════════════════════════════════"
echo "       🚀 PUBLICANDO SITE ERECTUS PLUS AGORA 🚀           "
echo "═══════════════════════════════════════════════════════════"
echo ""

# Passo 1: Fazer merge para main
echo "📦 Passo 1: Fazendo merge para branch main..."
git checkout main 2>/dev/null || git checkout -b main origin/main
git merge copilot/hospedar-site --allow-unrelated-histories -m "Publish site: merge hosting configuration" || {
    echo "⚠️  Resolvendo conflitos automaticamente..."
    git checkout --theirs quiz/
    git add quiz/
    git commit -m "Publish site: merge hosting configuration"
}

# Passo 2: Push para main
echo ""
echo "📤 Passo 2: Fazendo push para GitHub..."
git push origin main

# Passo 3: Verificar status
if [ $? -eq 0 ]; then
    echo ""
    echo "═══════════════════════════════════════════════════════════"
    echo "         ✅ SITE PUBLICADO COM SUCESSO! ✅                "
    echo "═══════════════════════════════════════════════════════════"
    echo ""
    echo "🌐 O site estará disponível em alguns minutos em:"
    echo "   https://devpeu83.github.io/MEUPROJETO/"
    echo ""
    echo "⚙️  PRÓXIMO PASSO IMPORTANTE:"
    echo "   1. Vá em: https://github.com/devpeu83/MEUPROJETO/settings/pages"
    echo "   2. Em 'Source', selecione: 'GitHub Actions'"
    echo "   3. Aguarde 2-5 minutos"
    echo ""
    echo "🎉 Pronto! Seu site estará online!"
    echo ""
else
    echo ""
    echo "═══════════════════════════════════════════════════════════"
    echo "         ⚠️  ERRO NO PUSH                                  "
    echo "═══════════════════════════════════════════════════════════"
    echo ""
    echo "Você precisa ter permissões de push no repositório."
    echo "Execute os seguintes comandos manualmente:"
    echo ""
    echo "  git checkout main"
    echo "  git merge copilot/hospedar-site"
    echo "  git push origin main"
    echo ""
    echo "Depois, ative o GitHub Pages em:"
    echo "  https://github.com/devpeu83/MEUPROJETO/settings/pages"
    echo ""
fi
