.class Ljava/security/KeyStore$Builder$BuilderImpl;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final accControlContext:Ljava/security/AccessControlContext;

.field private final fileForLoad:Ljava/io/File;

.field private isGetKeyStore:Z

.field private keyStore:Ljava/security/KeyStore;

.field private lastException:Ljava/security/KeyStoreException;

.field private protParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private final providerForKeyStore:Ljava/security/Provider;

.field private final typeForKeyStore:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;Ljava/security/AccessControlContext;)V
    .registers 8
    .parameter "ks"
    .parameter "pp"
    .parameter "file"
    .parameter "type"
    .parameter "provider"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 971
    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    .line 956
    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    .line 972
    iput-object p1, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;

    .line 973
    iput-object p2, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 974
    iput-object p3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;

    .line 975
    iput-object p4, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    .line 976
    iput-object p5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    .line 977
    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    .line 979
    iput-object p6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->accControlContext:Ljava/security/AccessControlContext;

    .line 980
    return-void
.end method

.method static synthetic access$100(Ljava/security/KeyStore$Builder$BuilderImpl;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 939
    iget-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Ljava/security/KeyStore$Builder$BuilderImpl;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 939
    iget-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getKeyStore()Ljava/security/KeyStore;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1003
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    if-eqz v3, :cond_b

    .line 1004
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    throw v3
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_8

    .line 1003
    :catchall_8
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1006
    :cond_b
    :try_start_b
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;

    if-eqz v3, :cond_16

    .line 1007
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    .line 1008
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_8

    .line 1054
    :goto_14
    monitor-exit p0

    return-object v3

    .line 1016
    :cond_16
    :try_start_16
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    if-nez v3, :cond_3e

    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    move-object v1, v3

    .line 1021
    .local v1, ks:Ljava/security/KeyStore;
    :goto_21
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    instance-of v3, v3, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v3, :cond_48

    .line 1022
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    check-cast v3, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .line 1033
    .local v2, passwd:[C
    :goto_2f
    new-instance v3, Ljava/security/KeyStore$Builder$BuilderImpl$1;

    invoke-direct {v3, p0, v1, v2}, Ljava/security/KeyStore$Builder$BuilderImpl$1;-><init>(Ljava/security/KeyStore$Builder$BuilderImpl;Ljava/security/KeyStore;[C)V

    iget-object v4, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->accControlContext:Ljava/security/AccessControlContext;

    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 1053
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    move-object v3, v1

    .line 1054
    goto :goto_14

    .line 1016
    .end local v1           #ks:Ljava/security/KeyStore;
    .end local v2           #passwd:[C
    :cond_3e
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    iget-object v4, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    invoke-static {v3, v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v3

    move-object v1, v3

    goto :goto_21

    .line 1024
    .restart local v1       #ks:Ljava/security/KeyStore;
    :cond_48
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    instance-of v3, v3, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v3, :cond_55

    .line 1025
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    invoke-static {v3}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C

    move-result-object v2

    .restart local v2       #passwd:[C
    goto :goto_2f

    .line 1028
    .end local v2           #passwd:[C
    :cond_55
    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "protectionParameter is neither PasswordProtection nor CallbackHandlerProtection instance"

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5d
    .catchall {:try_start_16 .. :try_end_5d} :catchall_8
    .catch Ljava/security/KeyStoreException; {:try_start_16 .. :try_end_5d} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_5d} :catch_62

    .line 1055
    .end local v1           #ks:Ljava/security/KeyStore;
    :catch_5d
    move-exception v3

    move-object v0, v3

    .line 1057
    .local v0, e:Ljava/security/KeyStoreException;
    :try_start_5f
    iput-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    throw v0

    .line 1058
    .end local v0           #e:Ljava/security/KeyStoreException;
    :catch_62
    move-exception v3

    move-object v0, v3

    .line 1060
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    throw v3
    :try_end_6c
    .catchall {:try_start_5f .. :try_end_6c} :catchall_8
.end method

.method public declared-synchronized getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 4
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1074
    monitor-enter p0

    if-nez p1, :cond_e

    .line 1075
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 1074
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1077
    :cond_e
    :try_start_e
    iget-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    if-nez v0, :cond_1a

    .line 1078
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKeyStore() was not invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1080
    :cond_1a
    iget-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_b

    monitor-exit p0

    return-object v0
.end method
