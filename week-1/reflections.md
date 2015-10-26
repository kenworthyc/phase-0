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

