public class BookingSourceFileController {
    
    public BookingHandler.BookingInput bookingInput {get; set;}
    public BookingHandler.PackageInput packageInput {get; set;}
    public BookingHandler.PackageItemInput packageItemInput {get; set;}

    
    public BookingSourceFileController() {
        
        bookingInput = new BookingHandler.BookingInput();
        packageInput = new BookingHandler.PackageInput();
        packageItemInput=new BookingHandler.PackageItemInput();
    }
    
    public PageReference sendBooking() {
        System.debug('bookingInput->'+bookingInput);
      	bookingInput.MOD_DATE = DateTime.now();
        EventHandler.processBookings(new EventHandler.BookingInput(bookingInput));
	        
        return null;
    }    

    //Updated @Yasir Sheriff; 05-Aug-21;
    public PageReference sendPackage() {
        
        // bookingInput.MOD_DATE = DateTime.now();
        //EventHandler.processPackages(new EventHandler.PackageInput(packageInput));
          
        return null;
    }    
}