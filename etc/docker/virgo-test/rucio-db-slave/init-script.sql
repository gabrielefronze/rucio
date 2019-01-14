CREATE SUBSCRIPTION rucio_subscription CONNECTION 'host=rucio-db port=5432 password=my_password user=rucioreplicant dbname=rucio' PUBLICATION rucio_publication;
