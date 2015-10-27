## 1.1 Think About Time Reflection

I had passing familiarity with most of these productivity strategies from my time in college (I was never one to relish all-nighters). Meditation and mindfulness go hand in hand, and they inform my previous experiences of "flow": when I've been in a state of flow before, I felt both fully present and at ease. Contextualizing meditation *as* a tool to build focus was a delightful revelation for me. Training my brain to focus more consistently and deeply through meditation merits serious effort on my part.

I've used timeboxing before (in the form of the pomodoro technique), as a last-ditch effort for essays. The 25-5 division was too short for me; when I did get focused, it was time to break and I felt like I'd gotten nothing done. Maybe I have warm-up and cool-down phases for working, or I need longer pomodoro intervals. (For those of you who are interested & use Chrome, the Chrome Web Store has a bunch of convenient extensions and add-ons for pomodoro-ing. https://chrome.google.com/webstore/search/pomodoro)

My time-management strategy typically runs off of a to-do list I make weekly or daily, depending on the workload. After I complete a task, I take a break and get to eat, go for a walk, watch a show or read a chapter. But I'll admit that often my reward will eat up more of my day than I had planned for-- I rationalize by saying hey, I earned it! Not false, but not a recipe for peak productivity.

I plan on integrating more meditation into each day. I want to make it a habit I can depend upon, so I'll try 5 minutes of breathing meditation in the morning and evening, and look toward 15 (even 20?) minutes from there. I'll experiment more with timeboxing, too, using longer intervals and more intentional breaks (spending that time reviewing my production thus far seems like a great step).

I think it'll be important to have some mercy for myself if I forget, or can't meet my goals each and every day. I need this written on my forehead: "don't let perfect be the enemy of the good."

## 1.2 The Command Line Reflection

1. A shell is a textual user interface anyone can use to access the file tree in a computer. Its more contemporary iteration, the Graphical User Interface, uses pictures of files and folders that a user can click in and out of, while the shell uses simple text commands to ascend, descend, and manipulate directories. ("bash" is the widespread shell language for UNIX OSes, comprised of commands such as pwd, cd, ls, &c.)

2. It took me a lot of notes and StackOverflowing to get a handle on pushd and popd! Going through the motions of the Crash Course didn’t explicate the purpose or the utility of the command. A StackOverflow thread helped me see pushd as a ’save point’ and popd as the trigger to return to that point, and that multiple points could be saved and popped back to in sequence.

3. Yes, I succeeded in shuffling around my computer with all the commands (even env!)

4. The most important commands to know certainly depend on the needs of the users, but knowing where you are in the directories and being able to navigate through them and their contents is key. To those ends, pwd, cd, and ls are invaluable. After that, the operators that allow for piping (|) and redirection (<, >) seem to be very powerful tools to edit and manipulate files and directories.

5.
pwd - print working directory, shows where you are in the computer file tree.
ls - lists all files and directories within (not including) current working directory.
mv - moves a file or directory (renames it to reassign its location).
cd - change directory, allows you to descend further into directories.
../ - allows you to ascend directories
touch - create an empty file
mkdir - make a new directory in current working directory
less - shows the contents of a file
rmdir - removes a directory (must be empty) in current working directory
rm - removes a file
help (or man) - provides a manual page for a command in the shell. provides a rundown of the command’s name, synopsis, description, history, standards, and bugs.

## 1.4 Forking and Cloning Reflection

1. To create a repository locally, you can open your shell, navigate to the directory which you'd like turn into a repository, and use the command 'git init'. That directory is your new repo.
If you want to create a repository online, on GitHub, you can log in and click the "+New Repository" button on the top right, name it, and there's your new repo (located on GitHub— not necessarily on your computer yet)!

Sometimes you want to look at and play around with someone else's code or project, and to do that, you can fork their repo. This gives you a working copy of that other person's work, but it's assigned to your personal GitHub account.
To fork a repository that's located on GitHub, you need access to GitHub. So sign in, find the repository you want to fork, then click the "Fork" button in the top right. This will send you to a page displaying your assigned copy (your "fork") of the other person's repo.
There's one more step in order to put this fork on GitHub on your local computer— it's called 'clone'. On the right sidebar, there will be a 'clone URL'. Copy it, then open your shell, navigate to the directory you want the forked repo to be in, and then type 'git clone [insert clone URL]'. The clone of the forked repo is now on your computer, and you can edit your fork of the other person's repo and update changes by using this command: 'commit -m "[commit note]"'. You can push this change to GitHub by using this command: 'git push'.

2. The difference between git and GitHub was hard for me to grasp at first; I had some experience with GitHub, but git as local software was a new concept to me. (It's rather funny how completely accustomed I am to products and services being completely on the cloud.) It makes sense now, and answers a question I had about GitHub the first time I used it: what if I don't want every single commit on private_project_xyz I make to be public? Well, duh, it doesn't have to be. The rest of git - forking, cloning, branches - was familiar, although using it in the shell entailed some new vocabulary, which I'm sure I'll get to know better with usage.

## Bonus: Basics of the Web

Browser: an application that takes all the separate text files which make up a website - text that makes up the content, files containing the site's code - and *interpret* them into a coherent whole. A browser doesn't do its work on the internet (or on the world wide web); it works on one computer to crunch all the bits and make them readable for humans.
DNS: The Domain Name System keep track the numerous computers connected to the web both with their numbered IP address and their written domain name, so that no one has to remember all those numbers.
Domain: a domain is an alphabetical nickname for the numbers that index a website on the internet (so that searches for it go to the right website and its neighbor with one different number). Top-level domains consist of the suffixes like .com, .net, .org, or .gov; second-level domains are the names that precede them. They're much more memorable for people than a bunch of numbers like 192.168.1.1.
Internet: the internet is a system of computer networks interconnected by wires. The internet is like the system of roads that you'd take to drive from your house on one end of town, to your cousin's on the other end. Without the wires, no access would be possible.
IP address: Just like needing to know your cousin's street address to find his house, a computer needs to know the IP address of another computer to successfully send it a message or request. An IP address is numbered for computer convenience, and every internet-connected device has one.
Web app: A web app can exist on a website, but it's more complex and has multiple layers of code functioning within (written in languages like Ruby, Python, Java, &c). A web app has a program folded into it, which makes the user's experience much more dynamic and responsive to input.
Web server: A web server is a computer that can read requests from other computers and deliver the requested information back.
Website: A website consists of one or a few pages that are assigned a chosen domain. They're always at least coded in HTML, and sometimes with CSS or Javascript. A website is static, but can be updated if you have access and permission, like a bulletin board.
World Wide Web: The World Wide Web is an information-sharing application built on the network of the Internet. All the devices with access to this lookup system are indirectly connected to the internet, via the World Wide Web.


1. I learned that the internet and world wide web are different! I also learned that a web server reads requests from computers and responds to them, and is distinct from hosting.
2. The first time I put up an HTML page, my excitement was just goofy. I felt like I'd peeled back a crucial layer of how things work-- how the internet, which had informed my life enormously, functioned. As I changed things to improve it, I felt impetuous fury when it didn't work as I expected it to; I really understand it only enough for it to still look like magic.
3. No particular aha moments, but a better understanding of the structural backbone of the internet and the world wide web/internet divide.