.class public Lorg/apache/harmony/security/x509/TBSCertList;
.super Ljava/lang/Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

.field private encoding:[B

.field private final issuer:Lorg/apache/harmony/security/x501/Name;

.field private final nextUpdate:Ljava/util/Date;

.field private final revokedCertificates:Ljava/util/List;

.field private final signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final thisUpdate:Ljava/util/Date;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 405
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertList$1;

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    sget-object v4, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v4, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertList$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;)V
    .registers 8
    .parameter "version"
    .parameter "signature"
    .parameter "issuer"
    .parameter "thisUpdate"
    .parameter "nextUpdate"
    .parameter "revokedCertificates"
    .parameter "crlExtensions"

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    .line 249
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 250
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    .line 251
    iput-object p4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    .line 252
    iput-object p5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    .line 253
    iput-object p6, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    .line 254
    iput-object p7, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 255
    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[B)V
    .registers 9
    .parameter "version"
    .parameter "signature"
    .parameter "issuer"
    .parameter "thisUpdate"
    .parameter "nextUpdate"
    .parameter "revokedCertificates"
    .parameter "crlExtensions"
    .parameter "encoding"

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    .line 263
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 264
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    .line 265
    iput-object p4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    .line 266
    iput-object p5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    .line 267
    iput-object p6, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    .line 268
    iput-object p7, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 269
    iput-object p8, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    .line 270
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertList$1;)V
    .registers 10
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p8}, Lorg/apache/harmony/security/x509/TBSCertList;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;)V
    .registers 6
    .parameter "signature"
    .parameter "issuer"
    .parameter "thisUpdate"

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    .line 223
    iput-object p1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 224
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    .line 225
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    .line 226
    iput-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    .line 227
    iput-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    .line 228
    iput-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 229
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/Extensions;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/x509/TBSCertList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    return v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x501/Name;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;)V
    .registers 10
    .parameter "buffer"

    .prologue
    const/16 v7, 0x5d

    const/16 v6, 0xa

    .line 376
    const-string v3, "X.509 CRL v"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 377
    const-string v3, "\nSignature Algorithm: ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    iget-object v3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->dumpValue(Ljava/lang/StringBuffer;)V

    .line 379
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    const-string v3, "\nIssuer: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    const-string v5, "RFC2253"

    invoke-virtual {v4, v5}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const-string v3, "\n\nThis Update: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 382
    const-string v3, "\nNext Update: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 383
    iget-object v3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-eqz v3, :cond_91

    .line 384
    const-string v3, "\nRevoked Certificates: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    const/4 v1, 0x1

    .line 387
    .local v1, number:I
    iget-object v3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 388
    const-string v3, "\n  ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #number:I
    .local v2, number:I
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 389
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    const-string v4, "  "

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    .end local v2           #number:I
    .restart local v1       #number:I
    goto :goto_67

    .line 392
    :cond_8c
    const-string v3, "]\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    .end local v0           #it:Ljava/util/Iterator;
    .end local v1           #number:I
    :cond_91
    iget-object v3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-eqz v3, :cond_b6

    .line 395
    const-string v3, "\nCRL Extensions: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/Extensions;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    iget-object v3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    const-string v4, "  "

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 398
    const-string v3, "]\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    :cond_b6
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "tbs"

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x3e8

    .line 340
    instance-of v2, p1, Lorg/apache/harmony/security/x509/TBSCertList;

    if-nez v2, :cond_9

    move v2, v8

    .line 344
    :goto_8
    return v2

    .line 343
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList;

    move-object v1, v0

    .line 344
    .local v1, tbscert:Lorg/apache/harmony/security/x509/TBSCertList;
    iget v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    iget v3, v1, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    if-ne v2, v3, :cond_8b

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    iget-object v3, v1, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v2

    iget-object v3, v1, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-object v4, v1, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_8b

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    if-nez v2, :cond_79

    iget-object v2, v1, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    if-nez v2, :cond_8b

    :cond_49
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-eqz v2, :cond_51

    iget-object v2, v1, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-nez v2, :cond_57

    :cond_51
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    iget-object v3, v1, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-eq v2, v3, :cond_6f

    :cond_57
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    iget-object v3, v1, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v1, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_8b

    :cond_6f
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_8e

    iget-object v2, v1, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_8b

    :goto_77
    const/4 v2, 0x1

    goto :goto_8

    :cond_79
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-object v4, v1, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_49

    :cond_8b
    move v2, v8

    goto/16 :goto_8

    :cond_8e
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    iget-object v3, v1, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/x509/Extensions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    goto :goto_77
.end method

.method public getCrlExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    if-nez v0, :cond_c

    .line 334
    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    .line 336
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    return-object v0
.end method

.method public getIssuer()Lorg/apache/harmony/security/x501/Name;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getRevokedCertificates()Ljava/util/List;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    return-object v0
.end method

.method public getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 366
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    return v0
.end method
