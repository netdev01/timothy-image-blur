class Image
  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def blur
		temp_array = []
		until @data.empty?
			temp_row = []
			curr_row = @data.pop
			temp_row.push(curr_row.pop) until curr_row.empty?
			temp_array.push(temp_row)
		end
		return temp_array
  end

  def output_image(data)
  	output = ''
  	data.each do |row|
  		row.each do |cell|
  			output = output + ' ' + cell.to_s
  		end
  		output = output + "\n"
  	end
  	puts output
  end

end

input = [
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
]

image = Image.new(input)
image.output(image.blur.data)


