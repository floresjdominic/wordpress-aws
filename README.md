<h1>Ansible</h1><h4>Version used is 2.8.4</h4>

The playbooks will require your AWS credentials, region and key (SSH in EC2 instance). <br>
Store them in a YAML file then attach your YAML file under vars_file inside the playbook <br>
Edit ```ansible.cfg``` and place the path to your PEM key under ```private_key_file``` <br>
This will tell ansible where to find your pem key when accessing your ec2 instance.

```
Example file: aws-config.yml

aws_access_key: <your_access_key_here>
aws_secret_key: <your_secret_key_here>
aws_region:     <your_preffered_region_here>
pem_key:        <your_ec2_pem_key_used_here>
```

```
Example file: aws-play.yml

- hosts: localhost
  vars_files: # place your credentials YAML file here
    - <path_to>/aws-config.yml #example
```
<b>Note:</b> Add your credentials YAML file under ```.gitignore``` to prevent uploading it  <br> 
with git push. When using Vagrant, make sure your ```ansible.cfg``` and ```pem key``` <br>
is not stored in a synced_folder.
