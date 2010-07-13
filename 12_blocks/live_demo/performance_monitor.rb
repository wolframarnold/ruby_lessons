class PerformanceMonitor
  def measure
    started_at = Time.now
    yield
    ended_at = Time.now
    ended_at - started_at
  end
end
