# backup

## Set-up steps

1. Clone and set up this repository.

```
git clone https://github.com/joyceiphone/backup.git
cd backup
```

2. Create a directory

```
mkdir [dir]
cd [dir]
```

3. In this directory, you may create several files.

4. Run the script
example:

```
./myscript.sh test1 gzip test
```

5. Encode the compressed file using openssl

```
openssl aes-256-cbc -a -salt -in myscript.sh -out encoded.enc
```

