#l/bin/bash

#com os passos a seguir, setamos as configs para q seja feito exatamente o que fizemos aanteriormente pelo console da aws, mas agora automatizado.

# comando para atualizar a vm:
sudo yum update -y
sudo yum upgrade -y

# Instala o Apache:
sudo yum install httpd -y

# Para iniciar o Apache e garantir que ele inicie automaticamente no boot:
sudo systemctl start httpd
sudo systemctl enable httpd


# Clona o repo com o projeto web:
sudo yum install git -y
sudo git clone https://github.com/luizcarlos16/site-bootcamp-devops.git

# Copia os arquivos e joga no HTML pra rodar o site:
sudo cp -R site-bootcamp-devops/* /var/www/html