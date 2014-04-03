class WiredriveDemonstration < ActiveRecord::Base
  include Action

  # Default Values

  # Input Parameters

  VAR_OPERATION = 'operation'
  OPERATION_LIST = [
    'Project_create',
    'Project_data',
    'Asset_create',
    'Asset_delete',
    'Asset_metadata_get',
    'Asset_metadata_set',
    'Asset_search',
  ]

  # Output Fields
  # TODO Add Output Fields


  def description
    'This is a reference implementation for a simple Action plugin illustrating the API.'
  end

  # Revision history
  # => 0.0.1 initial release
  def self.version
    return 0, 0, 1
  end

  # return a hash of required gems.{<gem_name>=><gem_release>}
  #  for example [['net-scp','1.0.2'], ['aspera_ruby'], ['logging','1.4.3+']]
  def self.dependencies
    [] #nothing required at this point.
  end

  def display_name
    'Wiredrive'
  end

  def inputs_spec
    @required_inputs = {}
    @optional_inputs = { '' => TYPE_STRING }

    return @required_inputs, @optional_inputs
  end

  def outputs_spec
    return { '' => TYPE_STRING }
  end

  def execute

  end

end
