require "todo"

RSpec.describe Todo do
  it "initializes" do
  end

  it "takes a task as an argument and returns it" do
    dec_td1 = Todo.new("wash the cat")
    expect(dec_td1.task).to eq "wash the cat"
  end

  it "marks todo status as done" do
    dec_td1 = Todo.new("wash the cat")
    dec_td1.mark_done!
    expect(dec_td1.done?).to eq true
  end
end
