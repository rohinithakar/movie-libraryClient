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
  
  public edu.sjsu.videolibrary.model.ItemOnCart[] viewCart(int membershipId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.viewCart(membershipId);
  }
  
  public java.lang.String signUpAdmin(java.lang.String userId, java.lang.String password, java.lang.String firstName, java.lang.String lastName) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.signUpAdmin(userId, password, firstName, lastName);
  }
  
  public java.lang.String signInUser(java.lang.String userId, java.lang.String password) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.signInUser(userId, password);
  }
  
  public java.lang.String signInAdmin(java.lang.String userId, java.lang.String password) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.signInAdmin(userId, password);
  }
  
  public edu.sjsu.videolibrary.model.User[] viewMembers(java.lang.String type) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.viewMembers(type);
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
  
  public java.lang.String deleteMovie(java.lang.String movieId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.deleteMovie(movieId);
  }
  
  public edu.sjsu.videolibrary.model.User displayUserInformation(java.lang.String membershipId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.displayUserInformation(membershipId);
  }
  
  public edu.sjsu.videolibrary.model.Movie displayMovieInformation(java.lang.String movieId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.displayMovieInformation(movieId);
  }
  
  public edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions(java.lang.String membershipId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.viewAccountTransactions(membershipId);
  }
  
  public java.lang.String makeMonthlyPayment(java.lang.String membershipId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.makeMonthlyPayment(membershipId);
  }
  
  public java.lang.String updateUserInfo(java.lang.String membershipId, java.lang.String userId, java.lang.String firstName, java.lang.String lastName, java.lang.String address, java.lang.String city, java.lang.String state, java.lang.String zipCode, java.lang.String membershipType, java.lang.String creditCardNumber) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.updateUserInfo(membershipId, userId, firstName, lastName, address, city, state, zipCode, membershipType, creditCardNumber);
  }
  
  public java.lang.String updatePassword(java.lang.String membershipId, java.lang.String oldPassword, java.lang.String newPassword) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.updatePassword(membershipId, oldPassword, newPassword);
  }
  
  public java.lang.String updateMovieInfo(java.lang.String movieId, java.lang.String movieName, java.lang.String movieBanner, java.lang.String releaseDate, int availableCopies, double rentAmount, int categoryId) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.updateMovieInfo(movieId, movieName, movieBanner, releaseDate, availableCopies, rentAmount, categoryId);
  }
  
  public java.lang.String generateMonthlyStatement(java.lang.String membershipId, int month, int year) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.generateMonthlyStatement(membershipId, month, year);
  }
  
  public edu.sjsu.videolibrary.model.StatementInfo[] viewStatement(java.lang.String membershipId, int month, int year) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.viewStatement(membershipId, month, year);
  }
  
  public double getRentAmountforMovie() throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.getRentAmountforMovie();
  }
  
  public double getMonthlyFeesForPremiumMember() throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.getMonthlyFeesForPremiumMember();
  }
  
  
}