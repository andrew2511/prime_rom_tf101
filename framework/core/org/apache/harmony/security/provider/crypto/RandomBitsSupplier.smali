.class public Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;
.super Ljava/lang/Object;
.source "RandomBitsSupplier.java"

# interfaces
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# static fields
.field private static bis:Ljava/io/FileInputStream;

.field private static randomFile:Ljava/io/File;

.field private static serviceAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->bis:Ljava/io/FileInputStream;

    .line 63
    sput-object v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->randomFile:Ljava/io/File;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    .line 72
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier$1;

    invoke-direct {v0}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/io/FileInputStream;)Ljava/io/FileInputStream;
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->bis:Ljava/io/FileInputStream;

    return-object p0
.end method

.method static synthetic access$102(Ljava/io/File;)Ljava/io/File;
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->randomFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    sput-boolean p0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    return p0
.end method

.method public static getRandomBits(I)[B
    .registers 3
    .parameter "numBytes"

    .prologue
    .line 183
    if-gtz p0, :cond_c

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_c
    sget-boolean v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    if-nez v0, :cond_18

    .line 190
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "ATTENTION: service is not available : no random devices"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_18
    invoke-static {p0}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->getUnixDeviceRandom(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getUnixDeviceRandom(I)[B
    .registers 10
    .parameter "numBytes"

    .prologue
    .line 124
    const-class v5, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;

    monitor-enter v5

    :try_start_3
    new-array v0, p0, [B
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_35

    .line 126
    .local v0, bytes:[B
    const/4 v4, 0x0

    .line 128
    .local v4, total:I
    const/4 v3, 0x0

    .line 132
    .local v3, offset:I
    :cond_7
    :try_start_7
    sget-object v6, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->bis:Ljava/io/FileInputStream;

    sub-int v7, p0, v4

    invoke-virtual {v6, v0, v3, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 137
    .local v1, bytesRead:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_38

    .line 138
    new-instance v6, Ljava/security/ProviderException;

    const-string v7, "bytesRead == -1"

    invoke-direct {v6, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_35
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1a} :catch_1a

    .line 148
    .end local v1           #bytesRead:I
    :catch_1a
    move-exception v6

    move-object v2, v6

    .line 153
    .local v2, e:Ljava/io/IOException;
    :try_start_1c
    new-instance v6, Ljava/security/ProviderException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ATTENTION: IOException in RandomBitsSupplier.getLinuxRandomBits(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_35

    .line 124
    .end local v0           #bytes:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #offset:I
    .end local v4           #total:I
    :catchall_35
    move-exception v6

    monitor-exit v5

    throw v6

    .line 141
    .restart local v0       #bytes:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #offset:I
    .restart local v4       #total:I
    :cond_38
    add-int/2addr v4, v1

    .line 142
    add-int/2addr v3, v1

    .line 144
    if-lt v4, p0, :cond_7

    .line 155
    monitor-exit v5

    return-object v0
.end method

.method static isServiceAvailable()Z
    .registers 1

    .prologue
    .line 112
    sget-boolean v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    return v0
.end method
