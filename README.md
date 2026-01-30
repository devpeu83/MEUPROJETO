# Erectus Plus - Website

Este é o website do Erectus Plus, incluindo um quiz interativo sobre desempenho sexual masculino.

## 📁 Estrutura do Projeto

```
MEUPROJETO/
├── index.html              # Página inicial (redireciona para o quiz)
├── quiz/                   # Pasta contendo o quiz
│   ├── index.html          # Quiz principal
│   └── ...                 # Outros arquivos relacionados
├── *.png, *.jpg, *.webp   # Imagens e assets
├── *.pdf                  # Documentos
└── configurações de deploy # netlify.toml, vercel.json
```

## 🚀 Como Hospedar o Site

### Opção 1: GitHub Pages (Gratuito e Simples)

1. **Ativar GitHub Pages:**
   - Vá para o repositório no GitHub
   - Clique em "Settings" (Configurações)
   - No menu lateral, clique em "Pages"
   - Em "Source", selecione a branch `main` (ou a branch desejada)
   - Em "Folder", selecione `/ (root)`
   - Clique em "Save"

2. **Acessar o site:**
   - O site estará disponível em: `https://devpeu83.github.io/MEUPROJETO/`
   - Aguarde alguns minutos para o deploy ser concluído

### Opção 2: Netlify (Mais Recursos)

1. **Deploy via GitHub:**
   - Acesse [netlify.com](https://www.netlify.com/)
   - Faça login/cadastro
   - Clique em "Add new site" → "Import an existing project"
   - Selecione "Deploy with GitHub"
   - Escolha o repositório `devpeu83/MEUPROJETO`
   - Configurações detectadas automaticamente via `netlify.toml`
   - Clique em "Deploy"

2. **Acessar o site:**
   - O Netlify fornecerá uma URL tipo: `https://seu-site.netlify.app`
   - Você pode configurar um domínio customizado nas configurações

### Opção 3: Vercel (Rápido e Moderno)

1. **Deploy via GitHub:**
   - Acesse [vercel.com](https://vercel.com/)
   - Faça login/cadastro com GitHub
   - Clique em "Add New" → "Project"
   - Selecione o repositório `devpeu83/MEUPROJETO`
   - Configurações detectadas automaticamente via `vercel.json`
   - Clique em "Deploy"

2. **Acessar o site:**
   - O Vercel fornecerá uma URL tipo: `https://meuprojeto.vercel.app`
   - Domínio customizado disponível nas configurações

### Opção 4: Outros Serviços de Hospedagem

O site também pode ser hospedado em:
- **Cloudflare Pages**: Similar ao Netlify/Vercel
- **Firebase Hosting**: Google Cloud Platform
- **Surge.sh**: Deploy via linha de comando
- **Render**: Alternativa moderna
- Qualquer servidor web tradicional (Apache, Nginx, etc.)

## 🔧 Desenvolvimento Local

Para testar o site localmente:

1. **Usando Python (se instalado):**
   ```bash
   python -m http.server 8000
   ```
   Acesse: `http://localhost:8000`

2. **Usando Node.js (se instalado):**
   ```bash
   npx serve .
   ```

3. **Abrindo diretamente:**
   - Simplesmente abra o arquivo `index.html` no navegador

## 📝 Notas Importantes

- O site é 100% estático (HTML/CSS/JavaScript)
- Não requer banco de dados ou servidor backend
- Todas as plataformas mencionadas oferecem plano gratuito
- HTTPS é habilitado automaticamente em todas as plataformas

## 🔒 Segurança

Os arquivos de configuração incluem headers de segurança básicos:
- Proteção contra XSS
- Proteção de clickjacking
- Content-Type sniffing protection

## 📱 Responsividade

O site é responsivo e funciona em:
- Desktop
- Tablet
- Mobile

## 🆘 Suporte

Para problemas com deploy:
- GitHub Pages: [Documentação](https://docs.github.com/en/pages)
- Netlify: [Documentação](https://docs.netlify.com/)
- Vercel: [Documentação](https://vercel.com/docs)

---

**Recomendação:** Para máxima simplicidade, use GitHub Pages. Para melhor performance e recursos, use Netlify ou Vercel.
