# Stryke

Painel compartilhado para acompanhar o farm de componentes por semana e por participante.

## Recursos

- Um contador com o total acumulado na semana selecionada.
- Seletor para acessar semanas anteriores com adições registradas.
- Progresso individual até 1.000 componentes: vermelho antes da meta e verde ao alcançá-la.
- Cadastro de participantes e adições com responsável, quantidade e observação.
- Histórico de adições da semana selecionada, com edição e exclusão.
- Sincronização compartilhada pelo Supabase.

As semanas são agrupadas automaticamente de segunda a domingo pela data das adições. Ao selecionar uma semana anterior, o contador, o progresso das pessoas e o histórico mostram os dados daquele período.

## Migração do banco

Para configurar um banco novo, aplique as migrações 003 e 004 em ordem. Ambas são aditivas e preservam registros; não apague nem recrie tabelas.

Site: https://p4pereira.github.io/stryke/
Repositório: https://github.com/p4pereira/stryke
