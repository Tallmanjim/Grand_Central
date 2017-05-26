describe Staff_member do
	subject {create(:staff_member)}
	context "associations" do
		it {should belong_to(:company)}
	end

	it "is 2 or more characters" do
	  subject.name = ""
	  expect(subject).not_to be_valid

	  subject.name = "A"
	  expect(subject).not_to be_valid

	  subject.name = "AA"
	  expect(subject).to be_valid
	end
end