.class public final Lcom/zinio/mobile/android/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 19
    const-string v0, ""

    .line 20
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 23
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 24
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 25
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 26
    array-length v3, v2

    .line 27
    mul-int/lit8 v4, v3, 0x2

    new-array v4, v4, [C

    move v6, v5

    .line 30
    :goto_0
    if-ge v5, v3, :cond_0

    .line 31
    aget-byte v7, v2, v5

    .line 32
    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v9, v7, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v1, v9

    aput-char v9, v4, v6

    .line 33
    add-int/lit8 v6, v8, 0x1

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v1, v7

    aput-char v7, v4, v8

    .line 30
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 39
    :goto_1
    return-object v0

    .line 36
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 20
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method
