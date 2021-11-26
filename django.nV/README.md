# django.nV

django.nV is a purposefully vulnerable Django application.

### Vulnerabilities in this app:
- Reflected XXS.

### Steps to deploy container
- Clone the latest repository from GitHub:
  ```
  git clone https://github.com/k2io/QA-IntCode.git
  ```
  
- Create image :
    ```sh
    cd Vulnerable-Tests-Setup/Python/django.nV
    docker build -t k2cyber/test_application:django.nV .
    ```

- To pull docker image from docker hub, use the following command.
    ```sh
    docker pull k2cyber/test_application:django.nV
    ```
    
- Deploy container without IC:
    ```sh
    $ docker run -itd -p 8000:8000 --name django.nV k2cyber/test_application:django.nV
    ```
    
- Deploy container with IC:
    ```sh
    docker run -v /opt/k2-ic:/opt/k2-ic -e K2_OPTS="/opt/k2-ic/k2-python-agent/driver.py" -itd -p 8000:8000 --name django.nV  k2cyber/test_application:django.nV


### Steps to perform attack
- Login using credentials given in Tutorials/Tutorial Credentials.
- Suppose you took username -"seth" and password- "soccerlover".
- Click on the username(seth in this case) then go to Profile.
- Add "<script> alert("XSS"); </script>" in the Username field.
- Then hit save button, you will see an alert script.
