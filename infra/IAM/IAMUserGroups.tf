resource "aws_iam_user_group_membership" "MultiGroups" {
    user = aws_iam_user.U1.name

    groups = [
        aws_iam_group.G1.name,
        aws_iam_group.G2.name,
    ]
} 

resource "aws_iam_user_group_membership" "SingleGroups" {
    user = aws_iam_user.U1.name

    groups = [
        aws_iam_group.G3.name,
    ]
} 

resource "aws_iam_user" "U1" {
    name = "user1"  
}


resource "aws_iam_group" "G1" {
  name = "group1"
}


resource "aws_iam_group" "G2" {
  name = "group2"
}

resource "aws_iam_group" "G3" {
  name = "group3"
}