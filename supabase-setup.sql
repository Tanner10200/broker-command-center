-- Run this once in your Supabase project: SQL Editor -> New Query -> paste -> Run
-- Creates the table the Command Center reads and writes, and locks it down
-- so each signed-in user can only ever see their own data.

create table app_data (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) not null default auth.uid(),
  key text not null,
  value jsonb not null,
  updated_at timestamptz default now(),
  unique(user_id, key)
);

alter table app_data enable row level security;

create policy "Users can manage their own data"
  on app_data
  for all
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
