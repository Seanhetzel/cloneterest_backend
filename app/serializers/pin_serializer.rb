class PinSerializer < ActiveModel::Serializer
  
  def initialize(pin_object)
    @pin = pin_object
  end

  def to_serialized_json
      options = {
        except: [:updated_at, :created_at]
      }
      @pin.to_json(options)
  end
end
