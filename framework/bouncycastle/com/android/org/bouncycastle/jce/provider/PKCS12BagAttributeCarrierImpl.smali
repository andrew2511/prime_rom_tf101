.class Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;
.super Ljava/lang/Object;
.source "PKCS12BagAttributeCarrierImpl.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private pkcs12:Lcom/android/org/bouncycastle/asn1/OrderedTable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/OrderedTable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    .line 40
    return-void
.end method


# virtual methods
.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 3
    .parameter "oid"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->get(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    return-object p0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 118
    .local v1, obj:Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/Hashtable;

    if-eqz v3, :cond_13

    .line 122
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 123
    new-instance v3, Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/OrderedTable;-><init>()V

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    .line 137
    .end local v1           #obj:Ljava/lang/Object;
    :cond_12
    return-void

    .line 128
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    check-cast v1, [B

    .end local v1           #obj:Ljava/lang/Object;
    check-cast v1, [B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 132
    .local v0, aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :goto_1c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .local v2, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    if-eqz v2, :cond_12

    .line 134
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1c
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 4
    .parameter "oid"
    .parameter "attribute"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->put(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method size()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size()I

    move-result v0

    return v0
.end method

.method public writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size()I

    move-result v4

    if-nez v4, :cond_19

    .line 91
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 92
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 111
    :goto_18
    return-void

    .line 96
    :cond_19
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 99
    .local v0, aOut:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 101
    .local v2, e:Ljava/util/Enumeration;
    :goto_27
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 103
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 105
    .local v3, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 106
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->get(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_27

    .line 109
    .end local v3           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_18
.end method
