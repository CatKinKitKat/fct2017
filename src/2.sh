#!/bin/bash

mysql --host=127.0.0.1 --user=collector --password=124608ab --local-infile wids <Dump.sql
rm Dump.netxml
