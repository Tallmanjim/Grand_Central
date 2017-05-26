describe Project do
  subject {create(:project)}
	context "associations" do
		it {should belong_to(:company)}
	end

	context "name" do
		it "is 2 or more characters" do
		  subject.name = ""
		  expect(subject).not_to be_valid

		  subject.name = "A"
		  expect(subject).not_to be_valid

		  subject.name = "AA"
		  expect(subject).to be_valid
		end
	end

	context "shortname" do
		it "is between 2 and 4 characters" do
		  subject.shortname = ""
		  expect(subject).not_to be_valid

		  subject.shortname = "A"
		  expect(subject).not_to be_valid

		  subject.shortname = "AA"
		  expect(subject).to be_valid

		  subject.shortname = "AAAAA"
		  expect(subject).not_to be_valid
		end
	end
end