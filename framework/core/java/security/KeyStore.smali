.class public Ljava/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$TrustedCertificateEntry;,
        Ljava/security/KeyStore$SecretKeyEntry;,
        Ljava/security/KeyStore$PrivateKeyEntry;,
        Ljava/security/KeyStore$ProtectionParameter;,
        Ljava/security/KeyStore$PasswordProtection;,
        Ljava/security/KeyStore$LoadStoreParameter;,
        Ljava/security/KeyStore$Entry;,
        Ljava/security/KeyStore$CallbackHandlerProtection;,
        Ljava/security/KeyStore$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEYSTORE_TYPE:Ljava/lang/String; = "jks"

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final PROPERTYNAME:Ljava/lang/String; = "keystore.type"

.field private static final SERVICE:Ljava/lang/String; = "KeyStore"


# instance fields
.field private final implSpi:Ljava/security/KeyStoreSpi;

.field private isInit:Z

.field private final provider:Ljava/security/Provider;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyStore"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/KeyStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .parameter "keyStoreSpi"
    .parameter "provider"
    .parameter "type"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p3, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    .line 88
    iput-object p1, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    .line 90
    return-void
.end method

.method static synthetic access$000(Ljava/security/KeyStore;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    return v0
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    new-instance v1, Ljava/security/KeyStore$1;

    invoke-direct {v1}, Ljava/security/KeyStore$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    .local v0, dt:Ljava/lang/String;
    if-nez v0, :cond_10

    const-string v1, "jks"

    :goto_f
    return-object v1

    :cond_10
    move-object v1, v0

    goto :goto_f
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 6
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 112
    if-nez p0, :cond_8

    .line 113
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 116
    :cond_8
    :try_start_8
    sget-object v2, Ljava/security/KeyStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    .line 117
    .local v1, sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v3, Ljava/security/KeyStore;

    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v2, Ljava/security/KeyStoreSpi;

    iget-object v4, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v3, v2, v4, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_1a} :catch_1b

    return-object v3

    .line 118
    .end local v1           #sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 119
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 6
    .parameter "type"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 146
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 147
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 149
    :cond_e
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 150
    .local v1, impProvider:Ljava/security/Provider;
    if-nez v1, :cond_1a

    .line 151
    new-instance v2, Ljava/security/NoSuchProviderException;

    invoke-direct {v2, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_1a
    :try_start_1a
    invoke-static {p0, v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1f

    move-result-object v2

    return-object v2

    .line 155
    :catch_1f
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    .registers 6
    .parameter "type"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 182
    if-nez p1, :cond_8

    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 185
    :cond_8
    if-nez p0, :cond_10

    .line 186
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 190
    :cond_10
    :try_start_10
    sget-object v2, Ljava/security/KeyStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, spi:Ljava/lang/Object;
    new-instance v2, Ljava/security/KeyStore;

    check-cast v1, Ljava/security/KeyStoreSpi;

    .end local v1           #spi:Ljava/lang/Object;
    invoke-direct {v2, v1, p1, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_1f

    return-object v2

    .line 192
    :catch_1f
    move-exception v2

    move-object v0, v2

    .line 194
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static throwNotInitialized()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "KeyStore was not initialized"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final aliases()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 448
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 450
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 453
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineAliases()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final containsAlias(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 466
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 468
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 471
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final deleteEntry(Ljava/lang/String;)V
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 430
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 432
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 435
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public final entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 5
    .parameter "alias"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/security/KeyStore$Entry;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 746
    .local p2, entryClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    if-nez p1, :cond_a

    .line 747
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_a
    if-nez p2, :cond_14

    .line 750
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entryClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_14
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_1b

    .line 755
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 758
    :cond_1b
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 296
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 298
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 301
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 543
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 545
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 548
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 276
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 278
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 281
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 315
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 317
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 320
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .registers 5
    .parameter "alias"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 684
    if-nez p1, :cond_a

    .line 685
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_a
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_11

    .line 689
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 692
    :cond_11
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 4
    .parameter "alias"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 256
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 258
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 261
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isCertificateEntry(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 522
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 524
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 527
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 501
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 503
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 506
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final load(Ljava/io/InputStream;[C)V
    .registers 4
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    .line 636
    return-void
.end method

.method public final load(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    .line 659
    return-void
.end method

.method public final setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 4
    .parameter "alias"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 411
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 413
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 416
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 417
    return-void
.end method

.method public final setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 6
    .parameter "alias"
    .parameter "entry"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 716
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 718
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 721
    :cond_7
    if-nez p1, :cond_11

    .line 722
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_11
    if-nez p2, :cond_1b

    .line 725
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entry == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_1b
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 728
    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 7
    .parameter "alias"
    .parameter "key"
    .parameter "password"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 346
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 348
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 353
    :cond_7
    if-eqz p2, :cond_1a

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1a

    if-eqz p4, :cond_12

    array-length v0, p4

    if-nez v0, :cond_1a

    .line 354
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate chain is not defined for Private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_1a
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 357
    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 5
    .parameter "alias"
    .parameter "key"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 385
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 387
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 390
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    .line 391
    return-void
.end method

.method public final size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 482
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 484
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 487
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineSize()I

    move-result v0

    return v0
.end method

.method public final store(Ljava/io/OutputStream;[C)V
    .registers 4
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 573
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 575
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 580
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    .line 581
    return-void
.end method

.method public final store(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 604
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 606
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 609
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 610
    return-void
.end method
