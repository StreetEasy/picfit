FROM centurylink/ca-certs
ADD bin/picfit /picfit
CMD ["/picfit"]
