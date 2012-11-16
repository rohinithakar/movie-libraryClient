/**
 * Movie.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package edu.sjsu.videolibrary.model;

public class Movie  implements java.io.Serializable {
    private int availableCopies;

    private java.lang.String[] buyerList;

    private java.lang.String catagory;

    private int categoryId;

    private java.lang.String movieBanner;

    private int movieId;

    private java.lang.String movieName;

    private java.lang.String releaseDate;

    private double rentAmount;

    public Movie() {
    }

    public Movie(
           int availableCopies,
           java.lang.String[] buyerList,
           java.lang.String catagory,
           int categoryId,
           java.lang.String movieBanner,
           int movieId,
           java.lang.String movieName,
           java.lang.String releaseDate,
           double rentAmount) {
           this.availableCopies = availableCopies;
           this.buyerList = buyerList;
           this.catagory = catagory;
           this.categoryId = categoryId;
           this.movieBanner = movieBanner;
           this.movieId = movieId;
           this.movieName = movieName;
           this.releaseDate = releaseDate;
           this.rentAmount = rentAmount;
    }


    /**
     * Gets the availableCopies value for this Movie.
     * 
     * @return availableCopies
     */
    public int getAvailableCopies() {
        return availableCopies;
    }


    /**
     * Sets the availableCopies value for this Movie.
     * 
     * @param availableCopies
     */
    public void setAvailableCopies(int availableCopies) {
        this.availableCopies = availableCopies;
    }


    /**
     * Gets the buyerList value for this Movie.
     * 
     * @return buyerList
     */
    public java.lang.String[] getBuyerList() {
        return buyerList;
    }


    /**
     * Sets the buyerList value for this Movie.
     * 
     * @param buyerList
     */
    public void setBuyerList(java.lang.String[] buyerList) {
        this.buyerList = buyerList;
    }


    /**
     * Gets the catagory value for this Movie.
     * 
     * @return catagory
     */
    public java.lang.String getCatagory() {
        return catagory;
    }


    /**
     * Sets the catagory value for this Movie.
     * 
     * @param catagory
     */
    public void setCatagory(java.lang.String catagory) {
        this.catagory = catagory;
    }


    /**
     * Gets the categoryId value for this Movie.
     * 
     * @return categoryId
     */
    public int getCategoryId() {
        return categoryId;
    }


    /**
     * Sets the categoryId value for this Movie.
     * 
     * @param categoryId
     */
    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }


    /**
     * Gets the movieBanner value for this Movie.
     * 
     * @return movieBanner
     */
    public java.lang.String getMovieBanner() {
        return movieBanner;
    }


    /**
     * Sets the movieBanner value for this Movie.
     * 
     * @param movieBanner
     */
    public void setMovieBanner(java.lang.String movieBanner) {
        this.movieBanner = movieBanner;
    }


    /**
     * Gets the movieId value for this Movie.
     * 
     * @return movieId
     */
    public int getMovieId() {
        return movieId;
    }


    /**
     * Sets the movieId value for this Movie.
     * 
     * @param movieId
     */
    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }


    /**
     * Gets the movieName value for this Movie.
     * 
     * @return movieName
     */
    public java.lang.String getMovieName() {
        return movieName;
    }


    /**
     * Sets the movieName value for this Movie.
     * 
     * @param movieName
     */
    public void setMovieName(java.lang.String movieName) {
        this.movieName = movieName;
    }


    /**
     * Gets the releaseDate value for this Movie.
     * 
     * @return releaseDate
     */
    public java.lang.String getReleaseDate() {
        return releaseDate;
    }


    /**
     * Sets the releaseDate value for this Movie.
     * 
     * @param releaseDate
     */
    public void setReleaseDate(java.lang.String releaseDate) {
        this.releaseDate = releaseDate;
    }


    /**
     * Gets the rentAmount value for this Movie.
     * 
     * @return rentAmount
     */
    public double getRentAmount() {
        return rentAmount;
    }


    /**
     * Sets the rentAmount value for this Movie.
     * 
     * @param rentAmount
     */
    public void setRentAmount(double rentAmount) {
        this.rentAmount = rentAmount;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Movie)) return false;
        Movie other = (Movie) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            this.availableCopies == other.getAvailableCopies() &&
            ((this.buyerList==null && other.getBuyerList()==null) || 
             (this.buyerList!=null &&
              java.util.Arrays.equals(this.buyerList, other.getBuyerList()))) &&
            ((this.catagory==null && other.getCatagory()==null) || 
             (this.catagory!=null &&
              this.catagory.equals(other.getCatagory()))) &&
            this.categoryId == other.getCategoryId() &&
            ((this.movieBanner==null && other.getMovieBanner()==null) || 
             (this.movieBanner!=null &&
              this.movieBanner.equals(other.getMovieBanner()))) &&
            this.movieId == other.getMovieId() &&
            ((this.movieName==null && other.getMovieName()==null) || 
             (this.movieName!=null &&
              this.movieName.equals(other.getMovieName()))) &&
            ((this.releaseDate==null && other.getReleaseDate()==null) || 
             (this.releaseDate!=null &&
              this.releaseDate.equals(other.getReleaseDate()))) &&
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
        _hashCode += getAvailableCopies();
        if (getBuyerList() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getBuyerList());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getBuyerList(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getCatagory() != null) {
            _hashCode += getCatagory().hashCode();
        }
        _hashCode += getCategoryId();
        if (getMovieBanner() != null) {
            _hashCode += getMovieBanner().hashCode();
        }
        _hashCode += getMovieId();
        if (getMovieName() != null) {
            _hashCode += getMovieName().hashCode();
        }
        if (getReleaseDate() != null) {
            _hashCode += getReleaseDate().hashCode();
        }
        _hashCode += new Double(getRentAmount()).hashCode();
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Movie.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "Movie"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("availableCopies");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "availableCopies"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("buyerList");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "buyerList"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        elemField.setItemQName(new javax.xml.namespace.QName("http://service.videolibrary.sjsu.edu", "item"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("catagory");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "catagory"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("categoryId");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "categoryId"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
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
        elemField.setFieldName("releaseDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "releaseDate"));
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
