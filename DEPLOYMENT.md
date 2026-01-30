# Como Fazer Deploy do Site

Este guia detalha como fazer o deploy (implantação) do site Erectus Plus em diferentes plataformas de hospedagem.

## 📋 Pré-requisitos

- Conta no GitHub (para todas as opções)
- Código-fonte do site no repositório GitHub
- Navegador web atualizado

---

## 🚀 Opção 1: GitHub Pages (RECOMENDADO)

GitHub Pages é a opção mais simples e gratuita para hospedar sites estáticos.

### Passo a Passo:

1. **Acesse o Repositório no GitHub**
   - Vá para: https://github.com/devpeu83/MEUPROJETO

2. **Abra as Configurações**
   - Clique na aba **"Settings"** (Configurações)
   - No menu lateral esquerdo, clique em **"Pages"**

3. **Configure o Source (Fonte)**
   - Em **"Build and deployment"**, encontre a seção **"Source"**
   - Selecione: **"GitHub Actions"**
   - O arquivo de workflow já está configurado em `.github/workflows/deploy.yml`

4. **Aguarde o Deploy**
   - Vá para a aba **"Actions"** no topo do repositório
   - Você verá o workflow **"Deploy to GitHub Pages"** em execução
   - Aguarde alguns minutos até o status ficar verde (✓)

5. **Acesse Seu Site**
   - Após o deploy completar, seu site estará disponível em:
   - **URL:** `https://devpeu83.github.io/MEUPROJETO/`
   - Você pode encontrar a URL também em Settings → Pages

### Atualizações Automáticas:

Cada vez que você fizer um push para a branch `main`, o site será automaticamente atualizado!

### Método Alternativo (Sem GitHub Actions):

Se preferir não usar GitHub Actions:

1. Em Settings → Pages
2. Source: Selecione **"Deploy from a branch"**
3. Branch: Selecione **"main"**
4. Folder: Selecione **"/ (root)"**
5. Clique em **"Save"**

---

## 🌐 Opção 2: Netlify

Netlify oferece deploy rápido com recursos avançados como preview de PRs.

### Passo a Passo:

1. **Criar Conta no Netlify**
   - Acesse: https://www.netlify.com/
   - Clique em **"Sign up"** (Cadastrar)
   - Escolha **"Sign up with GitHub"**
   - Autorize o Netlify a acessar seu GitHub

2. **Importar o Projeto**
   - No dashboard do Netlify, clique em **"Add new site"**
   - Escolha **"Import an existing project"**
   - Selecione **"Deploy with GitHub"**

3. **Selecionar o Repositório**
   - Procure e selecione: **"devpeu83/MEUPROJETO"**
   - Clique em **"Select"**

4. **Configurar o Deploy**
   - **Branch to deploy:** `main`
   - **Build command:** deixe em branco
   - **Publish directory:** `.` (ponto)
   - O arquivo `netlify.toml` já configura tudo automaticamente!

5. **Deploy!**
   - Clique em **"Deploy site"**
   - Aguarde alguns minutos

6. **Acesse Seu Site**
   - Você receberá uma URL tipo: `https://random-name-123456.netlify.app`
   - Você pode personalizar o nome em: Site settings → Change site name

### Recursos Extras do Netlify:

- **Domínio Customizado:** Adicione seu próprio domínio
- **Preview de PRs:** Cada Pull Request gera um preview automático
- **Formulários:** Netlify Forms para capturar dados
- **Analytics:** Estatísticas de acesso

---

## ⚡ Opção 3: Vercel

Vercel oferece performance otimizada e deploy instantâneo.

### Passo a Passo:

1. **Criar Conta no Vercel**
   - Acesse: https://vercel.com/
   - Clique em **"Sign Up"** (Cadastrar)
   - Escolha **"Continue with GitHub"**
   - Autorize o Vercel

2. **Importar Projeto**
   - No dashboard, clique em **"Add New..."**
   - Selecione **"Project"**
   - Clique em **"Import"** ao lado de **"devpeu83/MEUPROJETO"**

3. **Configurar Deploy**
   - **Project Name:** deixe o padrão ou personalize
   - **Framework Preset:** Other
   - **Build Command:** deixe em branco
   - **Output Directory:** deixe em branco
   - O arquivo `vercel.json` já está configurado!

4. **Deploy**
   - Clique em **"Deploy"**
   - Aguarde o deploy (geralmente muito rápido, 30-60 segundos)

5. **Acesse Seu Site**
   - URL: `https://meuprojeto.vercel.app` ou similar
   - Você pode adicionar um domínio customizado nas configurações

### Recursos Extras do Vercel:

- **Edge Network:** Performance otimizada globalmente
- **Preview Deployments:** Preview automático de branches
- **Analytics:** Analytics embutido
- **Domínios:** Fácil configuração de domínios customizados

---

## 🔄 Comparação Rápida

| Recurso | GitHub Pages | Netlify | Vercel |
|---------|--------------|---------|--------|
| **Preço** | Gratuito | Gratuito | Gratuito |
| **Deploy Automático** | ✅ | ✅ | ✅ |
| **HTTPS** | ✅ | ✅ | ✅ |
| **Domínio Customizado** | ✅ | ✅ | ✅ |
| **Preview de PRs** | ❌ | ✅ | ✅ |
| **Performance** | Boa | Ótima | Excelente |
| **Analytics** | ❌ | ✅ Pago | ✅ Pago |
| **Facilidade** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |

---

## 🎯 Qual Escolher?

- **GitHub Pages**: Melhor para simplicidade máxima e integração direta com GitHub
- **Netlify**: Melhor para recursos extras como formulários e redirects
- **Vercel**: Melhor para performance máxima e experiência de desenvolvedor

---

## 🔧 Testando Localmente Antes do Deploy

Sempre teste seu site localmente antes de fazer deploy:

```bash
# Navegue até a pasta do projeto
cd MEUPROJETO

# Inicie um servidor local (Python)
python -m http.server 8000

# Ou com Node.js
npx serve .

# Abra no navegador
# http://localhost:8000
```

---

## 🆘 Problemas Comuns

### Erro 404 ao acessar o site

- **GitHub Pages:** Verifique se o workflow foi executado com sucesso em Actions
- **Netlify/Vercel:** Verifique se o diretório de publicação está correto

### Imagens não aparecem

- Verifique se os caminhos das imagens estão corretos
- Todas as imagens devem estar na pasta `assets/images/`

### Deploy falhou

- Verifique os logs na aba Actions (GitHub) ou nos dashboards (Netlify/Vercel)
- Certifique-se de que não há erros no código HTML/CSS/JS

---

## 📞 Suporte

- **GitHub Pages:** https://docs.github.com/en/pages
- **Netlify:** https://docs.netlify.com/
- **Vercel:** https://vercel.com/docs

---

**✅ Pronto! Seu site estará online em poucos minutos!**
