module FactoryHelper
  def form_attributes_for(factory)
    { Time.current.to_i => attributes_for(factory) }
  end
end
