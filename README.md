# Les threads détestent Vernier

## Instal gems

```bash
gem install concurrent-ruby
gem install sinatra
gem install excon
```

## Start API

```bash
ruby server/main.rb
```

## Démo 1

```bash
ruby demo-1-1-create-thread.rb
```

```bash
ruby demo-1-2-1-multithread.rb
```

```bash
ruby demo-1-2-2-multithread.rb
```

## Démo 2

```bash
ruby demo-2-1-thread-pool.rb
```

```bash
ruby demo-2-2-thread-pool.rb
```

## Démo Vernier

```bash
vernier run -- ruby demo-3-profiling.rb
```

Pour ouvrir le profile : https://vernier.prof/