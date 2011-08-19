.class public Lcom/android/org/bouncycastle/x509/X509Store;
.super Ljava/lang/Object;
.source "X509Store.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Store;


# instance fields
.field private _provider:Ljava/security/Provider;

.field private _spi:Lcom/android/org/bouncycastle/x509/X509StoreSpi;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Lcom/android/org/bouncycastle/x509/X509StoreSpi;)V
    .registers 3
    .parameter "provider"
    .parameter "spi"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509Store;->_provider:Ljava/security/Provider;

    .line 67
    iput-object p2, p0, Lcom/android/org/bouncycastle/x509/X509Store;->_spi:Lcom/android/org/bouncycastle/x509/X509StoreSpi;

    .line 68
    return-void
.end method

.method private static createStore(Lcom/android/org/bouncycastle/x509/X509Util$Implementation;Lcom/android/org/bouncycastle/x509/X509StoreParameters;)Lcom/android/org/bouncycastle/x509/X509Store;
    .registers 5
    .parameter "impl"
    .parameter "parameters"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;->getEngine()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509StoreSpi;

    .line 54
    .local v0, spi:Lcom/android/org/bouncycastle/x509/X509StoreSpi;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/x509/X509StoreSpi;->engineInit(Lcom/android/org/bouncycastle/x509/X509StoreParameters;)V

    .line 56
    new-instance v1, Lcom/android/org/bouncycastle/x509/X509Store;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/x509/X509Store;-><init>(Ljava/security/Provider;Lcom/android/org/bouncycastle/x509/X509StoreSpi;)V

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/X509StoreParameters;)Lcom/android/org/bouncycastle/x509/X509Store;
    .registers 6
    .parameter "type"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/x509/NoSuchStoreException;
        }
    .end annotation

    .prologue
    .line 19
    :try_start_0
    const-string v2, "X509Store"

    invoke-static {v2, p0}, Lcom/android/org/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;)Lcom/android/org/bouncycastle/x509/X509Util$Implementation;

    move-result-object v1

    .line 21
    .local v1, impl:Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/x509/X509Store;->createStore(Lcom/android/org/bouncycastle/x509/X509Util$Implementation;Lcom/android/org/bouncycastle/x509/X509StoreParameters;)Lcom/android/org/bouncycastle/x509/X509Store;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    return-object v2

    .line 23
    .end local v1           #impl:Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    :catch_b
    move-exception v2

    move-object v0, v2

    .line 25
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lcom/android/org/bouncycastle/x509/NoSuchStoreException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/x509/NoSuchStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/X509StoreParameters;Ljava/lang/String;)Lcom/android/org/bouncycastle/x509/X509Store;
    .registers 4
    .parameter "type"
    .parameter "parameters"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/x509/NoSuchStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p2}, Lcom/android/org/bouncycastle/x509/X509Util;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/x509/X509Store;->getInstance(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/X509StoreParameters;Ljava/security/Provider;)Lcom/android/org/bouncycastle/x509/X509Store;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/X509StoreParameters;Ljava/security/Provider;)Lcom/android/org/bouncycastle/x509/X509Store;
    .registers 7
    .parameter "type"
    .parameter "parameters"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/x509/NoSuchStoreException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    const-string v2, "X509Store"

    invoke-static {v2, p0, p2}, Lcom/android/org/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/bouncycastle/x509/X509Util$Implementation;

    move-result-object v1

    .line 42
    .local v1, impl:Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/x509/X509Store;->createStore(Lcom/android/org/bouncycastle/x509/X509Util$Implementation;Lcom/android/org/bouncycastle/x509/X509StoreParameters;)Lcom/android/org/bouncycastle/x509/X509Store;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    return-object v2

    .line 44
    .end local v1           #impl:Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    :catch_b
    move-exception v2

    move-object v0, v2

    .line 46
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lcom/android/org/bouncycastle/x509/NoSuchStoreException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/x509/NoSuchStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getMatches(Lcom/android/org/bouncycastle/util/Selector;)Ljava/util/Collection;
    .registers 3
    .parameter "selector"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Store;->_spi:Lcom/android/org/bouncycastle/x509/X509StoreSpi;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/x509/X509StoreSpi;->engineGetMatches(Lcom/android/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Store;->_provider:Ljava/security/Provider;

    return-object v0
.end method
