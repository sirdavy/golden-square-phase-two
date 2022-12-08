require "task_tracker"

RSpec.describe "task_tracker method" do
  it "returns true for string containing TODO" do
    result = task_tracker("TODO - clean your room.")
    expect(result).to eq true
  end
end