.class public Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "KeyManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;

.field private pwd:[C


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 6

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_c

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    invoke-direct {v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;-><init>(Ljava/security/KeyStore;[C)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;[C)V
    .registers 9
    .parameter "ks"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p1, :cond_14

    .line 56
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 57
    if-eqz p2, :cond_f

    .line 58
    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    .line 108
    :goto_e
    return-void

    .line 60
    :cond_f
    sget-object v3, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_e

    .line 63
    :cond_14
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 64
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl$1;

    invoke-direct {v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, keyStoreName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 71
    .local v2, keyStorePwd:Ljava/lang/String;
    if-eqz v1, :cond_3a

    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_52

    .line 74
    :cond_3a
    :try_start_3a
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_42
    .catch Ljava/security/cert/CertificateException; {:try_start_3a .. :try_end_41} :catch_4a

    goto :goto_e

    .line 75
    :catch_42
    move-exception v3

    move-object v0, v3

    .line 76
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 77
    .end local v0           #e:Ljava/io/IOException;
    :catch_4a
    move-exception v3

    move-object v0, v3

    .line 78
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 81
    .end local v0           #e:Ljava/security/cert/CertificateException;
    :cond_52
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl$2;

    invoke-direct {v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #keyStorePwd:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 88
    .restart local v2       #keyStorePwd:Ljava/lang/String;
    if-nez v2, :cond_7d

    .line 89
    sget-object v3, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    .line 94
    :goto_63
    :try_start_63
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_74} :catch_75
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_74} :catch_84
    .catch Ljava/security/cert/CertificateException; {:try_start_63 .. :try_end_74} :catch_8c

    goto :goto_e

    .line 97
    :catch_75
    move-exception v3

    move-object v0, v3

    .line 98
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 91
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_7d
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_63

    .line 99
    :catch_84
    move-exception v3

    move-object v0, v3

    .line 100
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 101
    .end local v0           #e:Ljava/io/IOException;
    :catch_8c
    move-exception v3

    move-object v0, v3

    .line 102
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 4
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
