require 'creek'

BIC_LIST_URL='https://www.betaalvereniging.nl/wp-content/uploads/BIC-lijst-NL.xlsx'

workbook = Creek::Book.new BIC_LIST_URL, remote: true
worksheets = workbook.sheets

bic_lookup = {}
worksheets.each do |worksheet|
  worksheet.simple_rows.each do |row|
    next if !row['B'] || 4 != row['B'].size

    bic_lookup[row['B']] = row['A']
  end
end

if ARGV[0]
  puts bic_lookup.fetch(ARGV[0])
else
  bic_lookup.sort.each { |tuple| puts tuple.join(' ') }
end
