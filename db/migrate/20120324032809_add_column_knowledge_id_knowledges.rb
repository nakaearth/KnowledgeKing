class AddColumnKnowledgeIdKnowledges < ActiveRecord::Migration
  def up
    add_column :answers, :knowledge_id, :integer
  end

  def down
  end
end
