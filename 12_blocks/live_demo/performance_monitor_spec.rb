require 'performance_monitor'

describe PerformanceMonitor do
  before do
    @perfmon = PerformanceMonitor.new
  end

  it 'should have a "measure" method' do
    @perfmon.should respond_to(:measure)
  end

  it 'should return a value' do
    res = @perfmon.measure do
    end
    res.should_not be_nil
  end

  it 'runs the block' do
    was_run = false
    @perfmon.measure do
      was_run = true
    end
    was_run.should be_true
  end

  it 'returns the length of time spent in the block' do
    Time.should_receive(:now).twice.and_return(0,5)
    duration = @perfmon.measure do
      # sleep 5
    end
    duration.should == 5
  end
end
