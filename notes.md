Day 1: 
ssh -p 2220 bandit0@bandit.labs.overthewire.org
Password found in L0: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If

How to read dashed filename
cat ./-
Password found in L1(bandit1) : 263JGJPfgU6LtdEvgfWU1XP5yac29mFx

How to open spaces in filename
cat ./--spaces\ in\ this\ filename--

Example: cat "my file.txt" or cd "new folder"
Example: cat my\ file.txt
Password found in L2(bandit2) : MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx

How to open hidden file
Once you locate the hidden file, read or edit it by including the dot (.) directly in the file path
bandit3@bandit:~/inhere$ ls -a
.  ..  ...Hiding-From-You
bandit3@bandit:~/inhere$ cat ./...Hiding-From-You
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ

Paswrodd found in L3(bandit3): 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ

Password found in L4(bandit4): 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw


How to find a file : 
human-readable
1033 bytes in size
not executable

Command : find . -readable -size 1033c -perm /222

Password found in L5(bandit5) HWasnPhtq9AVKe0dmk45nxy20cvUa6EG

How to find a file : 
owned by user bandit7
owned by group bandit6
33 bytes in size

Cammand : 
find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null

In Linux, 2>/dev/null hides error messages by sending them to a digital trash can.Here is the exact breakdown of how it works:The Breakdown2 (Standard Error): Linux uses integer IDs for data streams. 0 is input, 1 is standard output (normal text), and 2 is standard error (diagnostic or error text).> (Redirection): This operator takes the stream on its left and sends it to the destination on its right./dev/null (The Black Hole): This is a special virtual file system device. Anything written to it disappears forever. 

Password found in L6(bandit6): morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj

Find word millionth in data.txt. 
Command : grep "millionth" data.txt or Vi and open the file then : /millionth

Password found in L7(bandit7):dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc



How to : The password for the next level is stored in the file data.txt and is the only line of text that occurs only once
Command : open in vi then :sort once sorted - :%!uniq -u

Another option : 
sort data.txt | uniq -u
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM

Password found in L8(bandit8): 4CKMh1JI91bUIZZPXDqGanal4xvAg0JMv


How to : file data.txt in one of the few human-readable strings, preceded by several ‘=’ characters
Command : 
bandit9@bandit:~$ strings data.txt | grep "=="
/========== the
========== password
========== is
========== FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey

The strings command finds human-readable strings in files. Specifically, it prints sequences of printable characters. Its main use is for non-printable files like hex dumps or executables
Password found in L9(bandit9):FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey

To do : 
The password for the next level is stored in the file data.txt, which contains base64 encoded data
Base64 is a binary-to-text encoding scheme. It can often be recognised by equal signs at the end of the data. However, this is not always the case. Linux has a command called base64 that allows for encoding and decoding in Base64. For decoding, we need to use the flag -d

bandit10@bandit:~$ base64 -d data.txt
The password is dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
