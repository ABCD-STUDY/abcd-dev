# abcd-dev
A basic ABCD development environment running ubuntu, apache2 and php5

After you install Vagrant and VirtualBox start the download by:

   mkdir src
   git clone https://github.com/ABCD-STUDY/ABCDreport.git src
   cp  src/code/php/passwords.json_master src/code/php/passwords.json
   git clone https://github.com/ABCD-STUDY/little-man-task.git src/applications/little-man-task
   git clone https://github.com/ABCD-STUDY/timeline-followback.git src/applications/time-line-followback
   /usr/local/bin/vagrant up

Start the virtual machine using:

   /usr/local/bin/vagrant ssh

