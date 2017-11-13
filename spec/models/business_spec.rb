require 'rails_helper'

describe Business do
  it { should validate_presence_of :name }
  it { should validate_presence_of :telenum }
  it { should validate_presence_of :street }
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
  it { should validate_presence_of :zip }
  it { should validate_presence_of :email }
  it { should validate_presence_of :website }
  it { should belong_to :type}
end
