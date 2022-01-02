class Form::Mandarat < Mandarat
  REGISTRABLE_ATTRIBUTES = %i(user_id name)
  attr_accessor :
end