# EC2 setup
export EC2_HOME="$HOME/.ec2"
export EC2_PRIVATE_KEY=$EC2_HOME/keys/0xdata_Big.pem
#export EC2_CERT=~/.ec2/certs/cert-BVX272T5VKWSEMA7DVBT2C2TAELRKOW7.pem
export AWS_ACCESS_KEY_ID=$(test -f $EC2_HOME/aws_id && head $EC2_HOME/aws_id)
export AWS_SECRET_ACCESS_KEY=$(test -f $EC2_HOME/aws_key && head $EC2_HOME/aws_key)
export AWS_ACCESS_KEY=$AWS_ACCESS_KEY_ID
export AWS_SECRET_KEY=$AWS_SECRET_ACCESS_KEY

if [ "$(uname -s)" = "Darwin" ]; then
    export AWS_CLOUDFORMATION_HOME="$(brew --prefix)/Cellar/aws-cfn-tools/1.0.12/libexec"
    export EC2_HOME="$(brew --prefix)/Cellar/ec2-api-tools/1.7.1.0/libexec"
fi


