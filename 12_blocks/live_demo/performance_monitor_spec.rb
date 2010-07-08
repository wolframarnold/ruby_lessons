require 'performance_monitor'

describe PerformanceMonitor do

  before do
    @perfmon = PerformanceMonitor.new
  end

  it 'return a value' do
    ret = @perfmon.measure do
    end
    ret.should_not be_nil
  end

  it 'runs the block' do
    was_called = false
    @perfmon.measure do
      was_called = true
    end
    was_called.should be_true
  end

  it 'returns the time spent in block' do
    Time.should_receive(:now).twice.and_return(0,5)
    duration = @perfmon.measure do
      # sleep 5
    end
    duration.should be_close(5,0.1)
  end
end
