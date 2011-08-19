.class public Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
.super Ljava/lang/Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevokedCertificate"
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

.field private encoding:[B

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private issuerRetrieved:Z

.field private final revocationDate:Ljava/util/Date;

.field private final userCertificate:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 177
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/util/Date;Lorg/apache/harmony/security/x509/Extensions;)V
    .registers 4
    .parameter "userCertificate"
    .parameter "revocationDate"
    .parameter "crlEntryExtensions"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    .line 99
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    .line 100
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Ljava/math/BigInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Ljava/util/Date;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Lorg/apache/harmony/security/x509/Extensions;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 6
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    const/16 v2, 0xa

    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Certificate Serial Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Revocation Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-eqz v0, :cond_56

    .line 170
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "CRL Entry Extensions: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    :cond_56
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "rc"

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x0

    .line 143
    instance-of v2, p1, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    if-nez v2, :cond_9

    move v2, v6

    .line 147
    :goto_8
    return v2

    .line 146
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    move-object v1, v0

    .line 147
    .local v1, rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    iget-object v3, v1, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v7

    iget-object v4, v1, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v7

    cmp-long v2, v2, v4

    if-nez v2, :cond_3d

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_33

    iget-object v2, v1, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_3d

    :cond_31
    const/4 v2, 0x1

    goto :goto_8

    :cond_33
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    iget-object v3, v1, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/x509/Extensions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    :cond_3d
    move v2, v6

    goto :goto_8
.end method

.method public getCrlEntryExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->encoding:[B

    if-nez v0, :cond_c

    .line 137
    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->encoding:[B

    .line 139
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->encoding:[B

    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .prologue
    .line 120
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_6

    .line 121
    const/4 v1, 0x0

    .line 132
    :goto_5
    return-object v1

    .line 123
    :cond_6
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->issuerRetrieved:Z

    if-nez v1, :cond_15

    .line 125
    :try_start_a
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfCertificateIssuerExtension()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->issuer:Ljavax/security/auth/x500/X500Principal;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_18

    .line 130
    :goto_12
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->issuerRetrieved:Z

    .line 132
    :cond_15
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->issuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_5

    .line 127
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method public getRevocationDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUserCertificate()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_19

    const/4 v1, 0x0

    :goto_17
    add-int/2addr v0, v1

    return v0

    :cond_19
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->hashCode()I

    move-result v1

    goto :goto_17
.end method
