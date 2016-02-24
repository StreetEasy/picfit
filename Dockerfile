FROM scratch

ADD bin/picfit /picfit
ADD config.json.tpl /config.json
ENV PICFIT_CONFIG_PATH=/config.json
CMD ["/picfit"]
