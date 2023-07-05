# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_reader :emails
  
    def initialize(emails)
      @emails = emails
    end
  
    def parse
      parsed_emails = emails.split(/[, ]/).reject(&:empty?) # Split the string on commas and spaces, and remove any empty elements
      parsed_emails.uniq # Return unique email addresses
    end
  end
  