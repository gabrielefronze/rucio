CREATE SUBSCRIPTION rucio_subscription CONNECTION 'host=rucio-db port=5432 password=rucio777 user=rucioreplicant dbname=rucio' PUBLICATION rucio_publication;
