.class final Lorg/apache/harmony/security/x509/DistributionPointName$1;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "DistributionPointName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/DistributionPointName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, result:Lorg/apache/harmony/security/x509/DistributionPointName;
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    if-nez v1, :cond_f

    .line 116
    new-instance v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    .end local v0           #result:Lorg/apache/harmony/security/x509/DistributionPointName;
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/DistributionPointName;-><init>(Lorg/apache/harmony/security/x509/GeneralNames;)V

    .line 122
    .restart local v0       #result:Lorg/apache/harmony/security/x509/DistributionPointName;
    :goto_e
    return-object v0

    .line 120
    .restart local p0
    :cond_f
    new-instance v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    .end local v0           #result:Lorg/apache/harmony/security/x509/DistributionPointName;
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/DistributionPointName;-><init>(Lorg/apache/harmony/security/x501/Name;)V

    .restart local v0       #result:Lorg/apache/harmony/security/x509/DistributionPointName;
    goto :goto_e
.end method

.method public getIndex(Ljava/lang/Object;)I
    .registers 5
    .parameter "object"

    .prologue
    .line 109
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    move-object v1, v0

    .line 110
    .local v1, dpn:Lorg/apache/harmony/security/x509/DistributionPointName;
    #getter for: Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/DistributionPointName;->access$000(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 126
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    move-object v1, v0

    .line 127
    .local v1, dpn:Lorg/apache/harmony/security/x509/DistributionPointName;
    #getter for: Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/DistributionPointName;->access$000(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v2

    if-nez v2, :cond_f

    .line 128
    #getter for: Lorg/apache/harmony/security/x509/DistributionPointName;->nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/DistributionPointName;->access$100(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v2

    .line 130
    :goto_e
    return-object v2

    :cond_f
    #getter for: Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/DistributionPointName;->access$000(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v2

    goto :goto_e
.end method
