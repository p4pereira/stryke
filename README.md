# Stryke

Painel web compartilhado para acompanhar uma coleta de componentes com meta geral fixa de 1.000, meta semanal configurável e participantes do farm.

## Recursos

- Total acumulado, restante e progresso em relação à meta de 1.000.
- Meta semanal editável, sem valor inicial até o grupo definir o total.
- Cadastro e edição de participantes, com soma por pessoa.
- Adições de componentes atribuídas a uma pessoa, com histórico editável e atalhos de quantidade.
- Sincronização dos dados pelo Supabase.

## Migração do banco

Aplique manualmente `supabase/migrations/202611110002_weekly_goal_and_farmers.sql` no SQL Editor do Supabase. A migração cria as tabelas de participantes e configurações e adiciona uma coluna opcional de participante ao histórico. Os registros antigos são mantidos e ficam sem pessoa atribuída até serem editados. A meta semanal inicia sem total definido.

Não apague ou recrie as tabelas anteriores. O esquema continua compartilhado com acesso público via RLS, seguindo o modelo original do painel.
