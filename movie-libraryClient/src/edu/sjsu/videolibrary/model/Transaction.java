/**
 * Transaction.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package edu.sjsu.videolibrary.model;

public class Transaction  implements java.io.Serializable {
    private java.lang.String movieName;

    private double perMovieAmount;

    private java.lang.String purchaseDate;

    private java.lang.String returnDate;

    public Transaction() {
    }

    public Transaction(
           java.lang.String movieName,
           double perMovieAmount,
           java.lang.String purchaseDate,
           java.lang.String returnDate) {
           this.movieName = movieName;
           this.perMovieAmount = perMovieAmount;
           this.purchaseDate = purchaseDate;
           this.returnDate = returnDate;
    }


    /**
     * Gets the movieName value for this Transaction.
     * 
     * @return movieName
     */
    public java.lang.String getMovieName() {
        return movieName;
    }


    /**
     * Sets the movieName value for this Transaction.
     * 
     * @param movieName
     */
    public void setMovieName(java.lang.String movieName) {
        this.movieName = movieName;
    }


    /**
     * Gets the perMovieAmount value for this Transaction.
     * 
     * @return perMovieAmount
     */
    public double getPerMovieAmount() {
        return perMovieAmount;
    }


    /**
     * Sets the perMovieAmount value for this Transaction.
     * 
     * @param perMovieAmount
     */
    public void setPerMovieAmount(double perMovieAmount) {
        this.perMovieAmount = perMovieAmount;
    }


    /**
     * Gets the purchaseDate value for this Transaction.
     * 
     * @return purchaseDate
     */
    public java.lang.String getPurchaseDate() {
        return purchaseDate;
    }


    /**
     * Sets the purchaseDate value for this Transaction.
     * 
     * @param purchaseDate
     */
    public void setPurchaseDate(java.lang.String purchaseDate) {
        this.purchaseDate = purchaseDate;
    }


    /**
     * Gets the returnDate value for this Transaction.
     * 
     * @return returnDate
     */
    public java.lang.String getReturnDate() {
        return returnDate;
    }


    /**
     * Sets the returnDate value for this Transaction.
     * 
     * @param returnDate
     */
    public void setReturnDate(java.lang.String returnDate) {
        this.returnDate = returnDate;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Transaction)) return false;
        Transaction other = (Transaction) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.movieName==null && other.getMovieName()==null) || 
             (this.movieName!=null &&
              this.movieName.equals(other.getMovieName()))) &&
            this.perMovieAmount == other.getPerMovieAmount() &&
            ((this.purchaseDate==null && other.getPurchaseDate()==null) || 
             (this.purchaseDate!=null &&
              this.purchaseDate.equals(other.getPurchaseDate()))) &&
            ((this.returnDate==null && other.getReturnDate()==null) || 
             (this.returnDate!=null &&
              this.returnDate.equals(other.getReturnDate())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getMovieName() != null) {
            _hashCode += getMovieName().hashCode();
        }
        _hashCode += new Double(getPerMovieAmount()).hashCode();
        if (getPurchaseDate() != null) {
            _hashCode += getPurchaseDate().hashCode();
        }
        if (getReturnDate() != null) {
            _hashCode += getReturnDate().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Transaction.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "Transaction"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("movieName");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "movieName"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("perMovieAmount");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "perMovieAmount"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "double"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("purchaseDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "purchaseDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("returnDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "returnDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
