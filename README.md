# abcd-dev
A basic ABCD development environment running ubuntu, apache2 and php7.

After you install Vagrant and VirtualBox create a local copy of the applications you want to develop:

```
   mkdir src
   git clone https://github.com/ABCD-STUDY/ABCDreport.git src
   cp  src/code/php/passwords.json_master src/code/php/passwords.json
   git clone https://github.com/ABCD-STUDY/little-man-task.git src/applications/little-man-task
   git clone https://github.com/ABCD-STUDY/timeline-followback.git src/applications/timeline-followback
   git clone https://github.com/ABCD-STUDY/enroll.git src/applications/enroll
   git clone https://github.com/ABCD-STUDY/stroop-task.git src/applications/stroop
```

Start the virtual machine using:

```
   /usr/local/bin/vagrant up
```

If you have not updated this project in a while do a (after vagrant up):

```
  vagrant provision
```

A local copy of the report webpage should now be available as
```
   http://localhost:8888/
```

Note: Some projects might depend on symbolic links to particular versions of for example javascript libraries. These links or copies have to be created manually.

Note: Vagrant uses VirtualBox in this setup. Some computers will require certain BIOS features to be enabled to support virtualization.
