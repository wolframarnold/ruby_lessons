class PerformanceMonitor
  def measure
    start_at = Time.now
    yield
    end_at = Time.now
    end_at - start_at
  end
end
