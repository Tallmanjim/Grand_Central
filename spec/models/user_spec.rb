describe User do
	subject {create(:user)}

	it { should have_one(:email) }
	it {expect(subject).to have_many(:companies)}

	describe "validations" do
    before(:each) do
      @subject = create(:user)
    end

    describe "email" do
      it "is present" do
        subject.email = nil
        expect(subject).to_not be_valid
    	end
    end

		it "company_id" do
			subject.company_id = nil
			expect(subject).not_to be_valid

			comp = create(:company)
			subject.company_id = comp.id
			expect(subject).to be_valid
	  end
	end
end