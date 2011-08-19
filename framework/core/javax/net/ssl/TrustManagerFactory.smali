.class public Ljavax/net/ssl/TrustManagerFactory;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final PROPERTYNAME:Ljava/lang/String; = "ssl.TrustManagerFactory.algorithm"

.field private static final SERVICE:Ljava/lang/String; = "TrustManagerFactory"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/net/ssl/TrustManagerFactorySpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "TrustManagerFactory"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/net/ssl/TrustManagerFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .parameter "factorySpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Ljavax/net/ssl/TrustManagerFactory;->provider:Ljava/security/Provider;

    .line 163
    iput-object p3, p0, Ljavax/net/ssl/TrustManagerFactory;->algorithm:Ljava/lang/String;

    .line 164
    iput-object p1, p0, Ljavax/net/ssl/TrustManagerFactory;->spiImpl:Ljavax/net/ssl/TrustManagerFactorySpi;

    .line 165
    return-void
.end method

.method public static final getDefaultAlgorithm()Ljava/lang/String;
    .registers 1

    .prologue
    .line 53
    new-instance v0, Ljavax/net/ssl/TrustManagerFactory$1;

    invoke-direct {v0}, Ljavax/net/ssl/TrustManagerFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p0, :cond_a

    .line 76
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "algorithm is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_a
    sget-object v1, Ljavax/net/ssl/TrustManagerFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    .line 79
    .local v0, sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljavax/net/ssl/TrustManagerFactory;

    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/TrustManagerFactorySpi;

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 103
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 104
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider is null oe empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_10
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 107
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_1c

    .line 108
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_1c
    invoke-static {p0, v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/TrustManagerFactory;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 131
    if-nez p1, :cond_a

    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_a
    if-nez p0, :cond_14

    .line 135
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "algorithm is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_14
    sget-object v1, Ljavax/net/ssl/TrustManagerFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, spi:Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/TrustManagerFactory;

    check-cast v0, Ljavax/net/ssl/TrustManagerFactorySpi;

    .end local v0           #spi:Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->spiImpl:Ljavax/net/ssl/TrustManagerFactorySpi;

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactorySpi;->engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public final init(Ljava/security/KeyStore;)V
    .registers 3
    .parameter "ks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->spiImpl:Ljavax/net/ssl/TrustManagerFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactorySpi;->engineInit(Ljava/security/KeyStore;)V

    .line 198
    return-void
.end method

.method public final init(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 3
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->spiImpl:Ljavax/net/ssl/TrustManagerFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactorySpi;->engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V

    .line 212
    return-void
.end method
