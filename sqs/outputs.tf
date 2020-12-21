#sqs outputs
output "sqs_id" {
    description = "id of the sqs queue"
    value = aws_sqs_queue.sqs.id
}

output "sqs_arn" {
    description = "arn of the sqs queue"
    value = aws_sqs_queue.sqs.arn
}