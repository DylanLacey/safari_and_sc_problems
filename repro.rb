require_relative "test_instance"
require_relative "capabilities"

def print_status_string ti
  printf("%-25s %-10s %5.3ss - %s\n", ti.session_name, ti.status, ti.load_duration, "https://saucelabs.com/beta/tests/#{ti.job_id}")
end

def test_set caps
  completed_instances = caps.map do |c|
    ti = TestInstance.new c
    puts "Running Test Instance for #{c["name"]}"
    ti.start

    ti
  end

  completed_instances.each do |c|
    print_status_string c
  end
end

c1 = Capabilities.OSX1012_Safari10
c2 = Capabilities.OSX1012_FF54
c3 = Capabilities.Win7_FF54

c4 = Capabilities.OSX1011_Safari10
c5 = Capabilities.OSX1011_Safari9

# Functional
# test_set [c3, c2, c1]

# Broken
# test_set [c1, c2, c3]

# Broken full Safari Set
# test_set [c1, c4, c5]

 
test_set [c3, c2, c1, c4, c5, c4, c3, c2, c1]