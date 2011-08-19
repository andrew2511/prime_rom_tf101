.class public Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "AuthorityKeyIdentifier.java"


# instance fields
.field certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

.field certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "seq"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 37
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 38
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 69
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 71
    .local v0, e:Ljava/util/Enumeration;
    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 73
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 75
    .local v1, o:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_42

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :pswitch_2c
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_f

    .line 81
    :pswitch_33
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_f

    .line 84
    :pswitch_3a
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_f

    .line 90
    .end local v1           #o:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_41
    return-void

    .line 75
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_33
        :pswitch_3a
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 4
    .parameter "name"
    .parameter "serialNumber"

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 37
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 38
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 146
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 147
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 148
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 7
    .parameter "spki"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 37
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 38
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 108
    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 109
    .local v1, digest:Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 111
    .local v2, resBuf:[B
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 112
    .local v0, bytes:[B
    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 113
    invoke-interface {v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 114
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 9
    .parameter "spki"
    .parameter "name"
    .parameter "serialNumber"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 125
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 37
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 38
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 126
    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 127
    .local v1, digest:Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 129
    .local v2, resBuf:[B
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 130
    .local v0, bytes:[B
    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 131
    invoke-interface {v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 133
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 134
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 135
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v3, p3}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 136
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "keyIdentifier"

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 37
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 38
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 157
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 158
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 159
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 160
    return-void
.end method

.method public constructor <init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 5
    .parameter "keyIdentifier"
    .parameter "name"
    .parameter "serialNumber"

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 37
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 38
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 171
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 172
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 173
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 174
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 4
    .parameter "obj"

    .prologue
    .line 50
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    if-eqz v0, :cond_8

    .line 52
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    .end local p0
    move-object v0, p0

    .line 60
    :goto_7
    return-object v0

    .line 54
    .restart local p0
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 58
    .restart local p0
    :cond_14
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    if-eqz v0, :cond_23

    .line 60
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    .end local p0
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    goto :goto_7

    .line 63
    .restart local p0
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAuthorityCertIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getAuthorityCertSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_b

    .line 195
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 198
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getKeyIdentifier()[B
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_b

    .line 180
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 183
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 206
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 208
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_14

    .line 210
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 213
    :cond_14
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_23

    .line 215
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 218
    :cond_23
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_32

    .line 220
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 224
    :cond_32
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
