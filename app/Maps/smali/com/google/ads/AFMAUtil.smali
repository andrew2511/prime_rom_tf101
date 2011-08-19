.class public Lcom/google/ads/AFMAUtil;
.super Ljava/lang/Object;
.source "AFMAUtil.java"


# static fields
.field private static final fff:Ljava/lang/String; = "ms"

.field static final ggg:I = 0x20

.field static final hhh:Ljava/lang/String; = "0123456789"

.field private static final lll:Ljava/lang/String; = "AFMAUtil"

.field private static final uuu:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 0
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    return-void
.end method

.method public static a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .parameter

    .prologue
    .line 0
    .line 50
    :try_start_0
    const-string v0, "0123456789"

    .line 51
    const-string v1, "0123456789"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 55
    if-eqz v0, :cond_0

    move-object v0, p0

    .line 49
    :goto_0
    return-object v0

    .line 3
    :cond_0
    :try_start_1
    const-string v0, "0123456789"

    .line 4
    const/16 v1, 0xb

    .line 5
    invoke-static {v0, v1}, Lcom/google/ads/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 8
    invoke-static {p0}, Lcom/google/ads/AFMAUtil;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-static {}, Lcom/google/ads/AFMAUtil;->f()Z

    move-result v2

    .line 13
    if-nez v2, :cond_1

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/google/ads/AFMAUtil;->c([B[B)[B

    move-result-object v0

    .line 22
    const/16 v1, 0xb

    .line 23
    invoke-static {v0, v1}, Lcom/google/ads/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "ms"

    .line 25
    invoke-static {p0, v0, v1}, Lcom/google/ads/AFMAUtil;->d(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 16
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const v1, 0x6d0e0f12

    .line 31
    int-to-byte v1, v1

    .line 33
    rem-int/lit8 v1, v1, 0x9

    .line 34
    if-eqz v1, :cond_2

    .line 35
    const/4 v0, 0x0

    .line 36
    throw v0

    .line 37
    :cond_2
    const-string v1, "AFMAUtil"

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v3, "Util failed: "

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 49
    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    throw v0
.end method

.method static b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 0
    .line 16
    if-nez p0, :cond_1

    .line 17
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    const-string v1, "Malformed input (2)"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0

    .line 30
    :catch_0
    move-exception v0

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    const v1, 0x5e5642f7

    .line 4
    int-to-byte v1, v1

    .line 6
    rem-int/lit8 v1, v1, 0x3

    .line 7
    if-eqz v1, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    throw v0

    .line 11
    :cond_0
    const-string v1, "Malformed input (3)"

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    :catch_1
    move-exception v0

    throw v0

    .line 25
    :cond_1
    :try_start_2
    const-string v0, "ai"

    .line 26
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 29
    return-object v0
.end method

.method static c([B[B)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 0
    .line 27
    if-eqz p0, :cond_1

    .line 29
    :try_start_0
    array-length v0, p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    if-eqz v0, :cond_1

    .line 34
    if-eqz p1, :cond_1

    .line 36
    array-length v0, p1

    .line 37
    const v1, 0x3ae3a02d

    .line 38
    int-to-byte v1, v1

    .line 40
    rem-int/lit8 v1, v1, 0x9

    .line 41
    if-eqz v1, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 44
    throw v0

    .line 45
    :cond_0
    if-nez v0, :cond_2

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v1, "Malformed input (4)"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 5
    throw v0

    .line 8
    :cond_2
    const/16 v0, 0x20

    .line 10
    array-length v1, p1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 14
    new-array v1, v0, [B

    .line 19
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-static {p0, v1}, Lcom/google/ads/AFMAUtil;->e([B[B)[B

    move-result-object v0

    .line 25
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    throw v0
.end method

.method static d(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 0
    .line 34
    if-eqz p0, :cond_1

    .line 2
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 5
    const v1, 0x4a63eeaf

    .line 6
    int-to-byte v1, v1

    .line 8
    rem-int/lit8 v1, v1, 0x9

    .line 9
    if-eqz v1, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 12
    throw v0

    .line 13
    :cond_0
    if-eqz v0, :cond_1

    .line 15
    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string v1, "Malformed input (5)"

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0

    .line 25
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 32
    return-object v0
.end method

.method static e([B[B)[B
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x0

    .line 0
    .line 76
    if-eqz p0, :cond_0

    .line 78
    :try_start_0
    array-length v0, p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    if-nez v0, :cond_3

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 84
    const-string v1, "Malformed input (6)"

    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw v0

    .line 163
    :cond_1
    array-length v1, p0

    .line 164
    new-array v1, v1, [B

    move v2, v5

    move v3, v5

    move v4, v5

    .line 5
    :goto_0
    array-length v5, p0

    .line 6
    if-ge v3, v5, :cond_7

    .line 9
    add-int/lit8 v2, v2, 0x1

    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 15
    aget-byte v5, v0, v2

    .line 17
    and-int/lit16 v5, v5, 0xff

    .line 19
    add-int/2addr v4, v5

    .line 21
    and-int/lit16 v4, v4, 0xff

    .line 27
    aget-byte v5, v0, v2

    .line 32
    aget-byte v6, v0, v4

    .line 33
    aput-byte v6, v0, v2

    .line 34
    aput-byte v5, v0, v4

    .line 37
    aget-byte v5, v0, v2

    .line 39
    and-int/lit16 v5, v5, 0xff

    .line 43
    const v6, 0x5a6357c1

    .line 44
    int-to-byte v6, v6

    .line 46
    rem-int/lit8 v6, v6, 0x9

    .line 47
    if-eqz v6, :cond_2

    .line 176
    const/4 v0, 0x0

    .line 51
    throw v0

    .line 52
    :cond_2
    aget-byte v6, v0, v4

    .line 54
    and-int/lit16 v6, v6, 0xff

    .line 56
    add-int/2addr v5, v6

    .line 58
    and-int/lit16 v5, v5, 0xff

    .line 64
    aget-byte v6, p0, v3

    .line 67
    aget-byte v5, v0, v5

    .line 68
    xor-int/2addr v5, v6

    .line 69
    int-to-byte v5, v5

    .line 70
    aput-byte v5, v1, v3

    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    goto :goto_0

    .line 88
    :cond_3
    if-eqz p1, :cond_4

    .line 90
    array-length v0, p1

    .line 91
    if-eqz v0, :cond_4

    .line 93
    array-length v0, p1

    .line 95
    if-le v0, v6, :cond_5

    .line 96
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 98
    const-string v1, "Malformed input (7)"

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    throw v0

    .line 102
    :cond_5
    new-array v0, v6, [B

    move v1, v5

    .line 108
    :goto_1
    if-ge v1, v6, :cond_6

    .line 112
    int-to-byte v2, v1

    .line 113
    aput-byte v2, v0, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    goto :goto_1

    :cond_6
    move v1, v5

    move v2, v5

    .line 122
    :goto_2
    if-ge v2, v6, :cond_1

    .line 126
    array-length v3, p1

    .line 127
    rem-int v3, v2, v3

    .line 128
    aget-byte v3, p1, v3

    .line 130
    and-int/lit16 v3, v3, 0xff

    .line 133
    aget-byte v4, v0, v2

    .line 135
    and-int/lit16 v4, v4, 0xff

    .line 136
    add-int/2addr v3, v4

    .line 138
    add-int/2addr v1, v3

    .line 140
    and-int/lit16 v1, v1, 0xff

    .line 146
    aget-byte v3, v0, v2

    .line 151
    aget-byte v4, v0, v1

    .line 152
    aput-byte v4, v0, v2

    .line 153
    aput-byte v3, v0, v1

    .line 154
    add-int/lit8 v2, v2, 0x1

    .line 155
    goto :goto_2

    .line 167
    :catch_0
    move-exception v0

    throw v0

    .line 74
    :cond_7
    return-object v1
.end method

.method static f()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    move v0, v7

    .line 4
    :goto_0
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x2

    .line 8
    nop

    .line 9
    :try_start_0
    const-string v1, "1"

    .line 10
    const-string v2, "android.os.SystemProperties"

    .line 11
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 12
    const-string v3, "get"

    .line 13
    const/4 v4, 0x1

    .line 14
    new-array v4, v4, [Ljava/lang/Class;

    .line 16
    const/4 v5, 0x0

    .line 17
    const-class v6, Ljava/lang/String;

    .line 18
    aput-object v6, v4, v5

    .line 19
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    const/4 v5, 0x0

    .line 28
    const-string v6, "ro.kernel.qemu"

    .line 29
    aput-object v6, v4, v5

    .line 30
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 37
    :goto_1
    return v0

    :cond_0
    move v0, v7

    goto :goto_1

    .line 3
    :catch_0
    move-exception v1

    goto :goto_0
.end method
