describe User do
	subject {create(:user)}
	it {expect(subject).to have_many(:companies)}

	describe "validations" do
    before(:each) do
      @subject = create(:user)
    end

    context "email" do
      it "is present" do
        subject.email = nil
        expect(subject).to_not be_valid
    	end
    end
	end
end