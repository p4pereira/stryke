-- Adiciona participantes, meta semanal compartilhada e associação do histórico.
-- A tabela de adições e seus registros existentes permanecem intactos.
create table if not exists public.stryke_farmers (
  id uuid primary key default gen_random_uuid(),
  name text not null unique check (char_length(trim(name)) between 1 and 70),
  created_at timestamptz not null default now()
);

alter table public.stryke_farmers enable row level security;
grant select, insert, update, delete on public.stryke_farmers to anon, authenticated;

create policy "Public can read farmers"
  on public.stryke_farmers for select to anon, authenticated using (true);
create policy "Public can add farmers"
  on public.stryke_farmers for insert to anon, authenticated
  with check (char_length(trim(name)) between 1 and 70);
create policy "Public can update farmers"
  on public.stryke_farmers for update to anon, authenticated
  using (true) with check (char_length(trim(name)) between 1 and 70);
create policy "Public can delete farmers"
  on public.stryke_farmers for delete to anon, authenticated using (true);

alter table public.stryke_component_additions
  add column if not exists farmer_id uuid references public.stryke_farmers(id) on delete restrict;

create index if not exists stryke_component_additions_farmer_id_idx
  on public.stryke_component_additions(farmer_id);

create table if not exists public.stryke_collection_settings (
  id boolean primary key default true check (id),
  weekly_target integer check (weekly_target is null or weekly_target > 0),
  updated_at timestamptz not null default now()
);

insert into public.stryke_collection_settings (id, weekly_target)
values (true, null)
on conflict (id) do nothing;

alter table public.stryke_collection_settings enable row level security;
grant select, insert, update on public.stryke_collection_settings to anon, authenticated;

create policy "Public can read collection settings"
  on public.stryke_collection_settings for select to anon, authenticated using (true);
create policy "Public can set collection settings"
  on public.stryke_collection_settings for insert to anon, authenticated
  with check (id and (weekly_target is null or weekly_target > 0));
create policy "Public can update collection settings"
  on public.stryke_collection_settings for update to anon, authenticated
  using (true) with check (id and (weekly_target is null or weekly_target > 0));
