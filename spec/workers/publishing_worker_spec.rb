
require 'rails_helper'

describe PublishingWorker do
  context 'publish' do
    let(:subject) { described_class.new }
    let(:content) { create(:content) }

    it 'must publish' do
      expect(content).to transition_from(:draft).to(:published).on_event(:publish)
      subject.perform(content_id: content.id)
    end
  end
end
