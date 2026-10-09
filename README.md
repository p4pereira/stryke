# Stryke

Painel web de metas financeiras, publicado no GitHub Pages. O arquivo `index.html` reúne a interface, o estilo e a lógica do cliente.

## Dados compartilhados

O site grava saldo, metas e valores guardados em um projeto Supabase. Todos que acessam o link público conseguem visualizar e editar o mesmo conjunto de dados. A aplicação sincroniza atualizações entre visitantes a cada poucos segundos.

Projeto Supabase: região South America (São Paulo). O cliente usa uma chave publishable no navegador e as políticas de Row Level Security permitem o acesso público definido para este espaço compartilhado.

Site: https://p4pereira.github.io/stryke/
Repositório: https://github.com/p4pereira/stryke
