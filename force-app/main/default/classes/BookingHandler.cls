public class BookingHandler extends SourceSystemUpdate {
    
    public public_active_booking__x booking;
    public public_booking_history__x bookingHistory;    
    public BookingInput bookingInput;
    public list<PackageInput> packageInputlist;
    public list<PackageItemInput> packageItemInputlist;

	public static Map<String, String> bookingIdMap = new Map<String, String>();
    public static Map<String, String> bookingHistoryIdMap = new Map<String, String>();
       
    public BookingHandler(BookingInput input) {
        
        super();        
        this.bookingInput			  = input;
        this.inputEvent               = input.getEvent();
        this.inputContact             = input.getContactProfile();  
        this.relatedData              = input.getBooking();  
        this.relatedDataHistory       = input.getBookingHistory();
        //this.packageInputlist         = input.PackageInput;
        //this.packageItemInputlist     = input.PackageItemInput;

    }
          
    public class PackageInput {

        public String PACKAGE_NUMBER   	{get;set;}
        public String BOOKING_NUMBER   	{get;set;}
        public String PACKAGE_DESCRIPTION   	{get;set;}
        public Decimal PACKAGE_AMOUNT_GROSS_CUR   	{get;set;} 
        public Decimal PACKAGE_AMOUNT_NET_CUR  	{get;set;}
        public Decimal PACKAGE_AMOUNT_GROSS_EUR   	{get;set;}
        public Decimal PACKAGE_AMOUNT_NET_EUR  	 {get;set;}
        public Integer QTY  	{get;set;}
        public String PRODUCT_GROUP  	{get;set;}
        public String HOLIDAY_TYPE_NAME  	{get;set;}
        public String PACKAGE_NAME_CRS  	{get;set;}
        public DateTime PACKAGE_FROM_DATE  	{get;set;}
        public String CURR_COD  	{get;set;}
        public DateTime PACKAGE_TO_DATE  	{get;set;}
        public Integer QTY_PAX   	{get;set;}
        public Integer QTY_ADULT   	{get;set;}
        public Integer QTY_CHILD   	{get;set;}
        public Integer QTY_INFANT   	{get;set;}
        public DateTime CREATION_DATE   	{get;set;}
        public DateTime UPDATE_DATE   	{get;set;}
        public String PACKAGE_LINE_STATUS   	{get;set;}


        public public_package__x getPackage() {
            
            public_package__x packages = new public_package__x();    
            packages.package_number__c 	   = this.PACKAGE_NUMBER;
            packages.booking_number__c      = this.BOOKING_NUMBER;
            packages.package_name_accovia__c      = this.PACKAGE_DESCRIPTION;
            packages.total_amount__c      = this.PACKAGE_AMOUNT_GROSS_CUR;
            packages.net_amount__c      = this.PACKAGE_AMOUNT_NET_CUR;
            packages.total_amount_euro__c      = this.PACKAGE_AMOUNT_GROSS_EUR;
            packages.net_amount_euro__c      = this.PACKAGE_AMOUNT_NET_EUR;
            packages.quantity__c      = this.QTY;
            packages.ProductGroup__c      = this.PRODUCT_GROUP;
            packages.HolidayType__c      = this.HOLIDAY_TYPE_NAME;
            packages.package_name_crs__c      = this.PACKAGE_NAME_CRS;
            packages.package_from_date__c      = this.PACKAGE_FROM_DATE;
            packages.CurrencyPicklist__c      = this.CURR_COD;
            packages.package_to_date__c      = this.PACKAGE_TO_DATE;
            packages.number_of_passengers__c      = this.QTY_PAX;
            packages.number_of_adults__c      = this.QTY_ADULT;
            packages.number_of_children__c      = this.QTY_CHILD;
            packages.number_of_infants__c      = this.QTY_INFANT;
            packages.creation_date__c      = this.CREATION_DATE;
            packages.update_date__c      = this.UPDATE_DATE;
            packages.LineStatus__c      = this.PACKAGE_LINE_STATUS;

            return packages;
        } 

        public public_package_history__x getPackageHistory() {
            
            public_package_history__x packagesHistory = new public_package_history__x();    
            packagesHistory.package_number__c 	   = this.PACKAGE_NUMBER;
            packagesHistory.booking_number__c      = this.BOOKING_NUMBER;
            packagesHistory.package_name_accovia__c      = this.PACKAGE_DESCRIPTION;
            packagesHistory.total_amount__c      = this.PACKAGE_AMOUNT_GROSS_CUR;
            packagesHistory.net_amount__c      = this.PACKAGE_AMOUNT_NET_CUR;
            packagesHistory.total_amount_euro__c      = this.PACKAGE_AMOUNT_GROSS_EUR;
            packagesHistory.net_amount_euro__c      = this.PACKAGE_AMOUNT_NET_EUR;
            packagesHistory.quantity__c      = this.QTY;
            packagesHistory.product_group__c      = this.PRODUCT_GROUP;
            packagesHistory.holiday_type__c      = this.HOLIDAY_TYPE_NAME;
            packagesHistory.package_name_crs__c      = this.PACKAGE_NAME_CRS;
            packagesHistory.package_from_date__c      = this.PACKAGE_FROM_DATE;
            packagesHistory.CurrencyPicklist__c      = this.CURR_COD;
            packagesHistory.package_to_date__c      = this.PACKAGE_TO_DATE;
            packagesHistory.number_of_passengers__c      = this.QTY_PAX;
            packagesHistory.number_of_adults__c      = this.QTY_ADULT;
            packagesHistory.number_of_children__c      = this.QTY_CHILD;
            packagesHistory.number_of_infants__c      = this.QTY_INFANT;
            packagesHistory.creation_date__c      = this.CREATION_DATE;
            packagesHistory.update_date__c      = this.UPDATE_DATE;
            packagesHistory.line_status__c      = this.PACKAGE_LINE_STATUS;

            return packagesHistory;
        } 
    }

    public class PackageItemInput {

        public String PACKAGE_CODE_TBX   	{get;set;}
        public String ITEM_CODE   	{get;set;}
        public String ITEM_DESCRIPTION   	{get;set;}
        public Decimal ITEM_AMOUNT_GROSS_CURR   	{get;set;}
        public Decimal ITEM_AMOUNT_NET_CURR   	{get;set;}
        public Decimal ITEM_AMOUNT_GROSS_EUR   	{get;set;}
        public Decimal ITEM_AMOUNT_NET_EUR   	{get;set;}
        public Integer ITEM_QTY   	{get;set;}
        public Date ITEM_FROM_DATE   	{get;set;}
        public Date ITEM_TO_DATE   	{get;set;}
        public Integer QTY_PAX   	{get;set;}
        public Integer QTY_ADULT   	{get;set;}
        public Integer QTY_CHILD   	{get;set;}
        public Integer QTY_INFANT   	{get;set;}
        public String CURR_COD   	{get;set;}
        public DateTime CREATION_DATE   	{get;set;}
        public DateTime UPDATE_DATE   	{get;set;}
        public String PACKAGE_Number   	{get;set;}
        public String ITEM_LINE_STATUS   	{get;set;}

        public public_package_item__x getPackageItem() {
            
            public_package_item__x packageItem = new public_package_item__x();    
            packageItem.PackageCodeCRS__c 	   = this.PACKAGE_CODE_TBX;
            packageItem.item_code_crs__c      = this.ITEM_CODE;
            packageItem.description__c      = this.ITEM_DESCRIPTION;
            packageItem.total_amount__c      = this.ITEM_AMOUNT_GROSS_CURR;
            packageItem.net_amount__c      = this.ITEM_AMOUNT_NET_CURR;
            packageItem.amount_gross_eur__c      = this.ITEM_AMOUNT_GROSS_EUR;
            packageItem.amount_net_eur__c      = this.ITEM_AMOUNT_NET_EUR;
            packageItem.quantity__c      = this.ITEM_QTY;
            packageItem.from_date__c      = this.ITEM_FROM_DATE;
            packageItem.to_date__c      = this.ITEM_TO_DATE;
            packageItem.number_of_passengers__c      = this.QTY_PAX;
            packageItem.number_of_adults__c      = this.QTY_ADULT;
            packageItem.number_of_children__c      = this.QTY_CHILD;
            packageItem.number_of_infants__c      = this.QTY_INFANT;
            packageItem.CurrencyPicklist__c      = this.CURR_COD;
            packageItem.creation_date__c      = this.CREATION_DATE;
            packageItem.update_date__c      = this.UPDATE_DATE;
            packageItem.package_number__c      = this.PACKAGE_Number;
            packageItem.LineStatus__c      = this.ITEM_LINE_STATUS;

            return packageItem;
        } 

        public public_package_item_history__x getPackageItemHistory() {
            
            public_package_item_history__x packageItemHistory = new public_package_item_history__x();    
            packageItemHistory.PackageCodeCRSPicklist__c 	   = this.PACKAGE_CODE_TBX;
            packageItemHistory.item_code_crs__c      = this.ITEM_CODE;
            packageItemHistory.description__c      = this.ITEM_DESCRIPTION;
            packageItemHistory.total_amount__c      = this.ITEM_AMOUNT_GROSS_CURR;
            packageItemHistory.net_amount__c      = this.ITEM_AMOUNT_NET_CURR;
            packageItemHistory.amount_gross_eur__c      = this.ITEM_AMOUNT_GROSS_EUR;
            packageItemHistory.amount_net_eur__c      = this.ITEM_AMOUNT_NET_EUR;
            packageItemHistory.quantity__c      = this.ITEM_QTY;
            packageItemHistory.from_date__c      = this.ITEM_FROM_DATE;
            packageItemHistory.to_date__c      = this.ITEM_TO_DATE;
            packageItemHistory.number_of_passengers__c      = this.QTY_PAX;
            packageItemHistory.number_of_adults__c      = this.QTY_ADULT;
            packageItemHistory.number_of_children__c      = this.QTY_CHILD;
            packageItemHistory.number_of_infants__c      = this.QTY_INFANT;
            packageItemHistory.CurrencyPicklist__c      = this.CURR_COD;
            packageItemHistory.creation_date__c      = this.CREATION_DATE;
            packageItemHistory.update_date__c      = this.UPDATE_DATE;
            packageItemHistory.package_number__c      = this.PACKAGE_Number;
            packageItemHistory.LineStatusPicklist__c      = this.ITEM_LINE_STATUS;

            return packageItemHistory;
        }
    }

    public class BookingInput {
        
        public String OPTIN_EMAIL   	{get;set;}
        public String OPTIN_SMS     	{get;set;}
        public String OPTIN_POSTAL  	{get;set;}
        public String EMAIL         	{get;set;}
        public String FIRST_NAME    	{get;set;}
        public String LAST_NAME     	{get;set;}
        public String VOL1          	{get;set;}
        public String VOL2          	{get;set;}
        public String PHONE_1       	{get;set;}
        public String PHONE_2       	{get;set;}        
        public String CITY          	{get;set;}
        public String ZIP_COD       	{get;set;}
        public String ISO_COUNTRY_CODE  {get;set;}
        public Date DATE_OF_BIRTH_PAX1  {get;set;}
        public Decimal TOT_GROSS_EUR 	{get;set;}
        public Decimal TOT_NET_EUR 		{get;set;}
        public String TOT_GROSS_CURR 	{get;set;}
        public Decimal TOT_NET_CURR 	{get;set;}
        public String BOOKING_NUMBER 	{get;set;}
        public Date BOOKING_DATE 		{get;set;}
        public String BOOKING_TYPE		{get;set;}
        public String BOOKING_STATUS    {get;set;}
        public Date ARR_DATE			{get;set;}
        public Date DEP_DATE			{get;set;} 
        public String ID_MOZ			{get;set;}
        public DateTime MOD_DATE 		{get;set;}
        public String BRAND				{get;set;}
        public String IP_ADDRESS		{get;set;}
        public Integer PAX_ADULTS		{get;set;}
        public Integer PAX_CHILDREN 	{get;set;}
        public Integer PAX_INFANTS		{get;set;}
        public String BOOKING_ORIGINS	{get;set;}
        public String AGENCY_CODE		{get;set;}
        public String AGENCY_NAME		{get;set;}
        public String WC_COD			{get;set;}
        public String DIFFUSION_CODE	{get;set;}
        public String BOOKING_SOURCE	{get;set;}
        public String LANGUAGE			{get;set;}
        public Date DATE_OF_BIRTH_PAX2  {get;set;}
        public Date DATE_OF_BIRTH_PAX3  {get;set;}
        public Date DATE_OF_BIRTH_PAX4  {get;set;}
        public Date DATE_OF_BIRTH_PAX5  {get;set;}
        public Date DATE_OF_BIRTH_PAX6  {get;set;}
        public Date DATE_OF_BIRTH_PAX7  {get;set;}
        public Date DATE_OF_BIRTH_PAX8  {get;set;}
        public Date DATE_OF_BIRTH_PAX9  {get;set;}
        public Date DATE_OF_BIRTH_PAX10 {get;set;}
        public Date DATE_OF_BIRTH_PAX11 {get;set;}
        public Date DATE_OF_BIRTH_PAX12 {get;set;}   
        public String HOTEL_CODE 		{get;set;}
        public String SOURCE_OF_BUSINESS  {get;set;}
        public String CURR_CODE {get;set;}
        
        // ADD - LIST OF PACKAGES / PACKAGE ITEMS 
        // Updated 06-AUG-2021; @yasir Sheriff

        //public list<PackageInput> PackageInput {get;set;}
        //public list<PackageItemInput> PackageItemInput {get;set;}

                
        public Account getContactProfile() {
            Account contact          = new Account();
            contact.FirstName        = this.FIRST_NAME;
            contact.LastName         = this.LAST_NAME;
            contact.Email__pc        = this.EMAIL;
            contact.QualificationLevel__pc = '1';
            contact.MarketingEmailConsent__pc 		 = this.OPTIN_EMAIL;
            contact.MarketingSmsConsent__pc 		 = this.OPTIN_SMS;
            contact.MarketingPostalAddressConsent__pc = this.OPTIN_POSTAL;  
            contact.PersonMailingStreet 		= this.VOL1;
            contact.PersonMailingCity  			= this.CITY;
            contact.PersonMailingPostalCode 	= this.ZIP_COD;
            contact.PersonMailingCountry	 	= this.ISO_COUNTRY_CODE;
            contact.PersonBirthdate 			= this.DATE_OF_BIRTH_PAX1; 			
            contact.IPAddress__pc               =this.IP_ADDRESS;
            return contact;

        }       
        
        public public_event__x getEvent() {
            
            public_event__x event 	= new public_event__x(); 
            event.event_date__c   	= this.MOD_DATE;
            event.event_date__c   	= Datetime.now();
            event.EventLabel__c   	= 'BO'; 
			event.MediaSource__c 	= 'WEB';
            event.SourceSystem__c 	= 'Travel Box';
            event.FeatureSource__c  = 'BOOKING';
            
            // TO BE COMPLETED
            
            return event;
        }

        
        public public_active_booking__x getBooking() {
            
            public_active_booking__x booking = new public_active_booking__x();    
            booking.Total_Amount_Euros__c 	 = this.TOT_GROSS_EUR;
            booking.Net_Amount_Euros__c      = this.TOT_NET_EUR;
            booking.Total_Amount__c 	     = this.TOT_GROSS_EUR;
            booking.Booking_Number__c		 = this.BOOKING_NUMBER;
            booking.Date_Of_Booking__c		 = this.BOOKING_DATE;
            booking.Booking_Type__c			 = this.BOOKING_TYPE;
            booking.Booking_Status__c		 = this.BOOKING_STATUS;
            booking.Arrival_Date__c			 = this.ARR_DATE;
            booking.Departure_Date__c		 = this.DEP_DATE;
            booking.CRS_Email__c			     = this.EMAIL;
            booking.ID_MOZ__c				 = this.ID_MOZ;
            booking.Brand__c 				 = this.BRAND;
            booking.Number_Of_Adult__c		 = this.PAX_ADULTS;
            booking.Number_Of_Children__c		 = this.PAX_CHILDREN;
            booking.Number_Of_Infants__c		 = this.PAX_INFANTS;
            booking.Agency_Code__c			 = this.AGENCY_CODE;
            booking.Agency_Name__c		     = this.AGENCY_NAME;
            booking.Work_Council_Code__c		 = this.WC_COD;
            booking.Diffusion_Code__c		 = this.DIFFUSION_CODE;
            booking.Source__c				 = this.BOOKING_SOURCE;
            booking.Country_Code__c		     = this.ISO_COUNTRY_CODE;
    		booking.Passenger_BirthDate_1__c	 = this.DATE_OF_BIRTH_PAX1;
    		booking.Passenger_BirthDate_2__c	 	 = this.DATE_OF_BIRTH_PAX2;
    		booking.Passenger_BirthDate_3__c	 	 = this.DATE_OF_BIRTH_PAX3;
    		booking.Passenger_BirthDate_4__c	 	 = this.DATE_OF_BIRTH_PAX4;
    		booking.Passenger_BirthDate_5__c	 	 = this.DATE_OF_BIRTH_PAX5;
    		booking.Passenger_BirthDate_6__c	 	 = this.DATE_OF_BIRTH_PAX6;
    		booking.Passenger_BirthDate_7__c	 	 = this.DATE_OF_BIRTH_PAX7;
    		booking.Passenger_BirthDate_8__c	 	 = this.DATE_OF_BIRTH_PAX8;
    		booking.Passenger_BirthDate_9__c	 	 = this.DATE_OF_BIRTH_PAX9;
    		booking.Passenger_BirthDate_10__c	 = this.DATE_OF_BIRTH_PAX10;
    		booking.Passenger_BirthDate_11__c	 = this.DATE_OF_BIRTH_PAX11;
    		booking.Passenger_BirthDate_12__c	 = this.DATE_OF_BIRTH_PAX12;
            //last modified by Noor Zaiba
            booking.Business_Offer_Code__c	 = this.SOURCE_OF_BUSINESS;
            booking.CurrencyPicklist__c				 = this.CURR_CODE;
            booking.Origin__c			     = this.BOOKING_ORIGINS;
            booking.Net_Amount__c 			 = this.TOT_NET_CURR;
            booking.modification_date__c     =this.MOD_DATE;
            booking.Hotel__c         = this.HOTEL_CODE;
           
            //booking.ExternalId = this.BOOKING_NUMBER;

            // TO BE COMPLETED
            
            return booking;
        }    
        
        public public_booking_history__x getBookingHistory() {
            
            public_booking_history__x  bookingHistory = new public_booking_history__x (); 
		 	
            bookingHistory.Total_Amount_Euros__c   = this.TOT_GROSS_EUR;
            bookingHistory.Net_Amount_Euros__c      = this.TOT_NET_EUR;
            bookingHistory.Total_Amount__c        = this.TOT_GROSS_EUR;
            bookingHistory.Total_Amount_Euros__c    = this.TOT_GROSS_EUR;
            bookingHistory.Total_Amount_Euros__c    = this.TOT_GROSS_EUR;
            bookingHistory.Booking_Number__c    = this.BOOKING_NUMBER;
            bookingHistory.Date_Of_Booking__c     = this.BOOKING_DATE;
            bookingHistory.Booking_Type__c      = this.BOOKING_TYPE;
            bookingHistory.Booking_Status__c    = this.BOOKING_STATUS;
            bookingHistory.Arrival_Date__c      = this.ARR_DATE;
            bookingHistory.Departure_Date__c    = this.DEP_DATE;
            bookingHistory.CRS_Email__c           = this.EMAIL;
            bookingHistory.ID_MOZ__c        = this.ID_MOZ;
            bookingHistory.Brand__c         = this.BRAND;
            bookingHistory.IP_Address__c        = this.IP_ADDRESS;
            bookingHistory.First_Name__c      = this.FIRST_NAME;
      		bookingHistory.Last_Name__c           = this.LAST_NAME; 
            bookingHistory.Number_Of_Adult__c     = this.PAX_ADULTS;
            bookingHistory.Number_Of_Children__c    = this.PAX_CHILDREN;
            bookingHistory.Number_Of_Infants__c     = this.PAX_INFANTS;
            bookingHistory.Origin__c          = this.BOOKING_ORIGINS;
            bookingHistory.Agency_Code__c       = this.AGENCY_CODE;
            bookingHistory.Agency_Name__c         = this.AGENCY_NAME;
            bookingHistory.Work_Council_Code__c     = this.WC_COD;
            bookingHistory.Diffusion_Code__c    = this.DIFFUSION_CODE;
            bookingHistory.Source__c        = this.BOOKING_SOURCE;
            bookingHistory.Language__c        = this.LANGUAGE;                  
            bookingHistory.Adress_1__c        = this.VOL1;     
      		bookingHistory.Phone_1__c         = this.PHONE_1;     
      		bookingHistory.Phone_2__c         = this.PHONE_2;    
            bookingHistory.City__c          = this.CITY;
            bookingHistory.Zip_Code__c        = this.ZIP_COD;
            bookingHistory.Country_Code__c        = this.ISO_COUNTRY_CODE;
        	bookingHistory.Passenger_BirthDate_1__c   = this.DATE_OF_BIRTH_PAX1;
        	bookingHistory.Passenger_BirthDate_2__c     = this.DATE_OF_BIRTH_PAX2;
        	bookingHistory.Passenger_BirthDate_3__c     = this.DATE_OF_BIRTH_PAX3;
        	bookingHistory.Passenger_BirthDate_4__c     = this.DATE_OF_BIRTH_PAX4;
        	bookingHistory.Passenger_BirthDate_5__c     = this.DATE_OF_BIRTH_PAX5;
        	bookingHistory.Passenger_BirthDate_6__c     = this.DATE_OF_BIRTH_PAX6;
        	bookingHistory.Passenger_BirthDate_7__c     = this.DATE_OF_BIRTH_PAX7;
        	bookingHistory.Passenger_BirthDate_8__c     = this.DATE_OF_BIRTH_PAX8;
        	bookingHistory.Passenger_BirthDate_9__c     = this.DATE_OF_BIRTH_PAX9;
        	bookingHistory.Passenger_BirthDate_10__c  = this.DATE_OF_BIRTH_PAX10;
        	bookingHistory.Passenger_BirthDate_11__c  = this.DATE_OF_BIRTH_PAX11;
            bookingHistory.Passenger_BirthDate_12__c  = this.DATE_OF_BIRTH_PAX12;
            //last modified by Noor 
            bookingHistory.Net_Amount__c        = this.TOT_NET_CURR;
            bookingHistory.Business_Offer_Code__c  = this.SOURCE_OF_BUSINESS;
            bookingHistory.CurrencyPicklist__c         = this.CURR_CODE;
            bookingHistory.Hotel__c         = this.HOTEL_CODE;
            bookingHistory.modification_date__c     =this.MOD_DATE;
            
            return bookingHistory;
        }      
        
    }
    
    public override String getHistoryRefName() {
        return 'Booking__c';
    }
    
    // Name of the field to be used as a key to request existing data
    public override String getkeyName() {
        return 'booking_number__c';
    }    
    
    // Return the Id to be used to query existing records
    public override String getQueryId() {
        return this.bookingInput.BOOKING_NUMBER;        
    }
    
    // Return the query to provision existing data
    public override String getQuery() {
        return 'SELECT Id, personal_data_collection__c, booking_number__c, ExternalId FROM public_active_booking__x';        
    }
    
    public override String getEventParentField() {
        return 'Booking__c';
    }
    
    public override String getRecordExternalId() {
        return (String)this.relatedData.get('Booking_Number__c');
    }
    
    public override String getEventParentHistoryField() {
        return 'Booking_History__c';
    }       

    public override String getCastType() {
        return 'BOOKING';
    }

    /**
     * Query existing Data - Booking, Annual Pass, Travel Wish — and puts data in existing Data Map
     */
    public override void setExistingRelatedData(List<SourceSystemUpdate> updateList) {
        
        if(updateList != null && !updateList.isEmpty()) {

            List<BookingHandler> bookingHandlerList = new List<BookingHandler>();
            
            for(SourceSystemUpdate ssUpdate:updateList) {
                bookingHandlerList.add((BookingHandler)ssUpdate);
            }
            
            for( BookingHandler bookingHandler:bookingHandlerList) {
                SourceSystemUpdate.existingData.put(bookingHandler.bookingInput.BOOKING_NUMBER, null);   
            }

            Set<String> idSet = SourceSystemUpdate.existingData.keySet();
            system.debug('idSet : ' + idSet);
            
            if(!idSet.isEmpty()) {
    
                Set<String> pdcExternalIdSet = new  Set<String>();
    
                for(public_active_booking__x queriedRecord:[SELECT Id, personal_data_collection__c, booking_number__c, ExternalId FROM public_active_booking__x WHERE booking_number__c IN :idSet]) {
    
                    if(queriedRecord.booking_number__c != null) {
                       SourceSystemUpdate.existingData.put((String)queriedRecord.booking_number__c, queriedRecord); 
                    }                
                }
            }            
           
            system.debug('SourceSystemUpdate.existingData : ' + SourceSystemUpdate.existingData);
        }
    }    
    
	// Serialize Data
    public override String serializeData(List<SourceSystemUpdate> updateList) {
        
        List<BookingHandler> bookingHandlerList = new List<BookingHandler>();
        
        for(SourceSystemUpdate updateItem:updateList) {
            bookingHandlerList.add((BookingHandler)updateItem);
        }        
        
        return JSON.serialize(bookingHandlerList);
    }
    
    // Methods to be cleaned

    public override String getRelatedObjectName() {
        return 'public_active_booking__x';
    }

	public override String getRelatedObjectHistoryName() {
        return 'public_booking_history__x';
    }

    public override void setContactProfile(Id contactId) {
        relatedData.put('Contact_Profile__c', contactId);        
    }


    // Virtual Method to allow specific implementation 
    public override void setEvent() {
        
        this.event.Booking__c = (String)this.relatedData.get('ExternalId');
        this.event.Booking_History__c = (String)this.relatedDataHistory.get('ExternalId');
        
        system.debug('this.event.Booking__c '  + this.event.Booking__c);
        
        if(existingData.get(this.bookingInput.BOOKING_NUMBER) != null ) {
            this.event.EventLabel__c = 'BM';                
        }            
    }

    // Virtual Method to allow specific implementation 
    public override void setPdcOrigin() {
            this.pdc.origin__c = 'Booking';
    }
         
}