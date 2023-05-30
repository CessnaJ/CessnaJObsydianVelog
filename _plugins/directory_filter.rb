module Jekyll
    module DirectoryFilter
      def starts_with_number(input)
        input.split('/').any? { |component| component =~ /^\d/ }
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::DirectoryFilter)