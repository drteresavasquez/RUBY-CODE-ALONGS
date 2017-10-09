module Car

    #place all class methods in this block to make them accessible using include Car
    module ClassMethods
        def has_car?
            true
        end
    end

#############################
    #This extends the class methods if the file is included in other files
    def self.included(base)
        base.extend(ClassMethods)
    end
##############################

    def description
        "Car Description"
    end
end