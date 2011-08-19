.class public abstract Ljava/security/cert/X509CRLEntry;
.super Ljava/lang/Object;
.source "X509CRLEntry.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v5, 0x0

    .line 46
    if-ne p1, p0, :cond_5

    .line 47
    const/4 v3, 0x1

    .line 56
    :goto_4
    return v3

    .line 49
    :cond_5
    instance-of v3, p1, Ljava/security/cert/X509CRLEntry;

    if-nez v3, :cond_b

    move v3, v5

    .line 50
    goto :goto_4

    .line 52
    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRLEntry;

    move-object v2, v0

    .line 54
    .local v2, obj:Ljava/security/cert/X509CRLEntry;
    :try_start_f
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1a
    .catch Ljava/security/cert/CRLException; {:try_start_f .. :try_end_1a} :catch_1c

    move-result v3

    goto :goto_4

    .line 55
    :catch_1c
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/security/cert/CRLException;
    move v3, v5

    .line 56
    goto :goto_4
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getRevocationDate()Ljava/util/Date;
.end method

.method public abstract getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract hasExtensions()Z
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 68
    .local v2, res:I
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v0

    .line 69
    .local v0, array:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v3, v0

    if-ge v1, v3, :cond_12

    .line 70
    aget-byte v3, v0, v1
    :try_end_b
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_b} :catch_11

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 72
    .end local v0           #array:[B
    .end local v1           #i:I
    :catch_11
    move-exception v3

    .line 74
    :cond_12
    return v2
.end method

.method public abstract toString()Ljava/lang/String;
.end method
