.class public Lcom/android/org/bouncycastle/asn1/x509/Holder;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "Holder.java"


# instance fields
.field baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

.field entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

.field private version:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .parameter "seq"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    iput v5, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 97
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2b

    .line 99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_2b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_60

    .line 105
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 108
    .local v1, tObj:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_64

    .line 120
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown tag in Holder"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :pswitch_49
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 103
    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 114
    :pswitch_52
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_4f

    .line 117
    :pswitch_59
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    goto :goto_4f

    .line 123
    .end local v1           #tObj:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_60
    iput v5, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 124
    return-void

    .line 108
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_49
        :pswitch_52
        :pswitch_59
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V
    .registers 4
    .parameter "tagObj"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 76
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag in Holder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_16
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 87
    :goto_1c
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 88
    return-void

    .line 82
    :pswitch_1f
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_1c

    .line 76
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1f
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 3
    .parameter "entityName"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 160
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;I)V
    .registers 4
    .parameter "entityName"
    .parameter "version"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 172
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 173
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V
    .registers 3
    .parameter "baseCertificateID"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 128
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;I)V
    .registers 4
    .parameter "baseCertificateID"
    .parameter "version"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 138
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 139
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .registers 3
    .parameter "objectDigestInfo"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    .line 183
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    .line 184
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Holder;
    .registers 4
    .parameter "obj"

    .prologue
    .line 53
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    if-eqz v0, :cond_8

    .line 55
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    .end local p0
    move-object v0, p0

    .line 63
    :goto_7
    return-object v0

    .line 57
    .restart local p0
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 59
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 61
    .restart local p0
    :cond_14
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_20

    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V

    goto :goto_7

    .line 66
    .restart local p0
    :cond_20
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
.method public getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    return v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    if-ne v1, v3, :cond_3c

    .line 211
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 213
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v1, :cond_19

    .line 215
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 218
    :cond_19
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_27

    .line 220
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 223
    :cond_27
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v1, :cond_36

    .line 225
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 228
    :cond_36
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    .line 238
    .end local v0           #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_3b
    return-object v1

    .line 232
    :cond_3c
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_48

    .line 234
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_3b

    .line 238
    :cond_48
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_3b
.end method
