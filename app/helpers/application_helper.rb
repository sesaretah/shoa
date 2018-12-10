module ApplicationHelper
  def sexes
  @options = [
    [t(:male), t(:male)],
    [t(:female), t(:female)]
  ]
  return @options
end
end
