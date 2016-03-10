# You2

## Requirements

There are a lot of dependencies, but they're all easy to install via their respective package managers.

### TL;DR

As long as you're running OS X and you have [Homebrew](http://brew.sh) installed, you can get started pretty quickly:

```bash
# Install all the dependencies
brew update
brew install elixir
mix local.hex
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
brew install node
npm install -g broccoli-cli
mix deps.get
npm install

# Create and migrate the database
mix ecto.create && mix ecto.migrate

# Start your Phoenix endpoint
mix phoenix.server
```

### Elixir

Install [Elixir](http://elixir-lang.org) via [Homebrew](http://brew.sh):

```bash
brew update
brew install elixir
```

You can upgrade to the latest version if you have previously installed Elixir via Homebrew:

```bash
brew update
brew unlink elixir
brew install elixir
```

### Hex

Install the [Hex](https://hex.pm) package manager for the Erlang ecosystem:

```bash
mix local.hex
```

### Phoenix

Install the [Phoenix Framework](http://www.phoenixframework.org):

```bash
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
```

### Node.js

Install [Node.js](https://nodejs.org) via [Homebrew](http://brew.sh):

```bash
brew update
brew install node
```

You can upgrade to the latest version if you have previously installed Node.js via Homebrew:

```bash
brew update
brew unlink node
brew install node
```

### Broccoli.js

Install the [Broccoli.js](http://broccolijs.com) asset pipeline:

```bash
npm install -g broccoli-cli
```

### Project Dependencies

Install Elixir dependencies:

```bash
mix deps.get
```

Install Node.js dependencies:

```bash
npm install
```

## Run the App

Create and migrate your database:

```bash
mix ecto.create && mix ecto.migrate
```

Start your Phoenix endpoint:

```bash
mix phoenix.server
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Learn More About Phoenix

- Official website: <http://www.phoenixframework.org>
- Guides: <http://phoenixframework.org/docs/overview>
- Docs: <http://hexdocs.pm/phoenix>
- Mailing list: <http://groups.google.com/group/phoenix-talk>
- Source: <https://github.com/phoenixframework/phoenix>
