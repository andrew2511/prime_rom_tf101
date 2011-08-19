.class public Ljava/security/cert/X509CertSelector;
.super Ljava/lang/Object;
.source "X509CertSelector.java"

# interfaces
.implements Ljava/security/cert/CertSelector;


# instance fields
.field private authorityKeyIdentifier:[B

.field private certificateEquals:Ljava/security/cert/X509Certificate;

.field private certificateValid:Ljava/util/Date;

.field private extendedKeyUsage:Ljava/util/Set;

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private issuerBytes:[B

.field private issuerName:Ljava/lang/String;

.field private keyUsage:[Z

.field private matchAllNames:Z

.field private nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

.field private pathLen:I

.field private pathToNames:Ljava/util/ArrayList;

.field private policies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privateKeyValid:Ljava/util/Date;

.field private serialNumber:Ljava/math/BigInteger;

.field private subject:Ljavax/security/auth/x500/X500Principal;

.field private subjectAltNames:[Ljava/util/List;

.field private subjectKeyIdentifier:[B

.field private subjectPublicKey:[B

.field private subjectPublicKeyAlgID:Ljava/lang/String;

.field private subjectPublicKeyImpl:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    .line 80
    return-void
.end method

.method private checkOID(Ljava/lang/String;)V
    .registers 9
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2e

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, beg:I
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 458
    .local v3, end:I
    :try_start_7
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 459
    .local v1, comp:I
    add-int/lit8 v0, v3, 0x1

    .line 460
    if-ltz v1, :cond_16

    const/4 v4, 0x2

    if-le v1, v4, :cond_4a

    .line 461
    :cond_16
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_2f} :catch_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_2f} :catch_77

    .line 468
    .end local v1           #comp:I
    :catch_2f
    move-exception v4

    move-object v2, v4

    .line 469
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 463
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #comp:I
    :cond_4a
    const/16 v4, 0x2e

    :try_start_4c
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 464
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 465
    if-ltz v1, :cond_5e

    const/16 v4, 0x27

    if-le v1, v4, :cond_92

    .line 466
    :cond_5e
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_77
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4c .. :try_end_77} :catch_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_77} :catch_77

    .line 470
    .end local v1           #comp:I
    :catch_77
    move-exception v4

    move-object v2, v4

    .line 471
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 473
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #comp:I
    :cond_92
    return-void
.end method

.method private getBytesAsString([B)Ljava/lang/String;
    .registers 7
    .parameter "data"

    .prologue
    .line 1105
    const-string v1, ""

    .line 1106
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v3, p1

    if-ge v0, v3, :cond_42

    .line 1107
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1108
    .local v2, tail:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    .line 1109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1111
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1113
    .end local v2           #tail:Ljava/lang/String;
    :cond_42
    return-object v1
.end method

.method private getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .registers 7
    .parameter "cert"
    .parameter "oid"

    .prologue
    const/4 v3, 0x0

    .line 1118
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 1119
    .local v0, bytes:[B
    if-nez v0, :cond_9

    move-object v2, v3

    .line 1124
    .end local v0           #bytes:[B
    .end local p0
    :goto_8
    return-object v2

    .line 1122
    .restart local v0       #bytes:[B
    .restart local p0
    :cond_9
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_17

    move-object v2, p0

    goto :goto_8

    .line 1123
    .end local v0           #bytes:[B
    :catch_17
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/io/IOException;
    move-object v2, v3

    .line 1124
    goto :goto_8
.end method


# virtual methods
.method public addPathToName(ILjava/lang/String;)V
    .registers 5
    .parameter "type"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 953
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 955
    .local v0, path_name:Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v1, :cond_10

    .line 956
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    .line 958
    :cond_10
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    return-void
.end method

.method public addPathToName(I[B)V
    .registers 5
    .parameter "type"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 973
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(I[B)V

    .line 975
    .local v0, path_name:Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v1, :cond_10

    .line 976
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    .line 978
    :cond_10
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    return-void
.end method

.method public addSubjectAlternativeName(ILjava/lang/String;)V
    .registers 6
    .parameter "tag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 698
    .local v0, alt_name:Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-nez v1, :cond_f

    .line 699
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    .line 701
    :cond_f
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    if-nez v1, :cond_1e

    .line 702
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, p1

    .line 704
    :cond_1e
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    return-void
.end method

.method public addSubjectAlternativeName(I[B)V
    .registers 6
    .parameter "tag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(I[B)V

    .line 721
    .local v0, alt_name:Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-nez v1, :cond_f

    .line 722
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    .line 724
    :cond_f
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    if-nez v1, :cond_1e

    .line 725
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, p1

    .line 727
    :cond_1e
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 10

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1378
    :try_start_4
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CertSelector;
    :try_end_a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_a} :catch_86

    .line 1383
    .local v2, result:Ljava/security/cert/X509CertSelector;
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    if-eqz v3, :cond_1f

    .line 1384
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    .line 1386
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    iget-object v4, v2, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v5, v5

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1390
    :cond_1f
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    if-eqz v3, :cond_34

    .line 1391
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    .line 1393
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    iget-object v4, v2, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v5, v5

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1397
    :cond_34
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    if-eqz v3, :cond_49

    .line 1398
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    .line 1399
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    iget-object v4, v2, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    array-length v5, v5

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1402
    :cond_49
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-eqz v3, :cond_5e

    .line 1403
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v3, v3

    new-array v3, v3, [Z

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    .line 1404
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v4, v2, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v5, v5

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1407
    :cond_5e
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    if-nez v3, :cond_8a

    move-object v3, v7

    :goto_63
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    .line 1410
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-eqz v3, :cond_92

    .line 1411
    new-array v3, v8, [Ljava/util/ArrayList;

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    .line 1412
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6e
    if-ge v1, v8, :cond_92

    .line 1413
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v3, v3, v1

    if-eqz v3, :cond_83

    .line 1414
    iget-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v5, v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v4, v3, v1

    .line 1412
    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 1379
    .end local v1           #i:I
    .end local v2           #result:Ljava/security/cert/X509CertSelector;
    :catch_86
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/CloneNotSupportedException;
    move-object v3, v7

    .line 1423
    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    :goto_89
    return-object v3

    .line 1407
    .restart local v2       #result:Ljava/security/cert/X509CertSelector;
    :cond_8a
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_63

    .line 1419
    :cond_92
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    if-nez v3, :cond_a2

    move-object v3, v7

    :goto_97
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    .line 1420
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v3, :cond_aa

    move-object v3, v7

    :goto_9e
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    move-object v3, v2

    .line 1423
    goto :goto_89

    .line 1419
    :cond_a2
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_97

    .line 1420
    :cond_aa
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9e
.end method

.method public getAuthorityKeyIdentifier()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    if-nez v1, :cond_7

    .line 391
    const/4 v1, 0x0

    .line 395
    :goto_6
    return-object v1

    .line 393
    :cond_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 394
    .local v0, res:[B
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 395
    goto :goto_6
.end method

.method public getBasicConstraints()I
    .registers 2

    .prologue
    .line 858
    iget v0, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getCertificateValid()Ljava/util/Date;
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .end local p0
    :goto_5
    return-object v0

    .restart local p0
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Date;

    move-object v0, p0

    goto :goto_5
.end method

.method public getExtendedKeyUsage()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuerAsBytes()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_7

    .line 225
    const/4 v1, 0x0

    .line 232
    :goto_6
    return-object v1

    .line 227
    :cond_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    if-nez v1, :cond_13

    .line 228
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    .line 230
    :cond_13
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 231
    .local v0, result:[B
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 232
    goto :goto_6
.end method

.method public getIssuerAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    .line 183
    const/4 v0, 0x0

    .line 188
    :goto_5
    return-object v0

    .line 185
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 186
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 188
    :cond_12
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    goto :goto_5
.end method

.method public getKeyUsage()[Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 574
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-nez v1, :cond_7

    .line 575
    const/4 v1, 0x0

    .line 579
    :goto_6
    return-object v1

    .line 577
    :cond_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v1, v1

    new-array v0, v1, [Z

    .line 578
    .local v0, result:[Z
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 579
    goto :goto_6
.end method

.method public getMatchAllSubjectAltNames()Z
    .registers 2

    .prologue
    .line 642
    iget-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    return v0
.end method

.method public getNameConstraints()[B
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/NameConstraints;->getEncoded()[B

    move-result-object v0

    goto :goto_5
.end method

.method public getPathToNames()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 992
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 993
    const/4 v3, 0x0

    .line 1001
    :goto_5
    return-object v3

    .line 995
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .local v2, result:Ljava/util/ArrayList;
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 997
    .local v0, it:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 998
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/GeneralName;

    .line 999
    .local v1, name:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getAsList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .end local v1           #name:Lorg/apache/harmony/security/x509/GeneralName;
    :cond_25
    move-object v3, v2

    .line 1001
    goto :goto_5
.end method

.method public getPolicy()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    return-object v0
.end method

.method public getPrivateKeyValid()Ljava/util/Date;
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-eqz v0, :cond_e

    .line 449
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Date;

    move-object v0, p0

    .line 451
    :goto_d
    return-object v0

    .restart local p0
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 745
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-nez v7, :cond_7

    .line 746
    const/4 v7, 0x0

    .line 765
    :goto_6
    return-object v7

    .line 748
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v5, result:Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, tag:I
    :goto_d
    const/16 v7, 0x9

    if-ge v6, v7, :cond_54

    .line 750
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v7, v7, v6

    if-eqz v7, :cond_51

    .line 751
    const/4 v3, 0x0

    .local v3, name:I
    :goto_18
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v7, v7, v6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_51

    .line 752
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v7, v7, v6

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 753
    .local v4, neim:Ljava/lang/Object;
    instance-of v7, v4, [B

    if-eqz v7, :cond_3b

    .line 754
    check-cast v4, [B

    .end local v4           #neim:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [B

    move-object v1, v0

    .line 755
    .local v1, arr_neim:[B
    array-length v7, v1

    new-array v4, v7, [B

    .line 756
    .local v4, neim:[B
    array-length v7, v1

    invoke-static {v1, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    .end local v1           #arr_neim:[B
    .end local v4           #neim:[B
    :cond_3b
    new-instance v2, Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 759
    .local v2, list:Ljava/util/List;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 749
    .end local v2           #list:Ljava/util/List;
    .end local v3           #name:I
    :cond_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_54
    move-object v7, v5

    .line 765
    goto :goto_6
.end method

.method public getSubjectAsBytes()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    goto :goto_5
.end method

.method public getSubjectAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    .line 289
    const/4 v0, 0x0

    .line 291
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getSubjectKeyIdentifier()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 356
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    if-nez v1, :cond_7

    .line 357
    const/4 v1, 0x0

    .line 361
    :goto_6
    return-object v1

    .line 359
    :cond_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 360
    .local v0, res:[B
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 361
    goto :goto_6
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSubjectPublicKeyAlgID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .registers 27
    .parameter "certificate"

    .prologue
    .line 1138
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    move/from16 v23, v0

    if-nez v23, :cond_b

    .line 1139
    const/16 v23, 0x0

    .line 1366
    .end local p1
    :goto_a
    return v23

    .line 1142
    .restart local p1
    :cond_b
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    .line 1143
    .local v5, cert:Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2a

    .line 1145
    const/16 v23, 0x0

    goto :goto_a

    .line 1147
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    if-eqz v23, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_45

    .line 1149
    const/16 v23, 0x0

    goto :goto_a

    .line 1151
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    if-eqz v23, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_60

    .line 1153
    const/16 v23, 0x0

    goto :goto_a

    .line 1155
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7b

    .line 1157
    const/16 v23, 0x0

    goto :goto_a

    .line 1159
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    move-object/from16 v23, v0

    const-string v24, "2.5.29.14"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_9e

    .line 1164
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1166
    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_c1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    move-object/from16 v23, v0

    const-string v24, "2.5.29.35"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_c1

    .line 1169
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1171
    :cond_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d5

    .line 1173
    :try_start_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_d5
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_c9 .. :try_end_d5} :catch_ee
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_c9 .. :try_end_d5} :catch_f5

    .line 1180
    :cond_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14a

    .line 1182
    :try_start_dd
    const-string v23, "2.5.29.16"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v4

    .line 1183
    .local v4, bytes:[B
    if-nez v4, :cond_fc

    .line 1184
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1174
    .end local v4           #bytes:[B
    :catch_ee
    move-exception v23

    move-object/from16 v6, v23

    .line 1175
    .local v6, e:Ljava/security/cert/CertificateExpiredException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1176
    .end local v6           #e:Ljava/security/cert/CertificateExpiredException;
    :catch_f5
    move-exception v23

    move-object/from16 v6, v23

    .line 1177
    .local v6, e:Ljava/security/cert/CertificateNotYetValidException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1186
    .end local v6           #e:Ljava/security/cert/CertificateNotYetValidException;
    .restart local v4       #bytes:[B
    :cond_fc
    sget-object v23, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;

    .line 1188
    .local v19, pkup:Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->getNotBefore()Ljava/util/Date;

    move-result-object v17

    .line 1189
    .local v17, notBefore:Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->getNotAfter()Ljava/util/Date;

    move-result-object v16

    .line 1190
    .local v16, notAfter:Ljava/util/Date;
    if-nez v17, :cond_117

    if-nez v16, :cond_117

    .line 1191
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1193
    :cond_117
    if-eqz v17, :cond_12d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v23

    if-lez v23, :cond_12d

    .line 1195
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1197
    :cond_12d
    if-eqz v16, :cond_14a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_13c} :catch_143

    move-result v23

    if-gez v23, :cond_14a

    .line 1199
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1201
    .end local v4           #bytes:[B
    .end local v16           #notAfter:Ljava/util/Date;
    .end local v17           #notBefore:Ljava/util/Date;
    .end local v19           #pkup:Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
    :catch_143
    move-exception v23

    move-object/from16 v6, v23

    .line 1202
    .local v6, e:Ljava/io/IOException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1205
    .end local v6           #e:Ljava/io/IOException;
    :cond_14a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_187

    .line 1207
    :try_start_152
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    .line 1208
    .local v7, encoding:[B
    sget-object v23, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v3

    .line 1211
    .local v3, ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_176} :catch_17d

    move-result v23

    if-nez v23, :cond_187

    .line 1212
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1214
    .end local v3           #ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .end local v7           #encoding:[B
    :catch_17d
    move-exception v23

    move-object/from16 v6, v23

    .line 1215
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1216
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1219
    .end local v6           #e:Ljava/io/IOException;
    :cond_187
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a7

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    move-object/from16 v23, v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_1a7

    .line 1222
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1225
    :cond_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    if-eqz v23, :cond_216

    .line 1226
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v11

    .line 1227
    .local v11, ku:[Z
    if-eqz v11, :cond_216

    .line 1228
    const/4 v8, 0x0

    .line 1229
    .local v8, i:I
    move-object v0, v11

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1e5

    move-object v0, v11

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v13, v23

    .line 1231
    .local v13, min_length:I
    :goto_1d1
    if-ge v8, v13, :cond_1f8

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v8

    if-eqz v23, :cond_1f3

    aget-boolean v23, v11, v8

    if-nez v23, :cond_1f3

    .line 1235
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1229
    .end local v13           #min_length:I
    :cond_1e5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v13, v23

    goto :goto_1d1

    .line 1231
    .restart local v13       #min_length:I
    :cond_1f3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d1

    .line 1238
    :cond_1f6
    add-int/lit8 v8, v8, 0x1

    :cond_1f8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_216

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v8

    if-eqz v23, :cond_1f6

    .line 1240
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1245
    .end local v8           #i:I
    .end local v11           #ku:[Z
    .end local v13           #min_length:I
    :cond_216
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23e

    .line 1247
    :try_start_21e
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v10

    .line 1248
    .local v10, keyUsage:Ljava/util/List;
    if-eqz v10, :cond_23e

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    move-object/from16 v23, v0

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    :try_end_230
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_21e .. :try_end_230} :catch_237

    move-result v23

    if-nez v23, :cond_23e

    .line 1250
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1253
    .end local v10           #keyUsage:Ljava/util/List;
    :catch_237
    move-exception v23

    move-object/from16 v6, v23

    .line 1254
    .local v6, e:Ljava/security/cert/CertificateParsingException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1257
    .end local v6           #e:Ljava/security/cert/CertificateParsingException;
    :cond_23e
    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_276

    .line 1258
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v18

    .line 1259
    .local v18, p_len:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    if-gez v23, :cond_25e

    if-ltz v18, :cond_25e

    .line 1261
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1263
    :cond_25e
    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    if-lez v23, :cond_276

    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v18

    if-le v0, v1, :cond_276

    .line 1265
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1268
    .end local v18           #p_len:I
    :cond_276
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_320

    .line 1271
    :try_start_27e
    const-string v23, "2.5.29.17"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v4

    .line 1272
    .restart local v4       #bytes:[B
    if-nez v4, :cond_28f

    .line 1273
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1275
    :cond_28f
    sget-object v23, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralNames;->getNames()Ljava/util/List;

    move-result-object v21

    .line 1277
    .local v21, sans:Ljava/util/List;
    if-eqz v21, :cond_2a6

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_2aa

    .line 1278
    :cond_2a6
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1280
    :cond_2aa
    const/16 v23, 0x9

    move/from16 v0, v23

    new-array v0, v0, [[Z

    move-object v12, v0

    .line 1282
    .local v12, map:[[Z
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2b2
    const/16 v23, 0x9

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_2dd

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v8

    if-nez v23, :cond_2ca

    sget-object v23, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    :goto_2c5
    aput-object v23, v12, v8

    .line 1282
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b2

    .line 1283
    :cond_2ca
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v8

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v23, v0

    goto :goto_2c5

    .line 1286
    :cond_2dd
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1287
    .local v9, it:Ljava/util/Iterator;
    :cond_2e1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_344

    .line 1288
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/harmony/security/x509/GeneralName;

    .line 1289
    .local v14, name:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v14}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v22

    .line 1290
    .local v22, tag:I
    const/4 v8, 0x0

    :goto_2f2
    aget-object v23, v12, v22

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_2e1

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v22

    move-object/from16 v0, v23

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_341

    .line 1293
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    move/from16 v23, v0
    :try_end_31e
    .catch Ljava/io/IOException; {:try_start_27e .. :try_end_31e} :catch_377

    if-nez v23, :cond_33b

    .line 1317
    .end local v4           #bytes:[B
    .end local v8           #i:I
    .end local v9           #it:Ljava/util/Iterator;
    .end local v12           #map:[[Z
    .end local v14           #name:Lorg/apache/harmony/security/x509/GeneralName;
    .end local v21           #sans:Ljava/util/List;
    .end local v22           #tag:I
    :cond_320
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    move-object/from16 v23, v0

    if-eqz v23, :cond_381

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/security/cert/X509Certificate;)Z

    move-result v23

    if-nez v23, :cond_381

    .line 1319
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1296
    .restart local v4       #bytes:[B
    .restart local v8       #i:I
    .restart local v9       #it:Ljava/util/Iterator;
    .restart local v12       #map:[[Z
    .restart local v14       #name:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local v21       #sans:Ljava/util/List;
    .restart local v22       #tag:I
    :cond_33b
    :try_start_33b
    aget-object v23, v12, v22

    const/16 v24, 0x1

    aput-boolean v24, v23, v8

    .line 1290
    :cond_341
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f2

    .line 1300
    .end local v14           #name:Lorg/apache/harmony/security/x509/GeneralName;
    .end local v22           #tag:I
    :cond_344
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    move/from16 v23, v0

    if-nez v23, :cond_350

    .line 1302
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1305
    :cond_350
    const/16 v22, 0x0

    .restart local v22       #tag:I
    :goto_352
    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_320

    .line 1306
    const/4 v14, 0x0

    .local v14, name:I
    :goto_35b
    aget-object v23, v12, v22

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move v0, v14

    move/from16 v1, v23

    if-ge v0, v1, :cond_374

    .line 1307
    aget-object v23, v12, v22

    aget-boolean v23, v23, v14
    :try_end_36b
    .catch Ljava/io/IOException; {:try_start_33b .. :try_end_36b} :catch_377

    if-nez v23, :cond_371

    .line 1308
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1306
    :cond_371
    add-int/lit8 v14, v14, 0x1

    goto :goto_35b

    .line 1305
    :cond_374
    add-int/lit8 v22, v22, 0x1

    goto :goto_352

    .line 1312
    .end local v4           #bytes:[B
    .end local v8           #i:I
    .end local v9           #it:Ljava/util/Iterator;
    .end local v12           #map:[[Z
    .end local v14           #name:I
    .end local v21           #sans:Ljava/util/List;
    .end local v22           #tag:I
    :catch_377
    move-exception v23

    move-object/from16 v6, v23

    .line 1313
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1314
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1322
    .end local v6           #e:Ljava/io/IOException;
    :cond_381
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3d9

    .line 1323
    const-string v23, "2.5.29.32"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v4

    .line 1324
    .restart local v4       #bytes:[B
    if-nez v4, :cond_39a

    .line 1325
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1327
    :cond_39a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v23

    if-nez v23, :cond_3aa

    .line 1330
    const/16 v23, 0x1

    goto/16 :goto_a

    .line 1334
    :cond_3aa
    :try_start_3aa
    sget-object v23, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/harmony/security/x509/CertificatePolicies;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/CertificatePolicies;->getPolicyInformations()Ljava/util/List;

    move-result-object v20

    .line 1337
    .local v20, policyInformations:Ljava/util/List;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1338
    .restart local v9       #it:Ljava/util/Iterator;
    :cond_3bd
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_40c

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/harmony/security/x509/PolicyInformation;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/PolicyInformation;->getPolicyIdentifier()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_3d6
    .catch Ljava/io/IOException; {:try_start_3aa .. :try_end_3d6} :catch_410

    move-result v23

    if-eqz v23, :cond_3bd

    .line 1350
    .end local v4           #bytes:[B
    .end local v9           #it:Ljava/util/Iterator;
    .end local v20           #policyInformations:Ljava/util/List;
    :cond_3d9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_41e

    .line 1351
    const-string v23, "2.5.29.30"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v4

    .line 1352
    .restart local v4       #bytes:[B
    if-eqz v4, :cond_41e

    .line 1355
    :try_start_3ee
    sget-object v23, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/harmony/security/x509/NameConstraints;
    :try_end_3f9
    .catch Ljava/io/IOException; {:try_start_3ee .. :try_end_3f9} :catch_417

    .line 1361
    .local v15, nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/util/List;)Z

    move-result v23

    if-nez v23, :cond_41e

    .line 1362
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1344
    .end local v15           #nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;
    .restart local v9       #it:Ljava/util/Iterator;
    .restart local v20       #policyInformations:Ljava/util/List;
    :cond_40c
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1345
    .end local v9           #it:Ljava/util/Iterator;
    .end local v20           #policyInformations:Ljava/util/List;
    :catch_410
    move-exception v23

    move-object/from16 v6, v23

    .line 1347
    .restart local v6       #e:Ljava/io/IOException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1357
    .end local v6           #e:Ljava/io/IOException;
    :catch_417
    move-exception v23

    move-object/from16 v6, v23

    .line 1359
    .restart local v6       #e:Ljava/io/IOException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1366
    .end local v4           #bytes:[B
    .end local v6           #e:Ljava/io/IOException;
    :cond_41e
    const/16 v23, 0x1

    goto/16 :goto_a
.end method

.method public setAuthorityKeyIdentifier([B)V
    .registers 5
    .parameter "authorityKeyIdentifier"

    .prologue
    const/4 v2, 0x0

    .line 372
    if-nez p1, :cond_7

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    .line 380
    :goto_6
    return-void

    .line 376
    :cond_7
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    .line 377
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method public setBasicConstraints(I)V
    .registers 4
    .parameter "pathLen"

    .prologue
    .line 841
    const/4 v0, -0x2

    if-ge p1, v0, :cond_b

    .line 842
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathLen < -2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_b
    iput p1, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    .line 845
    return-void
.end method

.method public setCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .parameter "certificate"

    .prologue
    .line 89
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    .line 90
    return-void
.end method

.method public setCertificateValid(Ljava/util/Date;)V
    .registers 3
    .parameter "certificateValid"

    .prologue
    .line 406
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    .line 409
    return-void

    .line 406
    :cond_6
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_3
.end method

.method public setExtendedKeyUsage(Ljava/util/Set;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    .local p1, keyUsage:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    .line 593
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 604
    :cond_b
    :goto_b
    return-void

    .line 596
    :cond_c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 597
    .local v1, key_u:Ljava/util/HashSet;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 598
    .local v0, it:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 599
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 600
    .local v2, usage:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 603
    .end local v2           #usage:Ljava/lang/String;
    :cond_28
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    goto :goto_b
.end method

.method public setIssuer(Ljava/lang/String;)V
    .registers 5
    .parameter "issuerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 158
    if-nez p1, :cond_a

    .line 159
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 160
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    .line 171
    :goto_9
    return-void

    .line 165
    :cond_a
    :try_start_a
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 166
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_16} :catch_17

    goto :goto_9

    .line 168
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 169
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .parameter "issuer"

    .prologue
    const/4 v0, 0x0

    .line 131
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 132
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    .line 134
    return-void
.end method

.method public setIssuer([B)V
    .registers 7
    .parameter "issuerDN"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 201
    if-nez p1, :cond_6

    .line 202
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 213
    :goto_5
    return-void

    .line 206
    :cond_6
    :try_start_6
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 208
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    .line 209
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_1d} :catch_1e

    goto :goto_5

    .line 210
    :catch_1e
    move-exception v1

    move-object v0, v1

    .line 211
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setKeyUsage([Z)V
    .registers 5
    .parameter "keyUsage"

    .prologue
    const/4 v2, 0x0

    .line 558
    if-nez p1, :cond_7

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    .line 564
    :goto_6
    return-void

    .line 562
    :cond_7
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    .line 563
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method public setMatchAllSubjectAltNames(Z)V
    .registers 2
    .parameter "matchAllNames"

    .prologue
    .line 628
    iput-boolean p1, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    .line 629
    return-void
.end method

.method public setNameConstraints([B)V
    .registers 3
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    .line 813
    return-void

    .line 810
    :cond_6
    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/NameConstraints;

    goto :goto_3
.end method

.method public setPathToNames(Ljava/util/Collection;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    .local p1, names:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    .line 923
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_c

    .line 939
    :cond_b
    return-void

    .line 926
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 927
    .local v0, it:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 928
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 929
    .local v1, name:Ljava/util/List;
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 930
    .local v2, tag:I
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 931
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 932
    check-cast v3, Ljava/lang/String;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addPathToName(ILjava/lang/String;)V

    goto :goto_10

    .line 933
    .restart local v3       #value:Ljava/lang/Object;
    :cond_36
    instance-of v4, v3, [B

    if-eqz v4, :cond_42

    .line 934
    check-cast v3, [B

    .end local v3           #value:Ljava/lang/Object;
    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addPathToName(I[B)V

    goto :goto_10

    .line 936
    .restart local v3       #value:Ljava/lang/Object;
    :cond_42
    new-instance v4, Ljava/io/IOException;

    const-string v5, "name neither a String nor a byte[]"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setPolicy(Ljava/util/Set;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    .local p1, policies:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_6

    .line 876
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    .line 887
    :goto_5
    return-void

    .line 879
    :cond_6
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 880
    .local v2, pols:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 881
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 882
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 883
    .local v0, certPolicyId:Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 886
    .end local v0           #certPolicyId:Ljava/lang/String;
    :cond_26
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    goto :goto_5
.end method

.method public setPrivateKeyValid(Ljava/util/Date;)V
    .registers 3
    .parameter "privateKeyValid"

    .prologue
    .line 432
    if-nez p1, :cond_6

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    .line 437
    :goto_5
    return-void

    .line 436
    :cond_6
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    goto :goto_5
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .registers 2
    .parameter "serialNumber"

    .prologue
    .line 110
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    .line 111
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 5
    .parameter "subjectDN"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    if-nez p1, :cond_6

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 277
    :goto_5
    return-void

    .line 273
    :cond_6
    :try_start_6
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_5

    .line 274
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 275
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)V
    .registers 2
    .parameter "subject"

    .prologue
    .line 243
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 244
    return-void
.end method

.method public setSubject([B)V
    .registers 5
    .parameter "subjectDN"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    if-nez p1, :cond_6

    .line 305
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 313
    :goto_5
    return-void

    .line 309
    :cond_6
    :try_start_6
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_5

    .line 310
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 311
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubjectAlternativeNames(Ljava/util/Collection;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    .local p1, names:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    .line 666
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_c

    .line 682
    :cond_b
    return-void

    .line 669
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 670
    .local v0, it:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 671
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 672
    .local v1, name:Ljava/util/List;
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 673
    .local v2, tag:I
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 674
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 675
    check-cast v3, Ljava/lang/String;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeName(ILjava/lang/String;)V

    goto :goto_10

    .line 676
    .restart local v3       #value:Ljava/lang/Object;
    :cond_36
    instance-of v4, v3, [B

    if-eqz v4, :cond_42

    .line 677
    check-cast v3, [B

    .end local v3           #value:Ljava/lang/Object;
    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeName(I[B)V

    goto :goto_10

    .line 679
    .restart local v3       #value:Ljava/lang/Object;
    :cond_42
    new-instance v4, Ljava/io/IOException;

    const-string v5, "name neither a String nor a byte[]"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setSubjectKeyIdentifier([B)V
    .registers 5
    .parameter "subjectKeyIdentifier"

    .prologue
    const/4 v2, 0x0

    .line 340
    if-nez p1, :cond_7

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    .line 347
    :goto_6
    return-void

    .line 344
    :cond_7
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    .line 345
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method public setSubjectPublicKey(Ljava/security/PublicKey;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 513
    if-nez p1, :cond_8

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    .line 514
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    .line 515
    return-void

    .line 513
    :cond_8
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    goto :goto_3
.end method

.method public setSubjectPublicKey([B)V
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 527
    if-nez p1, :cond_9

    .line 528
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    .line 529
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    .line 537
    :goto_8
    return-void

    .line 532
    :cond_9
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    .line 533
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    sget-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    goto :goto_8
.end method

.method public setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    .registers 3
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    if-nez p1, :cond_6

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    .line 494
    :goto_5
    return-void

    .line 492
    :cond_6
    invoke-direct {p0, p1}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    .line 493
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x9

    .line 1016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1017
    .local v4, result:Ljava/lang/StringBuilder;
    const-string v6, "X509CertSelector: \n["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_28

    .line 1019
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  certificateEquals: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    :cond_28
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v6, :cond_2c

    .line 1025
    :cond_2c
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v6, :cond_48

    .line 1026
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  issuer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :cond_48
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v6, :cond_64

    .line 1029
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  subject: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    :cond_64
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    if-eqz v6, :cond_84

    .line 1032
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  subjectKeyIdentifier: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    invoke-direct {p0, v7}, Ljava/security/cert/X509CertSelector;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    :cond_84
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    if-eqz v6, :cond_a4

    .line 1036
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  authorityKeyIdentifier: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    invoke-direct {p0, v7}, Ljava/security/cert/X509CertSelector;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    :cond_a4
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-eqz v6, :cond_c0

    .line 1040
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  certificateValid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    :cond_c0
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    if-eqz v6, :cond_dc

    .line 1043
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  subjectPublicKeyAlgID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    :cond_dc
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-eqz v6, :cond_f8

    .line 1047
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  privateKeyValid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    :cond_f8
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    if-eqz v6, :cond_118

    .line 1050
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  subjectPublicKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    invoke-direct {p0, v7}, Ljava/security/cert/X509CertSelector;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    :cond_118
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-eqz v6, :cond_17a

    .line 1054
    const-string v6, "\n  keyUsage: \n  ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    new-array v2, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "digitalSignature"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "nonRepudiation"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "keyEncipherment"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "dataEncipherment"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "keyAgreement"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "keyCertSign"

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "cRLSign"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string v7, "encipherOnly"

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "decipherOnly"

    aput-object v7, v2, v6

    .line 1060
    .local v2, kuNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_152
    if-ge v0, v8, :cond_175

    .line 1061
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_172

    .line 1062
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    :cond_172
    add-int/lit8 v0, v0, 0x1

    goto :goto_152

    .line 1065
    :cond_175
    const-string v6, "\n  ]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    .end local v0           #i:I
    .end local v2           #kuNames:[Ljava/lang/String;
    :cond_17a
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    if-eqz v6, :cond_19a

    .line 1068
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  extendedKeyUsage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_19a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  matchAllNames: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  pathLen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-eqz v6, :cond_20e

    .line 1074
    const-string v6, "\n  subjectAltNames:  \n  ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1d4
    if-ge v0, v8, :cond_209

    .line 1076
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v3, v6, v0

    .line 1077
    .local v3, names:Ljava/util/List;
    if-eqz v3, :cond_206

    .line 1078
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 1079
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1e1
    if-ge v1, v5, :cond_206

    .line 1080
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v6}, Lorg/apache/harmony/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e1

    .line 1075
    .end local v1           #j:I
    .end local v5           #size:I
    :cond_206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d4

    .line 1085
    .end local v3           #names:Ljava/util/List;
    :cond_209
    const-string v6, "\n  ]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    .end local v0           #i:I
    :cond_20e
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    if-eqz v6, :cond_212

    .line 1089
    :cond_212
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    if-eqz v6, :cond_232

    .line 1090
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  policies: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    :cond_232
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-eqz v6, :cond_269

    .line 1093
    const-string v6, "\n  pathToNames:  \n  ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1095
    .restart local v5       #size:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_242
    if-ge v0, v5, :cond_269

    .line 1096
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v6}, Lorg/apache/harmony/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    add-int/lit8 v0, v0, 0x1

    goto :goto_242

    .line 1100
    .end local v0           #i:I
    .end local v5           #size:I
    :cond_269
    const-string v6, "\n]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
