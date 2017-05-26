describe Company do
  subject {create(:company)}
	context "associations" do
		it {should belong_to(:user)}
		it {should have_many(:projects)}
		it {should have_many(:staff_members)}
  end

  describe "validations" do
    before(:each) do
      @subject = create(:company)
    end
  end
end