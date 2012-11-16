/**
 * StatementInfo.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package edu.sjsu.videolibrary.model;

public class StatementInfo  implements java.io.Serializable {
    private java.lang.String movieId;

    private java.lang.String movieName;

    private java.lang.String rentDate;

    private java.lang.String returnDate;

    private java.lang.String totalDueAmount;

    public StatementInfo() {
    }

    public StatementInfo(
           java.lang.String movieId,
           java.lang.String movieName,
           java.lang.String rentDate,
           java.lang.String returnDate,
           java.lang.String totalDueAmount) {
           this.movieId = movieId;
           this.movieName = movieName;
           this.rentDate = rentDate;
           this.returnDate = returnDate;
           this.totalDueAmount = totalDueAmount;
    }


    /**
     * Gets the movieId value for this StatementInfo.
     * 
     * @return movieId
     */
    public java.lang.String getMovieId() {
        return movieId;
    }


    /**
     * Sets the movieId value for this StatementInfo.
     * 
     * @param movieId
     */
    public void setMovieId(java.lang.String movieId) {
        this.movieId = movieId;
    }


    /**
     * Gets the movieName value for this StatementInfo.
     * 
     * @return movieName
     */
    public java.lang.String getMovieName() {
        return movieName;
    }


    /**
     * Sets the movieName value for this StatementInfo.
     * 
     * @param movieName
     */
    public void setMovieName(java.lang.String movieName) {
        this.movieName = movieName;
    }


    /**
     * Gets the rentDate value for this StatementInfo.
     * 
     * @return rentDate
     */
    public java.lang.String getRentDate() {
        return rentDate;
    }


    /**
     * Sets the rentDate value for this StatementInfo.
     * 
     * @param rentDate
     */
    public void setRentDate(java.lang.String rentDate) {
        this.rentDate = rentDate;
    }


    /**
     * Gets the returnDate value for this StatementInfo.
     * 
     * @return returnDate
     */
    public java.lang.String getReturnDate() {
        return returnDate;
    }


    /**
     * Sets the returnDate value for this StatementInfo.
     * 
     * @param returnDate
     */
    public void setReturnDate(java.lang.String returnDate) {
        this.returnDate = returnDate;
    }


    /**
     * Gets the totalDueAmount value for this StatementInfo.
     * 
     * @return totalDueAmount
     */
    public java.lang.String getTotalDueAmount() {
        return totalDueAmount;
    }


    /**
     * Sets the totalDueAmount value for this StatementInfo.
     * 
     * @param totalDueAmount
     */
    public void setTotalDueAmount(java.lang.String totalDueAmount) {
        this.totalDueAmount = totalDueAmount;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof StatementInfo)) return false;
        StatementInfo other = (StatementInfo) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.movieId==null && other.getMovieId()==null) || 
             (this.movieId!=null &&
              this.movieId.equals(other.getMovieId()))) &&
            ((this.movieName==null && other.getMovieName()==null) || 
             (this.movieName!=null &&
              this.movieName.equals(other.getMovieName()))) &&
            ((this.rentDate==null && other.getRentDate()==null) || 
             (this.rentDate!=null &&
              this.rentDate.equals(other.getRentDate()))) &&
            ((this.returnDate==null && other.getReturnDate()==null) || 
             (this.returnDate!=null &&
              this.returnDate.equals(other.getReturnDate()))) &&
            ((this.totalDueAmount==null && other.getTotalDueAmount()==null) || 
             (this.totalDueAmount!=null &&
              this.totalDueAmount.equals(other.getTotalDueAmount())));
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
        if (getMovieId() != null) {
            _hashCode += getMovieId().hashCode();
        }
        if (getMovieName() != null) {
            _hashCode += getMovieName().hashCode();
        }
        if (getRentDate() != null) {
            _hashCode += getRentDate().hashCode();
        }
        if (getReturnDate() != null) {
            _hashCode += getReturnDate().hashCode();
        }
        if (getTotalDueAmount() != null) {
            _hashCode += getTotalDueAmount().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(StatementInfo.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "StatementInfo"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("movieId");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "movieId"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("movieName");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "movieName"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("rentDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "rentDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("returnDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "returnDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("totalDueAmount");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "totalDueAmount"));
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
