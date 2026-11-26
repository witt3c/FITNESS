-- Run in Supabase SQL Editor. One versioned snapshot per authenticated user.
create table if not exists public.fitness_state (
 user_id uuid primary key references auth.users(id) on delete cascade,
 data jsonb not null check (jsonb_typeof(data) = 'object'),
 revision bigint not null default 1,
 updated_at timestamptz not null default now()
);
alter table public.fitness_state enable row level security;
revoke all on public.fitness_state from anon;
grant select, insert, update on public.fitness_state to authenticated;
drop policy if exists own_select on public.fitness_state;
create policy own_select on public.fitness_state for select to authenticated using (auth.uid() = user_id);
drop policy if exists own_insert on public.fitness_state;
create policy own_insert on public.fitness_state for insert to authenticated with check (auth.uid() = user_id);
drop policy if exists own_update on public.fitness_state;
create policy own_update on public.fitness_state for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
