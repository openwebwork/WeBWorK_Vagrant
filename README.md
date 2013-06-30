WeBWorK_Vagrant
===============

vagrant files for WeBWorK development

To set up with a prebuilt box:

```
git clone https://github.com/whytheplatypus/WeBWorK_Vagrant.git
cd WeBWorK_Vagrant
git checkout -b packaged origin/packaged
git clone https://github.com/<your-git-username>/webwork2.git
git clone https://github.com/<your-git-username>/pg.git
cd webwork2
vagrant up
```

To set up a quick dev environment for WeBWorK:

```
git clone https://github.com/whytheplatypus/WeBWorK_Vagrant.git
cd WeBWorK_Vagrant
git clone https://github.com/<your-git-username>/webwork2.git
git clone https://github.com/<your-git-username>/pg.git
cd webwork2
vagrant up
```

The above assumes that you have forked webwork2 and pg on github.
You can also clone from https://github.com/openwebwork (read-only).

Information about installing vagrant can be found here: http://docs.vagrantup.com/v2/installation/index.html

Your webwork2 folder does have to be named webwork2.
