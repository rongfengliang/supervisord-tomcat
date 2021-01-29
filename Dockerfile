FROM tomcat:8.5.61-jdk11-corretto
COPY --from=ochinchina/supervisord:latest /usr/local/bin/supervisord /usr/local/bin/supervisord
COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/local/bin/supervisord"]
