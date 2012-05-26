class StateEventInput < SimpleForm::Inputs::CollectionSelectInput
  def collection
    object.send("state_transitions").map {|t| [t.human_event, t.event]}
  end
end
