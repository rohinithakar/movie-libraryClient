/**
 * Service.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package edu.sjsu.videolibrary.service;

public interface Service extends java.rmi.Remote {
    public java.lang.String[] getStates() throws java.rmi.RemoteException;
    public java.lang.String addItemsToCart(int membershipId, int movieId) throws java.rmi.RemoteException;
    public java.lang.String deleteMovieFromCart(int movieId, int membershipId) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.ItemOnCart[] viewCart(int membershipId) throws java.rmi.RemoteException;
    public java.lang.String checkOutMovieCart(int membershipId, java.lang.String creditCardNumber) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.User signUpUser(java.lang.String userId, java.lang.String password, java.lang.String memType, java.lang.String firstName, java.lang.String lastName, java.lang.String address, java.lang.String city, java.lang.String state, java.lang.String zipCode, java.lang.String ccNumber) throws java.rmi.RemoteException;
    public java.lang.String signUpAdmin(java.lang.String userId, java.lang.String password, java.lang.String firstName, java.lang.String lastName) throws java.rmi.RemoteException;
    public java.lang.String signInUser(java.lang.String userId, java.lang.String password) throws java.rmi.RemoteException;
    public java.lang.String signInAdmin(java.lang.String userId, java.lang.String password) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.User[] viewMembers(java.lang.String type) throws java.rmi.RemoteException;
    public java.lang.String deleteUserAccount(java.lang.String userId) throws java.rmi.RemoteException;
    public java.lang.String deleteAdminAccount(java.lang.String userId) throws java.rmi.RemoteException;
    public java.lang.String createNewMovie(java.lang.String movieName, java.lang.String movieBanner, java.lang.String releaseDate, int availableCopies, int categoryId) throws java.rmi.RemoteException;
    public java.lang.String deleteMovie(java.lang.String movieId) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.User displayUserInformation(int membershipId) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.Movie displayMovieInformation(int movieId) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions(int membershipId) throws java.rmi.RemoteException;
    public java.lang.String makeMonthlyPayment(int membershipId) throws java.rmi.RemoteException;
    public java.lang.String updateUserInfo(int membershipId, java.lang.String userId, java.lang.String firstName, java.lang.String lastName, java.lang.String address, java.lang.String city, java.lang.String state, java.lang.String zipCode, java.lang.String membershipType, java.lang.String creditCardNumber) throws java.rmi.RemoteException;
    public java.lang.String updatePassword(int membershipId, java.lang.String oldPassword, java.lang.String newPassword) throws java.rmi.RemoteException;
    public java.lang.String updateMovieInfo(int movieId, java.lang.String movieName, java.lang.String movieBanner, java.lang.String releaseDate, int availableCopies, int categoryId) throws java.rmi.RemoteException;
    public java.lang.String generateMonthlyStatement(int membershipId, int month, int year) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.StatementInfo[] viewStatement(int membershipId, int month, int year) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo generateMonthlyBillForPremiumMember(int membershipId, int month, int year) throws java.rmi.RemoteException;
    public double getRentAmountforMovie() throws java.rmi.RemoteException;
    public double getMonthlyFeesForPremiumMember() throws java.rmi.RemoteException;
    public java.lang.String[] listCategories() throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.Movie[] listMoviesByCategory(java.lang.String categoryName) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.Movie[] listAllMovies() throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.Movie[] searchByName(java.lang.String userInput) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.Movie[] searchByMovieBanner(java.lang.String userInput) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.Movie[] searchByReleaseDate(java.lang.String userInput) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.User[] searchUserByFirstName(java.lang.String adminInput) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.User[] searchUserByLastName(java.lang.String adminInput) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.User[] searchUserByCity(java.lang.String adminInput) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.User[] searchUserByState(java.lang.String adminInput) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.User[] searchUserByMemberShipType(java.lang.String adminInput) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.User[] searchUserByMembershipId(int adminInput) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.Admin displayAdminInformation(java.lang.String adminId) throws java.rmi.RemoteException;
    public java.lang.String updateAdminInfo(java.lang.String adminId, java.lang.String firstName, java.lang.String lastName, java.lang.String password) throws java.rmi.RemoteException;
    public java.lang.String updateUserPassword(int membershipId, java.lang.String newPassword) throws java.rmi.RemoteException;
}
