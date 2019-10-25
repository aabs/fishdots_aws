function fish_right_prompt -d "Write out the right prompt"
    set -l aws_reg (cat ~/.aws/credentials | grep region | head -n -1 | awk -F'=' '{print $2;}' | string trim)
    set -l aws_env (cat ~/.aws/credentials | grep 'x_principal_arn' | awk -F'/' '{print $2;}' | string trim | awk -F'-' '{print $4;}')
    echo "$aws_env: $aws_reg"
end
