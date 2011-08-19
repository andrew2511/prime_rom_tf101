.class final Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier$1;
.super Ljava/lang/Object;
.source "RandomBitsSupplier.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 76
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v2, Lorg/apache/harmony/security/provider/crypto/SHA1_Data;->DEVICE_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2b

    .line 77
    new-instance v0, Ljava/io/File;

    sget-object v2, Lorg/apache/harmony/security/provider/crypto/SHA1_Data;->DEVICE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, file:Ljava/io/File;
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 82
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->access$002(Ljava/io/FileInputStream;)Ljava/io/FileInputStream;

    .line 84
    invoke-static {v0}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->access$102(Ljava/io/File;)Ljava/io/File;

    .line 85
    const/4 v2, 0x1

    invoke-static {v2}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->access$202(Z)Z
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_25} :catch_27

    move-object v2, v3

    .line 101
    .end local v0           #file:Ljava/io/File;
    :goto_26
    return-object v2

    .line 88
    .restart local v0       #file:Ljava/io/File;
    :catch_27
    move-exception v2

    .line 76
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #file:Ljava/io/File;
    :cond_2b
    move-object v2, v3

    .line 101
    goto :goto_26
.end method
