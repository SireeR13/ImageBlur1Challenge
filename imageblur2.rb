class Image
  def initialize(arrays)
    # arrays is an multidimensional array with 4 rows and undefined columns
    # as provided in the code in the assignment
    @image  = arrays
  end

  def output_image
    # # loops through each array row
     @image.each do |row|
    #   # iterates over each row element 
       row.each { |n| print n}
       puts
     end
  end

  def distancia(a,b,c,d)
    dist = (a-c).abs + (b-d).abs
    return dist
  end

  def findones
    ones = []
    blurred = @image

    blurred.each_with_index do |row, yval|
      row.each_with_index do |cell, xval|
        if cell==1
          ones << [xval,yval]
        end
      end
    end

    @image.each_with_index do |row, yval|
      row.each_with_index do |cell, xval|
        ones.each do |point|
          x1 = point[0]
          x2 = point[1]
          
          if distancia(point[0], point[1], xval, yval) <= 1          
            cell = 1
            blurred[yval][xval] = 1
          end 
        end
      end
    end

    blurred.each do |row|
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

image.findones


# desired output:
# 0100
# 1111
# 0011
# 0001