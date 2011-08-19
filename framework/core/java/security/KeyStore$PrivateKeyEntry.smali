.class public final Ljava/security/KeyStore$PrivateKeyEntry;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivateKeyEntry"
.end annotation


# instance fields
.field private chain:[Ljava/security/cert/Certificate;

.field private privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    .registers 13
    .parameter "privateKey"
    .parameter "chain"

    .prologue
    const/4 v9, 0x0

    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1271
    if-nez p1, :cond_e

    .line 1272
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "privateKey == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1274
    :cond_e
    if-nez p2, :cond_18

    .line 1275
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "chain == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1278
    :cond_18
    array-length v7, p2

    if-nez v7, :cond_23

    .line 1279
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "chain.length == 0"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1283
    :cond_23
    aget-object v7, p2, v9

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v6

    .line 1284
    .local v6, s:Ljava/lang/String;
    aget-object v7, p2, v9

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 1285
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Algorithm of private key does not match algorithm of public key in end certificate of entry (with index number: 0)"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1290
    :cond_45
    const/4 v2, 0x1

    .local v2, i:I
    :goto_46
    array-length v7, p2

    if-ge v2, v7, :cond_60

    .line 1291
    aget-object v7, p2, v2

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    .line 1292
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Certificates from the given chain have different types"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1290
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 1297
    :cond_60
    const/4 v4, 0x1

    .line 1299
    .local v4, isAllX509Certificates:Z
    move-object v0, p2

    .local v0, arr$:[Ljava/security/cert/Certificate;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_64
    if-ge v3, v5, :cond_6d

    aget-object v1, v0, v3

    .line 1300
    .local v1, cert:Ljava/security/cert/Certificate;
    instance-of v7, v1, Ljava/security/cert/X509Certificate;

    if-nez v7, :cond_7d

    .line 1301
    const/4 v4, 0x0

    .line 1306
    .end local v1           #cert:Ljava/security/cert/Certificate;
    :cond_6d
    if-eqz v4, :cond_80

    .line 1307
    array-length v7, p2

    new-array v7, v7, [Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    .line 1311
    :goto_74
    iget-object v7, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v8, p2

    invoke-static {p2, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1312
    iput-object p1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privateKey:Ljava/security/PrivateKey;

    .line 1313
    return-void

    .line 1299
    .restart local v1       #cert:Ljava/security/cert/Certificate;
    :cond_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 1309
    .end local v1           #cert:Ljava/security/cert/Certificate;
    :cond_80
    array-length v7, p2

    new-array v7, v7, [Ljava/security/cert/Certificate;

    iput-object v7, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    goto :goto_74
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .registers 3

    .prologue
    .line 1339
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 1330
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .prologue
    .line 1321
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PrivateKeyEntry: number of elements in certificate chain is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1352
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v2, v2

    if-ge v0, v2, :cond_2f

    .line 1355
    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1358
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
