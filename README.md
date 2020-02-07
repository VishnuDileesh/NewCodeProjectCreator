# NewProjectCreator
Bash shell script which automates the process of steps required in on starting a new coding projects, like git stuff and folder creation.

---

> Script can be used by first cloning the project, and adding aliases to the script in your bashrc.
> I have named the alias to the script as "project", for the ease of use.

> Script can be now called from the terminal by just calling alias. The script takes in two arguments, first argument is the name of the code project, the name of the project will be used to create the code project folder. Second argument is optional, it's flag of "-w" which tells the script that it is web project and do the stuff as per required for a web project. If no flag is provided it will go ahead create a normal project.

`$ project myNewWebproject -w`

* First the script creates a new folder with the first argument passed in. Her it will be myNewWebproject.

* Secondly the script switches to the new folder, and creates a python environment.

* Then copies the .gitignore file from the scripts folder to the new folder.

* Then calls the git init.

* Copies the app.py template server file and requirements.txt to the code project folder.

* Then copies two more script files to the code project folder.

* The first script do `pip install -r requirements.txt` after starting the environment, and launches the flash development server.

* Then do `git add .` and `git commit -m "Initial Commit"`

* The second script launches a new work terminal in the code project folder.

---

> For normal projects, the script goes ahead and creates the new code project folder and creates the python environment.
> And then copies git ignore file to the code project folder and do `git init`.
> Then launches a new work terminal in the code project folder.


> This is a personal project i came up with while learning bash scripting. The automation is done based on my own workflow and environment i work in. You are free to go ahead and look through the repo and make changes according to your workflow.


