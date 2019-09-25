class Image
  def initialize(arrays)
    # arrays is an multidimensional array with 4 rows and undefined columns
    # as provided in the code in the assignment
    @image  = [arrays[0], arrays[1], arrays[2], arrays[3]]
  end

  def output_image
    # loops through each array row
    @image.each do |row|
      # iterates over each row element 
      row.each { |n| print n}
      puts
    end
  end 
end


image = Image.new([
  [0,0,0,0],
  [0,1,0,0],
  [0,0,0,1],
  [0,0,0,0]
])
image.output_image


# desired output:
# 0000
# 0100
# 0001
# 0000