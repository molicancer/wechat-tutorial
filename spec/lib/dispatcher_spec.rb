describe "#Dispatcher" do
	it "to help message" do
		Dispatcher.dispatch({:content => "help"}).should == :help
	end

	it "to info message" do
		Dispatcher.dispatch({:content => "info"}).should == :info
	end

	it "to cost message" do
		Dispatcher.dispatch({:content => "cost"}).should == :cost
	end

	it "to note message" do
		Dispatcher.dispatch({:content => "note"}).should == :note
	end

	it "to rule message" do
		Dispatcher.dispatch({:content => "rule"}).should == :rule
	end

	it "to help message" do
		Dispatcher.dispatch({:event => :subscribe}).should == :welcome
	end

	it "to picture message" do
		Dispatcher.dispatch({}).should == :'picture_message'
	end
end