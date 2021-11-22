#!/bin/bash

# TODO: check current dir
mkdir -p data/{prometheus,grafana,db-grafana}
sudo chown 472:472 data/grafana
sudo chown 65534:65534 data/prometheus
