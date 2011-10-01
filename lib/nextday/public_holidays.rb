module Nextday
  ##
  # Bank and public holidays in England and Wales
  # Includes substitute days if holiday lands on a weekend
  # http://www.direct.gov.uk/en/Employment/Employees/Timeoffandholidays/DG_073741
  #
  BANK_AND_PUBLIC_HOLIDAYS_ENGLAND_AND_WALES = {
    
    "New Year's Day" => %w(
      03/01/2011
      02/01/2012
      01/01/2013
      01/01/2014
      01/01/2015
    ),
    
    "Good Friday" => %w(
      22/04/2011
      06/04/2012
      29/03/2013
      18/04/2014
      03/04/2015
    ),
    
    "Easter Monday" => %w(
      25/04/2011
      09/04/2012
      01/04/2013
      21/04/2014
      06/04/2015
    ),
    
    "Early May Bank Holiday" => %w(
      02/05/2011
      07/05/2012
      06/05/2013
      05/05/2014
      04/05/2015
    ),
    
    "Spring Bank Holiday" => %w(
      30/05/2011
      04/06/2012
      27/05/2013
      26/05/2014
      25/05/2015
    ),
    
    "Queen's Diamond Jubilee" => %w(
      05/06/2012
    ),
    
    "Summer Bank Holiday" => %w(
      29/08/2011
      27/08/2012
      26/08/2013
      25/08/2014
      31/08/2015
    ),
    
    "Christmas Day" => %w(
      26/12/2011
      25/12/2012
      25/12/2013
      25/12/2014
      25/12/2015
    ),
    
    "Boxing Day" => %w(
      27/12/2011
      26/12/2012
      26/12/2013
      26/12/2014
      28/12/2015
    )
  }
  
  PUBLIC_HOLIDAYS = BANK_AND_PUBLIC_HOLIDAYS_ENGLAND_AND_WALES
end