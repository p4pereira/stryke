# Stryke

Painel web compartilhado para acompanhar uma coleta de componentes com meta fixa de 1.000. O arquivo `index.html` contém a interface responsiva e a lógica do cliente.

## Recursos

- Contador de componentes, total acumulado, quanto falta e barra de progresso.
- Registro de quantidades inteiras com atalhos de +1, +5, +10, +25 e +50.
- Histórico compartilhado com observação, edição e exclusão de cada adição.
- Atualização automática a cada cinco segundos.

## Ativar o compartilhamento

Antes de usar o novo painel, aplique manualmente `supabase/migrations/202611110001_component_additions.sql` no SQL Editor do projeto Supabase.

A migração só cria uma tabela e suas políticas RLS. Não altera nem exclui as tabelas, funções ou dados financeiros existentes. Esses dados legados permanecem intactos; a nova contagem começa em zero porque valores monetários não permitem inferir quantidades de componentes.

O site usa a chave publishable no navegador. A tabela nova permite acesso público de leitura e gerenciamento, seguindo o modelo de espaço compartilhado do projeto.

Site: https://p4pereira.github.io/stryke/
Repositório: https://github.com/p4pereira/stryke
