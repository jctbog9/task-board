require 'rails_helper'

RSpec.describe Project, type: :model do
  describe('validations') do
    it('should create a valid project when required fields are complete') do
      project = create(:project)
      expect(project.save).to be(true)
    end

    it('should not create a project if required fields are blank') do
      blank_fields = [:title]
      blank_fields.each do |field|
        project = create(:project)
        project[field] = ""
        project.valid?
        expect(project.errors.messages[field]).to include("can't be blank")
      end
    end
  end

  describe('associations') do
    let!(:project) { create(:project) }
    let!(:column) { create(:column, project: project) }
    let!(:task) { create(:task, project: project, column: column) }

    it('should return an associated owner when .owner is called') do
      expect(project.columns[0]).to eq(column)
      expect(project.tasks[0]).to eq(task)
    end
  end
end