#!/bin/bash

DEPLOYMENT_BUCKET="fluent-deployment"

echo "... initial clean" 
rm -rf packages

echo "... setting up" 
mkdir packages

cd packages
echo "1. Downloading Fluent Platform Networking"
aws s3 cp s3://$DEPLOYMENT_BUCKET/releases/fluent_platform_networking/fluent_platform_networking-latest.zip .
unzip fluent_platform_networking-latest.zip -d .
mv fluent_platform_networking 1_fluent_platform_networking
rm fluent_platform_networking-latest.zip

echo "2. Downloading Fluent Load balancer"
aws s3 cp s3://$DEPLOYMENT_BUCKET/releases/fluent_load_balancer/fluent_load_balancer-latest.zip .
unzip fluent_load_balancer-latest.zip -d .
mv fluent_load_balancer 2_fluent_load_balancer
rm fluent_load_balancer-latest.zip

echo "3. Downloading Fluent API"
aws s3 cp s3://$DEPLOYMENT_BUCKET/releases/fluent_app/fluent-x-app-latest.zip .
unzip fluent-x-app-latest.zip -d .
mv build 3_fluent_x_app
rm fluent-x-app-latest.zip

echo "4. Downloading Fluent Builder IAC"
aws s3 cp s3://$DEPLOYMENT_BUCKET/releases/fluent_builder_iac/fluent_builder_iac-latest.zip .
unzip fluent_builder_iac-latest.zip -d .
mv fluent_builder_iac 4_fluent_builder_iac
rm fluent_builder_iac-latest.zip

echo "5. Downloading Fluent UI WebApp"
aws s3 cp s3://$DEPLOYMENT_BUCKET/releases/fluent_ui/fluent_ui-latest.zip .
unzip fluent_ui-latest.zip -d .
mv fluent_ui 5_fluent_ui
rm fluent_ui-latest.zip

echo "6. Downloading Fluent Builder WebApp"
aws s3 cp s3://$DEPLOYMENT_BUCKET/releases/fluent_builder_app/fluent_builder_app-latest.zip .
unzip fluent_builder_app-latest.zip -d .
mv fluent_builder_app 6_fluent_builder_app
rm fluent_builder_app-latest.zip
