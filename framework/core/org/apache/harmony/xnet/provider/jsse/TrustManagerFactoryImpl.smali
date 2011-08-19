.class public Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "TrustManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 5

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_c

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrustManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    invoke-direct {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .registers 12
    .parameter "ks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p1, :cond_5

    .line 52
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 120
    :cond_4
    :goto_4
    return-void

    .line 55
    :cond_5
    const-string v7, "javax.net.ssl.trustStore"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_49

    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "java.home"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "etc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "security"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cacerts.bks"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, file:Ljava/lang/String;
    const-string v7, "javax.net.ssl.trustStore"

    invoke-static {v7, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .end local v1           #file:Ljava/lang/String;
    :cond_49
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 65
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl$1;

    invoke-direct {v7, p0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 72
    .local v4, keyStoreName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 73
    .local v5, keyStorePwd:Ljava/lang/String;
    if-eqz v4, :cond_6f

    const-string v7, "NONE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_8f

    .line 76
    :cond_6f
    :try_start_6f
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_76} :catch_77
    .catch Ljava/security/cert/CertificateException; {:try_start_6f .. :try_end_76} :catch_7f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6f .. :try_end_76} :catch_87

    goto :goto_4

    .line 77
    :catch_77
    move-exception v7

    move-object v0, v7

    .line 78
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Ljava/security/KeyStoreException;

    invoke-direct {v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 79
    .end local v0           #e:Ljava/io/IOException;
    :catch_7f
    move-exception v7

    move-object v0, v7

    .line 80
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/security/KeyStoreException;

    invoke-direct {v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 81
    .end local v0           #e:Ljava/security/cert/CertificateException;
    :catch_87
    move-exception v7

    move-object v0, v7

    .line 82
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/security/KeyStoreException;

    invoke-direct {v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 85
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_8f
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl$2;

    invoke-direct {v7, p0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #keyStorePwd:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 93
    .restart local v5       #keyStorePwd:Ljava/lang/String;
    if-nez v5, :cond_be

    .line 94
    sget-object v6, Llibcore/util/EmptyArray;->CHAR:[C

    .line 99
    .local v6, pwd:[C
    :goto_9e
    const/4 v2, 0x0

    .line 101
    .local v2, in:Ljava/io/InputStream;
    :try_start_9f
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a9
    .catchall {:try_start_9f .. :try_end_a9} :catchall_c3

    .line 102
    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    :try_start_a9
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v7, v3, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_ae
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_f1

    .line 104
    if-eqz v3, :cond_4

    .line 105
    :try_start_b0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b3
    .catch Ljava/io/FileNotFoundException; {:try_start_b0 .. :try_end_b3} :catch_b5
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_cd
    .catch Ljava/security/cert/CertificateException; {:try_start_b0 .. :try_end_b3} :catch_d6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b0 .. :try_end_b3} :catch_df

    goto/16 :goto_4

    .line 108
    :catch_b5
    move-exception v7

    move-object v0, v7

    move-object v2, v3

    .line 109
    .end local v3           #in:Ljava/io/InputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #in:Ljava/io/InputStream;
    :goto_b8
    new-instance v7, Ljava/security/KeyStoreException;

    invoke-direct {v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 96
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v6           #pwd:[C
    :cond_be
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .restart local v6       #pwd:[C
    goto :goto_9e

    .line 104
    .restart local v2       #in:Ljava/io/InputStream;
    :catchall_c3
    move-exception v7

    :goto_c4
    if-eqz v2, :cond_c9

    .line 105
    :try_start_c6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_c9
    throw v7
    :try_end_ca
    .catch Ljava/io/FileNotFoundException; {:try_start_c6 .. :try_end_ca} :catch_ca
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_ca} :catch_ee
    .catch Ljava/security/cert/CertificateException; {:try_start_c6 .. :try_end_ca} :catch_eb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c6 .. :try_end_ca} :catch_e8

    .line 108
    :catch_ca
    move-exception v7

    move-object v0, v7

    goto :goto_b8

    .line 110
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_cd
    move-exception v7

    move-object v0, v7

    move-object v2, v3

    .line 111
    .end local v3           #in:Ljava/io/InputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/InputStream;
    :goto_d0
    new-instance v7, Ljava/security/KeyStoreException;

    invoke-direct {v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 112
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_d6
    move-exception v7

    move-object v0, v7

    move-object v2, v3

    .line 113
    .end local v3           #in:Ljava/io/InputStream;
    .local v0, e:Ljava/security/cert/CertificateException;
    .restart local v2       #in:Ljava/io/InputStream;
    :goto_d9
    new-instance v7, Ljava/security/KeyStoreException;

    invoke-direct {v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 114
    .end local v0           #e:Ljava/security/cert/CertificateException;
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_df
    move-exception v7

    move-object v0, v7

    move-object v2, v3

    .line 115
    .end local v3           #in:Ljava/io/InputStream;
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    .restart local v2       #in:Ljava/io/InputStream;
    :goto_e2
    new-instance v7, Ljava/security/KeyStoreException;

    invoke-direct {v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 114
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_e8
    move-exception v7

    move-object v0, v7

    goto :goto_e2

    .line 112
    :catch_eb
    move-exception v7

    move-object v0, v7

    goto :goto_d9

    .line 110
    :catch_ee
    move-exception v7

    move-object v0, v7

    goto :goto_d0

    .line 104
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catchall_f1
    move-exception v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_c4
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
    .line 128
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
