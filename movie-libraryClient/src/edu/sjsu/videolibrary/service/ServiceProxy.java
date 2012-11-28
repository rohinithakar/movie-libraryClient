package edu.sjsu.videolibrary.service;

public class ServiceProxy implements edu.sjsu.videolibrary.service.Service {
  private String _endpoint = null;
  private edu.sjsu.videolibrary.service.Service service = null;
  
  public ServiceProxy() {
    _initServiceProxy();
  }
  
  public ServiceProxy(String endpoint) {
    _endpoint = endpoint;
    _initServiceProxy();
  }
  
  private void _initServiceProxy() {
    try {
      service = (new edu.sjsu.videolibrary.service.ServiceServiceLocator()).getService();
      if (service != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)service)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)service)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (service != null)
      ((javax.xml.rpc.Stub)service)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public edu.sjsu.videolibrary.service.Service getService() {
    if (service == null)
      _initServiceProxy();
    return service;
  }
  
  public void returnMovie() throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    service.returnMovie();
  }
  
  public java.lang.String signUpUser(java.lang.String userId, java.lang.String password, java.lang.String memType, java.lang.String firstName, java.lang.String lastName, java.lang.String address, java.lang.String city, java.lang.String state, java.lang.String zipCode, java.lang.String ccNumber) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.signUpUser(userId, password, memType, firstName, lastName, address, city, state, zipCode, ccNumber);
  }
  
  public java.lang.String signUpAdmin(java.lang.String userId, java.lang.String password, java.lang.String firstName, java.lang.String lastName) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.signUpAdmin(userId, password, firstName, lastName);
  }
  
  public edu.sjsu.videolibrary.model.User signInUser(java.lang.String userId, java.lang.String password) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.signInUser(userId, password);
  }
  
  public edu.sjsu.videolibrary.model.Admin signInAdmin(java.lang.String userId, java.lang.String password) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.signInAdmin(userId, password);
  }
  
  public edu.sjsu.videolibrary.model.User[] viewMembers(java.lang.String type) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.viewMembers(type);
  }
  
  public edu.sjsu.videolibrary.model.Admin[] viewAdmins() throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.viewAdmins();
  }
  
  public edu.sjsu.videolibrary.model.Movie[] searchMovie(java.lang.String movieName, java.lang.String movieBanner, java.lang.String releaseDate) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.searchMovie(movieName, movieBanner, releaseDate);
  }
  
  public java.lang.String deleteMovie(java.lang.String movieId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.deleteMovie(movieId);
  }
  
  public edu.sjsu.videolibrary.model.User[] searchUser(java.lang.String membershipId, java.lang.String userId, java.lang.String membershipType, java.lang.String startDate, java.lang.String firstName, java.lang.String lastName, java.lang.String address, java.lang.String city, java.lang.String state, java.lang.String zipCode) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.searchUser(membershipId, userId, membershipType, startDate, firstName, lastName, address, city, state, zipCode);
  }
  
  public edu.sjsu.videolibrary.model.ItemOnCart[] viewCart(int membershipId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.viewCart(membershipId);
  }
  
  public java.lang.String[] getStates() throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.getStates();
  }
  
  public edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo generateMonthlyBillForPremiumMember(int membershipId, int month, int year) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.generateMonthlyBillForPremiumMember(membershipId, month, year);
  }
  
  public double getMonthlyFeesForPremiumMember() throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.getMonthlyFeesForPremiumMember();
  }
  
  public boolean checkOutMovieCart(int membershipId, java.lang.String creditCardNumber) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.checkOutMovieCart(membershipId, creditCardNumber);
  }
  
  public boolean addItemsToCart(int membershipId, int movieId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.addItemsToCart(membershipId, movieId);
  }
  
  public boolean deleteMovieFromCart(int movieId, int membershipId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.deleteMovieFromCart(movieId, membershipId);
  }
  
  public java.lang.String deleteUserAccount(java.lang.String userId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.deleteUserAccount(userId);
  }
  
  public java.lang.String deleteAdminAccount(java.lang.String userId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.deleteAdminAccount(userId);
  }
  
  public java.lang.String createNewMovie(java.lang.String movieName, java.lang.String movieBanner, java.lang.String releaseDate, int availableCopies, int categoryId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.createNewMovie(movieName, movieBanner, releaseDate, availableCopies, categoryId);
  }
  
  public edu.sjsu.videolibrary.model.Movie[] listAllMovies() throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.listAllMovies();
  }
  
  public edu.sjsu.videolibrary.model.Movie[] listMoviesByCategory(java.lang.String categoryName) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.listMoviesByCategory(categoryName);
  }
  
  public edu.sjsu.videolibrary.model.User displayUserInformation(int membershipId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.displayUserInformation(membershipId);
  }
  
  public edu.sjsu.videolibrary.model.Movie displayMovieInformation(int movieId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.displayMovieInformation(movieId);
  }
  
  public edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions(int membershipId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.viewAccountTransactions(membershipId);
  }
  
  public java.lang.String makeMonthlyPayment(int membershipId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.makeMonthlyPayment(membershipId);
  }
  
  public java.lang.String updateUserInfo(int membershipId, java.lang.String userId, java.lang.String firstName, java.lang.String lastName, java.lang.String address, java.lang.String city, java.lang.String state, java.lang.String zipCode, java.lang.String membershipType, java.lang.String creditCardNumber) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.updateUserInfo(membershipId, userId, firstName, lastName, address, city, state, zipCode, membershipType, creditCardNumber);
  }
  
  public java.lang.String updatePassword(int membershipId, java.lang.String oldPassword, java.lang.String newPassword) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.updatePassword(membershipId, oldPassword, newPassword);
  }
  
  public java.lang.String updateMovieInfo(int movieId, java.lang.String movieName, java.lang.String movieBanner, java.lang.String releaseDate, int availableCopies, int categoryId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.updateMovieInfo(movieId, movieName, movieBanner, releaseDate, availableCopies, categoryId);
  }
  
  public java.lang.String generateMonthlyStatement(int membershipId, int month, int year) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.generateMonthlyStatement(membershipId, month, year);
  }
  
  public edu.sjsu.videolibrary.model.StatementInfo[] viewStatement(int membershipId, int month, int year) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.viewStatement(membershipId, month, year);
  }
  
  public double getRentAmountforMovie() throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.getRentAmountforMovie();
  }
  
  public java.lang.String[] listCategories() throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.listCategories();
  }
  
  public edu.sjsu.videolibrary.model.Admin displayAdminInformation(java.lang.String adminId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.displayAdminInformation(adminId);
  }
  
  public java.lang.String updateAdminInfo(java.lang.String adminId, java.lang.String firstName, java.lang.String lastName, java.lang.String password) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.updateAdminInfo(adminId, firstName, lastName, password);
  }
  
  public java.lang.String updateUserPassword(int membershipId, java.lang.String newPassword) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.updateUserPassword(membershipId, newPassword);
  }
  
  
}