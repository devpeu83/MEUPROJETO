# 🌐 Configuração de Domínio Customizado

## ✅ Seu Domínio Está Pronto!

Este guia mostra como configurar seu domínio customizado para o site Erectus Plus em diferentes plataformas de hospedagem.

---

## 📋 Índice

1. [Configuração no GitHub Pages](#github-pages)
2. [Configuração no Netlify](#netlify)
3. [Configuração no Vercel](#vercel)
4. [Configuração de DNS](#configuração-de-dns)
5. [Verificação](#verificação)
6. [Troubleshooting](#troubleshooting)

---

## 🎯 GitHub Pages

### Passo 1: Configurar o arquivo CNAME

1. **Edite o arquivo `CNAME`** na raiz do projeto:
   ```
   www.seudominio.com.br
   ```
   OU
   ```
   seudominio.com.br
   ```

2. **Commit e push** do arquivo:
   ```bash
   git add CNAME
   git commit -m "Add custom domain"
   git push origin main
   ```

### Passo 2: Configurar no GitHub

1. Vá em: https://github.com/devpeu83/MEUPROJETO/settings/pages
2. Na seção **"Custom domain"**, digite seu domínio
3. Clique em **"Save"**
4. Aguarde a verificação DNS
5. ✅ Marque a opção **"Enforce HTTPS"** (após DNS propagar)

### Passo 3: Configurar DNS (no seu provedor de domínio)

Escolha uma das opções:

#### Opção A: Usar www (Recomendado)

Adicione um registro CNAME:

```
Tipo: CNAME
Nome: www
Valor: devpeu83.github.io
TTL: 3600
```

E um registro A (apex domain):
```
Tipo: A
Nome: @
Valor: 185.199.108.153
```

Adicione também estes registros A:
```
185.199.109.153
185.199.110.153
185.199.111.153
```

#### Opção B: Sem www (apenas domínio raiz)

Adicione 4 registros A:

```
Tipo: A
Nome: @
Valor: 185.199.108.153

Tipo: A
Nome: @
Valor: 185.199.109.153

Tipo: A
Nome: @
Valor: 185.199.110.153

Tipo: A
Nome: @
Valor: 185.199.111.153
```

---

## 🔷 Netlify

### Passo 1: Adicionar Domínio

1. Acesse seu site no Netlify Dashboard
2. Vá em **"Domain settings"**
3. Clique em **"Add custom domain"**
4. Digite seu domínio: `www.seudominio.com.br`
5. Clique em **"Verify"** e depois **"Add domain"**

### Passo 2: Configurar DNS

O Netlify fornecerá instruções específicas, geralmente:

**Para www:**
```
Tipo: CNAME
Nome: www
Valor: seu-site.netlify.app
```

**Para domínio raiz:**
```
Tipo: A
Nome: @
Valor: 75.2.60.5
```

### Passo 3: Habilitar HTTPS

1. Ainda em "Domain settings"
2. Aguarde o DNS propagar (pode levar até 24h)
3. Clique em **"Verify DNS configuration"**
4. Clique em **"Provision certificate"** para HTTPS automático

---

## ⚡ Vercel

### Passo 1: Adicionar Domínio

1. Acesse seu projeto no Vercel Dashboard
2. Vá na aba **"Settings"**
3. Clique em **"Domains"**
4. Digite seu domínio e clique em **"Add"**

### Passo 2: Configurar DNS

O Vercel mostrará as configurações necessárias:

**Para www:**
```
Tipo: CNAME
Nome: www
Valor: cname.vercel-dns.com
```

**Para domínio raiz:**
```
Tipo: A
Nome: @
Valor: 76.76.19.19
```

### Passo 3: Verificar

- O Vercel verificará automaticamente o DNS
- HTTPS é configurado automaticamente
- Status mudará para "Valid" quando tudo estiver OK

---

## 🔧 Configuração de DNS

### Provedores Populares no Brasil

#### Registro.br

1. Acesse: https://registro.br/
2. Login na sua conta
3. Vá em "Meus Domínios"
4. Clique no domínio desejado
5. Vá em "Editar Zona DNS"
6. Adicione os registros conforme instruções acima

#### GoDaddy

1. Login em: https://godaddy.com/
2. Vá em "Meus Produtos"
3. Clique em "DNS" ao lado do domínio
4. Adicione os registros conforme instruções acima

#### Hostinger

1. Login em: https://hostinger.com.br/
2. Vá em "Domínios"
3. Clique no domínio
4. Vá em "DNS/Nameservers"
5. Adicione os registros conforme instruções acima

#### Locaweb

1. Login em: https://www.locaweb.com.br/
2. Vá em "Painel de Controle"
3. Clique em "Domínios"
4. Selecione o domínio
5. Clique em "Gerenciar DNS"
6. Adicione os registros conforme instruções acima

---

## ✅ Verificação

### 1. Verificar propagação DNS

Use estas ferramentas online:

- https://dnschecker.org/
- https://www.whatsmydns.net/

Digite seu domínio e verifique se os registros estão corretos mundialmente.

### 2. Testar o site

```bash
# No terminal
curl -I https://www.seudominio.com.br
```

Deve retornar status `200 OK`

### 3. Testar HTTPS

Acesse: https://www.ssllabs.com/ssltest/

Digite seu domínio e verifique a configuração SSL.

---

## 🔍 Troubleshooting

### Problema: "DNS_PROBE_FINISHED_NXDOMAIN"

**Causa:** DNS não configurado ou não propagou ainda

**Solução:**
- Verifique se os registros DNS estão corretos
- Aguarde 24-48 horas para propagação completa
- Use `nslookup seudominio.com.br` para verificar

### Problema: "Certificate Error" ou "Não Seguro"

**Causa:** HTTPS ainda não configurado

**Solução:**
- GitHub Pages: Aguarde após DNS propagar, depois marque "Enforce HTTPS"
- Netlify: Clique em "Provision certificate"
- Vercel: Aguarde, é automático

### Problema: Site mostra erro 404

**Causa:** Domínio configurado mas site não deployado

**Solução:**
- Verifique se fez merge do PR
- Verifique se GitHub Actions rodou com sucesso
- Verifique em Actions: https://github.com/devpeu83/MEUPROJETO/actions

### Problema: Domínio com www não funciona (ou vice-versa)

**Causa:** Falta configurar redirecionamento

**Solução:**

**GitHub Pages:**
- Configure ambos os registros (A e CNAME)
- O GitHub redireciona automaticamente

**Netlify:**
- Em Domain settings, adicione ambas as versões
- Netlify redireciona automaticamente

**Vercel:**
- Adicione ambos os domínios
- Configure "Redirect" para o domínio principal

---

## 📊 Checklist Completo

### Antes de Começar
- [ ] Domínio registrado e ativo
- [ ] Acesso ao painel de DNS do domínio
- [ ] Site já deployado e funcionando na URL padrão

### Configuração
- [ ] Arquivo CNAME criado (se usar GitHub Pages)
- [ ] Domínio adicionado na plataforma de hospedagem
- [ ] Registros DNS configurados no provedor
- [ ] Aguardado propagação DNS (24-48h)

### Verificação
- [ ] DNS propagado mundialmente (dnschecker.org)
- [ ] Site acessível pelo domínio customizado
- [ ] HTTPS funcionando (cadeado verde)
- [ ] Redirecionamento www ↔ sem www funcionando
- [ ] Site carrega completamente (imagens, CSS, JS)

### Pós-Configuração
- [ ] Atualizar links nas redes sociais
- [ ] Atualizar Google Search Console
- [ ] Atualizar Google Analytics
- [ ] Atualizar marketing materials

---

## 📱 Exemplo Completo

Suponha que seu domínio seja: **erectusplus.com.br**

### No arquivo CNAME:
```
www.erectusplus.com.br
```

### No DNS (Registro.br):

| Tipo | Nome | Valor | TTL |
|------|------|-------|-----|
| A | @ | 185.199.108.153 | 3600 |
| A | @ | 185.199.109.153 | 3600 |
| A | @ | 185.199.110.153 | 3600 |
| A | @ | 185.199.111.153 | 3600 |
| CNAME | www | devpeu83.github.io | 3600 |

### No GitHub:
1. Settings → Pages → Custom domain: `www.erectusplus.com.br`
2. Aguardar verificação
3. Marcar "Enforce HTTPS"

### Resultado:
- ✅ http://erectusplus.com.br → redireciona para https://www.erectusplus.com.br
- ✅ https://www.erectusplus.com.br → site carrega com HTTPS

---

## 🆘 Suporte Adicional

### Documentação Oficial:

- **GitHub Pages:** https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site
- **Netlify:** https://docs.netlify.com/domains-https/custom-domains/
- **Vercel:** https://vercel.com/docs/concepts/projects/domains

### Vídeos Tutoriais:

- YouTube: "Como configurar domínio no GitHub Pages"
- YouTube: "Netlify custom domain setup"
- YouTube: "Vercel custom domain"

---

## 💡 Dicas Importantes

1. **Sempre use HTTPS** - É essencial para SEO e segurança
2. **Aguarde a propagação** - DNS pode levar até 48h
3. **Teste em modo anônimo** - Cache pode mostrar versão antiga
4. **Mantenha TTL baixo** - Use 3600 (1h) durante configuração inicial
5. **Backup dos registros** - Anote os valores antes de mudar

---

## ✨ Pronto!

Após seguir este guia, seu site estará acessível no seu domínio customizado com HTTPS habilitado!

**URL antiga:** https://devpeu83.github.io/MEUPROJETO/  
**URL nova:** https://www.seudominio.com.br

---

*Última atualização: 01/02/2026*
