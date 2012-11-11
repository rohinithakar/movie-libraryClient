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
}
