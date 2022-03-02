resource "aws_cloudwatch_metric_alarm" "alarm" {
  alarm_name          = var.alarm.name
  alarm_actions       = var.sns

  metric_name         = var.filter
  namespace           = var.alarm.namespace
  comparison_operator = var.alarm.operator
  period              = var.alarm.period
  evaluation_periods  = var.alarm.eval_period
  threshold           = var.alarm.threshold
  statistic           = var.alarm.statistic
  treat_missing_data  = var.alarm.missing
}
