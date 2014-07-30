describe "#Dispatcher" do
	it "to info message" do
		Dispatcher.dispatch({:content => "info"}).should == :1
	end

	it "to cost message" do
		Dispatcher.dispatch({:content => "cost"}).should == :2
	end

	it "to note message" do
		Dispatcher.dispatch({:content => "note"}).should == :3
	end

	it "to rule message" do
		Dispatcher.dispatch({:content => "rule"}).should == :4
	end

	it "to help message" do
		Dispatcher.dispatch({:event => :subscribe}).should == :welcome
	end

	it "to picture message" do
		Dispatcher.dispatch({}).should == :'picture_message'
	end
end