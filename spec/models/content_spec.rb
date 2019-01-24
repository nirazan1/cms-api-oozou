require 'rails_helper'

RSpec.describe Content, type: :model do
  describe '#after_commit' do
    let(:content) { build(:content) }

    it 'sets draft status' do
      expect(content.status).to eq('draft')
      content.save
    end

    it 'schedules worker for publishing' do
      expect(PublishingWorker).to receive(:perform_in)
      content.save
    end
  end
end
