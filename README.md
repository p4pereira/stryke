# Stryke

Painel web compartilhado para acompanhar uma coleta de componentes com meta geral fixa de 1.000, meta semanal configurável e participantes do farm.

## Recursos

- Total acumulado, restante e progresso em relação à meta de 1.000.
- Meta semanal editável, sem valor inicial até o grupo definir o total.
- Cadastro e edição de participantes, com soma por pessoa.
- Adições atribuídas a uma pessoa, com histórico editável e atalhos de quantidade.
- Sincronização dos dados pelo Supabase.

## Corrigir sincronização / migrar o banco

No SQL Editor do projeto Supabase, aplique `supabase/migrations/202611110003_sync_schema_recovery.sql`. Essa migração de recuperação pode ser executada mesmo quando as migrações anteriores foram aplicadas, não foram aplicadas ou pararam parcialmente.

Ela cria apenas tabelas/colunas ausentes, completa políticas ausentes e preserva todos os registros já existentes. Adições antigas mantêm sua quantidade e observação; como não tinham participante, ficam sem pessoa atribuída até serem editadas. A meta semanal começa sem valor definido.

Não apague ou recrie tabelas nem execute limpeza de dados.
