.class public Lcom/android/org/bouncycastle/asn1/x509/Time;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "Time.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field time:Lcom/android/org/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V
    .registers 4
    .parameter "time"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 31
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    if-nez v0, :cond_13

    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    if-nez v0, :cond_13

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object passed to Time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_13
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 9
    .parameter "date"

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 48
    new-instance v2, Ljava/util/SimpleTimeZone;

    const-string v4, "Z"

    invoke-direct {v2, v6, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 49
    .local v2, tz:Ljava/util/SimpleTimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, dateF:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, d:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 56
    .local v3, year:I
    const/16 v4, 0x79e

    if-lt v3, v4, :cond_3d

    const/16 v4, 0x801

    if-le v3, v4, :cond_45

    .line 58
    :cond_3d
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 64
    :goto_44
    return-void

    .line 62
    :cond_45
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    goto :goto_44
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 4
    .parameter "obj"

    .prologue
    .line 69
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_8

    .line 71
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    .end local p0
    move-object v0, p0

    .line 79
    :goto_7
    return-object v0

    .line 73
    .restart local p0
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    if-eqz v0, :cond_14

    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    goto :goto_7

    .line 77
    .restart local p0
    :cond_14
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v0, :cond_20

    .line 79
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    goto :goto_7

    .line 82
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
.method public getDate()Ljava/util/Date;
    .registers 5

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    if-eqz v1, :cond_f

    .line 103
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;->getAdjustedDate()Ljava/util/Date;

    move-result-object v1

    .line 107
    :goto_e
    return-object v1

    .restart local p0
    :cond_f
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_16
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v1

    goto :goto_e

    .line 110
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 112
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid date string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    if-eqz v0, :cond_f

    .line 89
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;->getAdjustedTime()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_e
    return-object v0

    .restart local p0
    :cond_f
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
