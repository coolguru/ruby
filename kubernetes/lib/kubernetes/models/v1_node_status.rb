=begin
#Kubernetes

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module Kubernetes
  # NodeStatus is information about the current status of a node.
  class V1NodeStatus
    # List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/concepts/nodes/node/#addresses
    attr_accessor :addresses

    # Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
    attr_accessor :allocatable

    # Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
    attr_accessor :capacity

    # Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/concepts/nodes/node/#condition
    attr_accessor :conditions

    # Endpoints of daemons running on the Node.
    attr_accessor :daemon_endpoints

    # List of container images on this node
    attr_accessor :images

    # Set of ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info
    attr_accessor :node_info

    # NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.
    attr_accessor :phase

    # List of volumes that are attached to the node.
    attr_accessor :volumes_attached

    # List of attachable volumes in use (mounted) by the node.
    attr_accessor :volumes_in_use


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'addresses' => :'addresses',
        :'allocatable' => :'allocatable',
        :'capacity' => :'capacity',
        :'conditions' => :'conditions',
        :'daemon_endpoints' => :'daemonEndpoints',
        :'images' => :'images',
        :'node_info' => :'nodeInfo',
        :'phase' => :'phase',
        :'volumes_attached' => :'volumesAttached',
        :'volumes_in_use' => :'volumesInUse'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'addresses' => :'Array<V1NodeAddress>',
        :'allocatable' => :'Hash<String, String>',
        :'capacity' => :'Hash<String, String>',
        :'conditions' => :'Array<V1NodeCondition>',
        :'daemon_endpoints' => :'V1NodeDaemonEndpoints',
        :'images' => :'Array<V1ContainerImage>',
        :'node_info' => :'V1NodeSystemInfo',
        :'phase' => :'String',
        :'volumes_attached' => :'Array<V1AttachedVolume>',
        :'volumes_in_use' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end

      if attributes.has_key?(:'allocatable')
        if (value = attributes[:'allocatable']).is_a?(Array)
          self.allocatable = value
        end
      end

      if attributes.has_key?(:'capacity')
        if (value = attributes[:'capacity']).is_a?(Array)
          self.capacity = value
        end
      end

      if attributes.has_key?(:'conditions')
        if (value = attributes[:'conditions']).is_a?(Array)
          self.conditions = value
        end
      end

      if attributes.has_key?(:'daemonEndpoints')
        self.daemon_endpoints = attributes[:'daemonEndpoints']
      end

      if attributes.has_key?(:'images')
        if (value = attributes[:'images']).is_a?(Array)
          self.images = value
        end
      end

      if attributes.has_key?(:'nodeInfo')
        self.node_info = attributes[:'nodeInfo']
      end

      if attributes.has_key?(:'phase')
        self.phase = attributes[:'phase']
      end

      if attributes.has_key?(:'volumesAttached')
        if (value = attributes[:'volumesAttached']).is_a?(Array)
          self.volumes_attached = value
        end
      end

      if attributes.has_key?(:'volumesInUse')
        if (value = attributes[:'volumesInUse']).is_a?(Array)
          self.volumes_in_use = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          addresses == o.addresses &&
          allocatable == o.allocatable &&
          capacity == o.capacity &&
          conditions == o.conditions &&
          daemon_endpoints == o.daemon_endpoints &&
          images == o.images &&
          node_info == o.node_info &&
          phase == o.phase &&
          volumes_attached == o.volumes_attached &&
          volumes_in_use == o.volumes_in_use
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [addresses, allocatable, capacity, conditions, daemon_endpoints, images, node_info, phase, volumes_attached, volumes_in_use].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Kubernetes.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
