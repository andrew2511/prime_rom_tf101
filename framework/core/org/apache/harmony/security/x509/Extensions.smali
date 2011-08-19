.class public Lorg/apache/harmony/security/x509/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

.field private static SUPPORTED_CRITICAL:Ljava/util/List;


# instance fields
.field private critical:Ljava/util/Set;

.field private encoding:[B

.field private extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private hasUnsupported:Z

.field private noncritical:Ljava/util/Set;

.field private oidMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2.5.29.15"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2.5.29.19"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2.5.29.32"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "2.5.29.17"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "2.5.29.30"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "2.5.29.36"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "2.5.29.37"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "2.5.29.54"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/x509/Extensions;->SUPPORTED_CRITICAL:Ljava/util/List;

    .line 403
    new-instance v0, Lorg/apache/harmony/security/x509/Extensions$1;

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Extensions$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter "extensions"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/Extensions;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    return-object v0
.end method

.method private makeOidsLists()V
    .registers 6

    .prologue
    .line 123
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v4, :cond_5

    .line 141
    :cond_4
    return-void

    .line 126
    :cond_5
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 127
    .local v3, size:I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    .line 128
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    .line 129
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v3, :cond_4

    .line 130
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 131
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, oid:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getCritical()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 133
    sget-object v4, Lorg/apache/harmony/security/x509/Extensions;->SUPPORTED_CRITICAL:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 134
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupported:Z

    .line 136
    :cond_39
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 138
    :cond_41
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e
.end method


# virtual methods
.method public addExtension(Lorg/apache/harmony/security/x509/Extension;)V
    .registers 5
    .parameter "extn"

    .prologue
    .line 329
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    .line 330
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v1, :cond_e

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    .line 333
    :cond_e
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    if-eqz v1, :cond_20

    .line 335
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_20
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    if-eqz v1, :cond_3e

    .line 338
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, oid:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/Extension;->getCritical()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 340
    sget-object v1, Lorg/apache/harmony/security/x509/Extensions;->SUPPORTED_CRITICAL:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 341
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupported:Z

    .line 343
    :cond_39
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v0           #oid:Ljava/lang/String;
    :cond_3e
    :goto_3e
    return-void

    .line 345
    .restart local v0       #oid:Ljava/lang/String;
    :cond_3f
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e
.end method

.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 9
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 389
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v4, :cond_5

    .line 398
    :cond_4
    return-void

    .line 392
    :cond_5
    const/4 v2, 0x1

    .line 393
    .local v2, num:I
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 394
    .local v0, extension:Lorg/apache/harmony/security/x509/Extension;
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v3, v2, 0x1

    .end local v2           #num:I
    .local v3, num:I
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/security/x509/Extension;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    move v2, v3

    .end local v3           #num:I
    .restart local v2       #num:I
    goto :goto_c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "exts"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 362
    instance-of v2, p1, Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_8

    move v2, v4

    .line 366
    :goto_7
    return v2

    .line 365
    :cond_8
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/Extensions;

    move-object v1, v0

    .line 366
    .local v1, extns:Lorg/apache/harmony/security/x509/Extensions;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_28

    :cond_18
    iget-object v2, v1, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v2, :cond_24

    iget-object v2, v1, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_26

    :cond_24
    move v2, v5

    goto :goto_7

    :cond_26
    move v2, v4

    goto :goto_7

    :cond_28
    iget-object v2, v1, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v2, :cond_34

    iget-object v2, v1, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_36

    :cond_34
    move v2, v4

    goto :goto_7

    :cond_36
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    iget-object v3, v1, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v1, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_50

    move v2, v5

    goto :goto_7

    :cond_50
    move v2, v4

    goto :goto_7
.end method

.method public getCriticalExtensions()Ljava/util/Set;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    if-nez v0, :cond_7

    .line 95
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extensions;->makeOidsLists()V

    .line 97
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    if-nez v0, :cond_c

    .line 356
    sget-object v0, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    .line 358
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    return-object v0
.end method

.method public getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;
    .registers 6
    .parameter "oid"

    .prologue
    .line 149
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v2, :cond_6

    .line 150
    const/4 v2, 0x0

    .line 160
    .end local p0
    :goto_5
    return-object v2

    .line 152
    .restart local p0
    :cond_6
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    if-nez v2, :cond_2d

    .line 153
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    .line 154
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 155
    .local v1, it:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 157
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 160
    .end local v0           #extn:Lorg/apache/harmony/security/x509/Extension;
    .end local v1           #it:Ljava/util/Iterator;
    :cond_2d
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/Extension;

    move-object v2, p0

    goto :goto_5
.end method

.method public getNonCriticalExtensions()Ljava/util/Set;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    if-nez v0, :cond_7

    .line 106
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extensions;->makeOidsLists()V

    .line 108
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    return-object v0
.end method

.method public hasUnsupportedCritical()Z
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    if-nez v0, :cond_7

    .line 113
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extensions;->makeOidsLists()V

    .line 115
    :cond_7
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupported:Z

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, hashcode:I
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 380
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 382
    :cond_b
    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public valueOfBasicConstrains()I
    .registers 4

    .prologue
    .line 243
    const-string v2, "2.5.29.19"

    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v1

    .line 244
    .local v1, extn:Lorg/apache/harmony/security/x509/Extension;
    const/4 v0, 0x0

    .line 245
    .local v0, bc:Lorg/apache/harmony/security/x509/BasicConstraints;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extension;->getBasicConstraintsValue()Lorg/apache/harmony/security/x509/BasicConstraints;

    move-result-object v0

    if-nez v0, :cond_13

    .line 247
    :cond_f
    const v2, 0x7fffffff

    .line 249
    :goto_12
    return v2

    :cond_13
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/BasicConstraints;->getPathLenConstraint()I

    move-result v2

    goto :goto_12
.end method

.method public valueOfCertificateIssuerExtension()Ljavax/security/auth/x500/X500Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    const-string v1, "2.5.29.29"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 316
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_a

    .line 317
    const/4 v1, 0x0

    .line 319
    .end local p0
    :goto_9
    return-object v1

    .restart local p0
    :cond_a
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/CertificateIssuer;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/CertificateIssuer;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    goto :goto_9
.end method

.method public valueOfExtendedKeyUsage()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const-string v1, "2.5.29.37"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 218
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_a

    .line 219
    const/4 v1, 0x0

    .line 221
    .end local p0
    :goto_9
    return-object v1

    .restart local p0
    :cond_a
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    goto :goto_9
.end method

.method public valueOfIssuerAlternativeName()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    const-string v1, "2.5.29.18"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 293
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_a

    .line 294
    const/4 v1, 0x0

    .line 296
    .end local p0
    :goto_9
    return-object v1

    .restart local p0
    :cond_a
    sget-object v1, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getExtnValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralNames;->getPairsList()Ljava/util/List;

    move-result-object v1

    goto :goto_9
.end method

.method public valueOfKeyUsage()[Z
    .registers 4

    .prologue
    .line 191
    const-string v2, "2.5.29.15"

    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 192
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    const/4 v1, 0x0

    .line 193
    .local v1, kUsage:Lorg/apache/harmony/security/x509/KeyUsage;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getKeyUsageValue()Lorg/apache/harmony/security/x509/KeyUsage;

    move-result-object v1

    if-nez v1, :cond_11

    .line 194
    :cond_f
    const/4 v2, 0x0

    .line 196
    :goto_10
    return-object v2

    :cond_11
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/KeyUsage;->getKeyUsage()[Z

    move-result-object v2

    goto :goto_10
.end method

.method public valueOfSubjectAlternativeName()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    const-string v1, "2.5.29.17"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 269
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_a

    .line 270
    const/4 v1, 0x0

    .line 272
    .end local p0
    :goto_9
    return-object v1

    .restart local p0
    :cond_a
    sget-object v1, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getExtnValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralNames;->getPairsList()Ljava/util/List;

    move-result-object v1

    goto :goto_9
.end method
