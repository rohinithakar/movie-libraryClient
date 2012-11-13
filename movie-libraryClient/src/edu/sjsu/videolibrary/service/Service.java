/**
 * Service.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package edu.sjsu.videolibrary.service;

public interface Service extends java.rmi.Remote {
    public boolean addItemsToCart(int membershipId, int movieId) throws java.rmi.RemoteException;
    public boolean deleteMovieFromCart(int movieId, int membershipId) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.ItemOnCart[] viewCart(int membershipId) throws java.rmi.RemoteException;
    public java.lang.String signUpAdmin(java.lang.String userId, java.lang.String password, java.lang.String firstName, java.lang.String lastName) throws java.rmi.RemoteException;
    public java.lang.String signInUser(java.lang.String userId, java.lang.String password) throws java.rmi.RemoteException;
    public java.lang.String signInAdmin(java.lang.String userId, java.lang.String password) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.User[] viewMembers(java.lang.String type) throws java.rmi.RemoteException;
    public java.lang.String deleteUserAccount(java.lang.String userId) throws java.rmi.RemoteException;
    public java.lang.String deleteAdminAccount(java.lang.String userId) throws java.rmi.RemoteException;
    public java.lang.String deleteMovie(java.lang.String movieId) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.User displayUserInformation(java.lang.String membershipId) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.Movie displayMovieInformation(java.lang.String movieId) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions(java.lang.String membershipId) throws java.rmi.RemoteException;
    public java.lang.String makeMonthlyPayment(java.lang.String membershipId) throws java.rmi.RemoteException;
    public java.lang.String updateUserInfo(java.lang.String membershipId, java.lang.String userId, java.lang.String firstName, java.lang.String lastName, java.lang.String address, java.lang.String city, java.lang.String state, java.lang.String zipCode, java.lang.String membershipType, java.lang.String creditCardNumber) throws java.rmi.RemoteException;
    public java.lang.String updatePassword(java.lang.String membershipId, java.lang.String oldPassword, java.lang.String newPassword) throws java.rmi.RemoteException;
    public java.lang.String updateMovieInfo(java.lang.String movieId, java.lang.String movieName, java.lang.String movieBanner, java.lang.String releaseDate, int availableCopies, double rentAmount, int categoryId) throws java.rmi.RemoteException;
    public java.lang.String generateMonthlyStatement(java.lang.String membershipId, int month, int year) throws java.rmi.RemoteException;
    public edu.sjsu.videolibrary.model.StatementInfo[] viewStatement(java.lang.String membershipId, int month, int year) throws java.rmi.RemoteException;
    public double getRentAmountforMovie() throws java.rmi.RemoteException;
    public double getMonthlyFeesForPremiumMember() throws java.rmi.RemoteException;
}
