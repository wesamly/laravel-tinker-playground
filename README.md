# Laravel Tinker Playground

Laravel Tinker Playground is a project that allows you to collect PHP code snippets and run them through a configured Laravel project using the Tinker command-line tool. It provides a convenient way to execute Laravel code without the need to manually copy and paste code each time your Laravel codebase is updated.

## Installation

Run the following command, which create a new project via the Composer `create-project` command:

```
REPO='{"type":"package","package":{"name":"wesamly/laravel-tinker-playground","version":"1.0.0","source":{"url":"https://github.com/wesamly/laravel-tinker-playground","type":"git","reference":"origin/main"}}}'
composer create-project --remove-vcs --no-install --repository $REPO wesamly/laravel-tinker-playground playground3
```

Copy the `.env.example` file to `.env` and update `LARAVEL_DIR` value.

## Usage

1. Add the Laravel code snippets you want to run to a file, for example, example.php.

2. Run the following command to execute the code snippets:

```bash
./tinker.sh example.php
```

## License

Laravel Tinker Playground is open-source software licensed under the MIT License.