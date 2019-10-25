describe Session do
  let(:attributes) do
    {
      start_time: "2019-01-01 00:00",
      end_time: "2019-01-01 01:00",
      distance: 7.0
    }
  end

  let(:missing_distance) {attributes.except(:distance)}
  let(:invalid_distance) {attributes.merge(distance: "This is an invalid distance")}

  it "is considered valid" do
    expect(Session.new(attributes)).to be_valid
  end

  it "is invalid without a distance" do 
    expect(Session.new(missing_distance)).not_to be_valid
  end

  it "is invalid if distance is not a number" do
    expect(Session.new(invalid_distance)).not_to be_valid
  end
  
end