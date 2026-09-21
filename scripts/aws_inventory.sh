#!/bin/bash

echo "Instancias EC2"

aws ec2 describe-instances \
--query 'Reservations[*].Instances[*].[InstanceId,State.Name]' \
--output table