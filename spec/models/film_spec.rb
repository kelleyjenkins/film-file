RSpec.describe Film do
  describe "Class Methods" do
    describe ".total_box_office_sales" do
      it "returns total box office sales for all films" do
        Film.create(title: "Fargo", year: 2017, box_office_sales: 3)
        Film.create(title: "Die Hard", year: 2016, box_office_sales: 4)

        expect(Film.total_box_office_sales).to eq(7)
      end
    end
    describe ".average_total_box_office_sales" do
      it "returns average sales for all films" do
        Film.create(title: "Fargo", year: 2017, box_office_sales: 3)
        Film.create(title: "Die Hard", year: 2016, box_office_sales: 4)

        expect(Film.average_total_box_office_sales).to eq(3.5)
      end
    end
  end

  describe "validations" do
    it "is invalid without a title" do
      film = Film.new(year: 2017, box_office_sales: 2)

      expect(film).to be_invalid
    end
    it "is invalid without a year" do
      film = Film.new(title: "Lion King", box_office_sales: 2)

      expect(film).to be_invalid
    end

    it "is invalid without box office sales" do
      film = Film.new(title: "Lion King", year: 1998)

      expect(film).to be_invalid
    end
  end
end
