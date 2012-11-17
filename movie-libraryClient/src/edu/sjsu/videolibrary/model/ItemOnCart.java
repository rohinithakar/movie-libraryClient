/**
 * ItemOnCart.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package edu.sjsu.videolibrary.model;

public class ItemOnCart  implements java.io.Serializable {
    private java.lang.String category;

    private java.lang.String movieBanner;

    private int movieId;

    private java.lang.String movieName;

    private double rentAmount;

    public ItemOnCart() {
    }

    public ItemOnCart(
           java.lang.String category,
           java.lang.String movieBanner,
           int movieId,
           java.lang.String movieName,
           double rentAmount) {
           this.category = category;
           this.movieBanner = movieBanner;
           this.movieId = movieId;
           this.movieName = movieName;
           this.rentAmount = rentAmount;
    }


    /**
     * Gets the category value for this ItemOnCart.
     * 
     * @return category
     */
    public java.lang.String getCategory() {
        return category;
    }


    /**
     * Sets the category value for this ItemOnCart.
     * 
     * @param category
     */
    public void setCategory(java.lang.String category) {
        this.category = category;
    }


    /**
     * Gets the movieBanner value for this ItemOnCart.
     * 
     * @return movieBanner
     */
    public java.lang.String getMovieBanner() {
        return movieBanner;
    }


    /**
     * Sets the movieBanner value for this ItemOnCart.
     * 
     * @param movieBanner
     */
    public void setMovieBanner(java.lang.String movieBanner) {
        this.movieBanner = movieBanner;
    }


    /**
     * Gets the movieId value for this ItemOnCart.
     * 
     * @return movieId
     */
    public int getMovieId() {
        return movieId;
    }


    /**
     * Sets the movieId value for this ItemOnCart.
     * 
     * @param movieId
     */
    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }


    /**
     * Gets the movieName value for this ItemOnCart.
     * 
     * @return movieName
     */
    public java.lang.String getMovieName() {
        return movieName;
    }


    /**
     * Sets the movieName value for this ItemOnCart.
     * 
     * @param movieName
     */
    public void setMovieName(java.lang.String movieName) {
        this.movieName = movieName;
    }


    /**
     * Gets the rentAmount value for this ItemOnCart.
     * 
     * @return rentAmount
     */
    public double getRentAmount() {
        return rentAmount;
    }


    /**
     * Sets the rentAmount value for this ItemOnCart.
     * 
     * @param rentAmount
     */
    public void setRentAmount(double rentAmount) {
        this.rentAmount = rentAmount;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof ItemOnCart)) return false;
        ItemOnCart other = (ItemOnCart) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.category==null && other.getCategory()==null) || 
             (this.category!=null &&
              this.category.equals(other.getCategory()))) &&
            ((this.movieBanner==null && other.getMovieBanner()==null) || 
             (this.movieBanner!=null &&
              this.movieBanner.equals(other.getMovieBanner()))) &&
            this.movieId == other.getMovieId() &&
            ((this.movieName==null && other.getMovieName()==null) || 
             (this.movieName!=null &&
              this.movieName.equals(other.getMovieName()))) &&
            this.rentAmount == other.getRentAmount();
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
        if (getCategory() != null) {
            _hashCode += getCategory().hashCode();
        }
        if (getMovieBanner() != null) {
            _hashCode += getMovieBanner().hashCode();
        }
        _hashCode += getMovieId();
        if (getMovieName() != null) {
            _hashCode += getMovieName().hashCode();
        }
        _hashCode += new Double(getRentAmount()).hashCode();
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(ItemOnCart.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "ItemOnCart"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("category");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "category"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("movieBanner");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "movieBanner"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("movieId");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "movieId"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("movieName");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "movieName"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("rentAmount");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "rentAmount"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "double"));
        elemField.setNillable(false);
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
