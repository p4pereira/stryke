-- Migração aditiva: mantém os dados financeiros legados intactos.
create table if not exists public.stryke_component_additions (
  id uuid primary key default gen_random_uuid(),
  quantity integer not null check (quantity > 0),
  note text not null default '' check (char_length(note) <= 120),
  created_at timestamptz not null default now()
);

alter table public.stryke_component_additions enable row level security;

grant select, insert, update, delete on public.stryke_component_additions to anon, authenticated;

create policy "Public can read component additions"
  on public.stryke_component_additions for select to anon, authenticated
  using (true);

create policy "Public can add component additions"
  on public.stryke_component_additions for insert to anon, authenticated
  with check (quantity > 0 and char_length(note) <= 120);

create policy "Public can update component additions"
  on public.stryke_component_additions for update to anon, authenticated
  using (true)
  with check (quantity > 0 and char_length(note) <= 120);

create policy "Public can delete component additions"
  on public.stryke_component_additions for delete to anon, authenticated
  using (true);
