# Postgres Tools

## Getting Started

1. Checkout this repo on a Debian machine
2. Create a `.pgpass` file in your `$HOME` directory
3. Make it readable and writable by your user only : `chmod 600 .pgpass`
4. For each postgres database you want to manage :
    1. Create a file `<environment_name>.sh` in the `conf` directory
    2. Fill it with the appropriate configuration
    3. Add a line in the `.pgpass` file
5. Run the script you want with the `<environment_name>` as parameter :
```bash
./pgbackup.sh <environment_name>
./pgrestore.sh <environment_name> <filename>
./pgdrop.sh <environment_name>
```

## Additionnal Infos

The `.pgpass` file must be formatted as followed :
  ```
  <host>:<port>:<database_name>:<username>:<password>
  ```

To manage automatic executions based on CRON, use the following command :
```bash
crontab -e
```