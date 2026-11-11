# Stryke

Painel compartilhado para acompanhar o farm de componentes, com meta de 1.000 por semana, participantes e histórico.

## Recursos

- Contador semanal automático de 0 a 1.000 componentes e barra de progresso.
- Botão para encerrar a semana atual e abrir a próxima com contador zerado.
- Total acumulado preservado entre semanas.
- Cadastro de participantes e total farmado por pessoa na semana ativa.
- Histórico de adições ligado à pessoa e à semana, com edição e exclusão.
- Sincronização dos dados pelo Supabase.

## Migração do banco

Aplique `supabase/migrations/202611110004_weekly_farm_sessions.sql` no SQL Editor do projeto Supabase. Ela cria o histórico de semanas e adiciona uma referência de semana às adições existentes. Os registros anteriores são preservados; adições antigas permanecem identificadas como anteriores às semanas e não entram no contador novo.

A abertura da semana é feita em uma única transação no banco, para fechar a anterior e criar a nova de forma segura. Não apague nem recrie tabelas.

Site: https://p4pereira.github.io/stryke/
Repositório: https://github.com/p4pereira/stryke
