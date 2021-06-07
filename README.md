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
example:
```
mkdir test1
cd test1
touch test1.txt
echo 'hello'
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

6. You may read the encoded file

```
cat encoded.enc
```
