/**
 * PaymentForPremiumMemInfo.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package edu.sjsu.videolibrary.model;

public class PaymentForPremiumMemInfo  implements java.io.Serializable {
    private double monthlyPaymentAmount;

    private java.lang.String paymentDate;

    private java.lang.String paymentStatus;

    public PaymentForPremiumMemInfo() {
    }

    public PaymentForPremiumMemInfo(
           double monthlyPaymentAmount,
           java.lang.String paymentDate,
           java.lang.String paymentStatus) {
           this.monthlyPaymentAmount = monthlyPaymentAmount;
           this.paymentDate = paymentDate;
           this.paymentStatus = paymentStatus;
    }


    /**
     * Gets the monthlyPaymentAmount value for this PaymentForPremiumMemInfo.
     * 
     * @return monthlyPaymentAmount
     */
    public double getMonthlyPaymentAmount() {
        return monthlyPaymentAmount;
    }


    /**
     * Sets the monthlyPaymentAmount value for this PaymentForPremiumMemInfo.
     * 
     * @param monthlyPaymentAmount
     */
    public void setMonthlyPaymentAmount(double monthlyPaymentAmount) {
        this.monthlyPaymentAmount = monthlyPaymentAmount;
    }


    /**
     * Gets the paymentDate value for this PaymentForPremiumMemInfo.
     * 
     * @return paymentDate
     */
    public java.lang.String getPaymentDate() {
        return paymentDate;
    }


    /**
     * Sets the paymentDate value for this PaymentForPremiumMemInfo.
     * 
     * @param paymentDate
     */
    public void setPaymentDate(java.lang.String paymentDate) {
        this.paymentDate = paymentDate;
    }


    /**
     * Gets the paymentStatus value for this PaymentForPremiumMemInfo.
     * 
     * @return paymentStatus
     */
    public java.lang.String getPaymentStatus() {
        return paymentStatus;
    }


    /**
     * Sets the paymentStatus value for this PaymentForPremiumMemInfo.
     * 
     * @param paymentStatus
     */
    public void setPaymentStatus(java.lang.String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof PaymentForPremiumMemInfo)) return false;
        PaymentForPremiumMemInfo other = (PaymentForPremiumMemInfo) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            this.monthlyPaymentAmount == other.getMonthlyPaymentAmount() &&
            ((this.paymentDate==null && other.getPaymentDate()==null) || 
             (this.paymentDate!=null &&
              this.paymentDate.equals(other.getPaymentDate()))) &&
            ((this.paymentStatus==null && other.getPaymentStatus()==null) || 
             (this.paymentStatus!=null &&
              this.paymentStatus.equals(other.getPaymentStatus())));
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
        _hashCode += new Double(getMonthlyPaymentAmount()).hashCode();
        if (getPaymentDate() != null) {
            _hashCode += getPaymentDate().hashCode();
        }
        if (getPaymentStatus() != null) {
            _hashCode += getPaymentStatus().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(PaymentForPremiumMemInfo.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "PaymentForPremiumMemInfo"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("monthlyPaymentAmount");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "monthlyPaymentAmount"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "double"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("paymentDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "paymentDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("paymentStatus");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model.videolibrary.sjsu.edu", "paymentStatus"));
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
