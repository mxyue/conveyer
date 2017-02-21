require "conveyer/version"

module Conveyer
  class Jpegtran
    ZIP_DIR = 'zip-jpgs'

    def compress
        begin
            Dir.mkdir ZIP_DIR
            puts "压缩后的图片将存放在当前#{ZIP_DIR}文件夹内"
        rescue Errno::EEXIST => e
            puts "#{ZIP_DIR}文件夹已经创建" 
        end

        Dir["*"].each do |f|
            if f.split('.').last == 'jpg'
                puts f
                system "jpegtran -copy none -optimize -progressive -outfile #{ZIP_DIR}/#{f} #{f}" 
            end
        end
        puts '>>>compress over<<<'
    end
  end
end
