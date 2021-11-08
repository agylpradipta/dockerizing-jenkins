### How to Run Jenkins + ELK Stack Container
1. After cloning this repo, if docker doesn't exist in your server, run `./docker-install.sh`
2. Before starting the ELK + Jenkins container, check `filebeat_docker/filebeat.yml` because I still manualy pre-defined the Logstash host. Just give the private / public IP where the Logstash container ran.
3. Start the whole environment setup by running `./runall.sh`


### Kibana
- User: elastic
- Password: elasticpradipta

### Jenkins
- User: pradipta
- Password: pradipta