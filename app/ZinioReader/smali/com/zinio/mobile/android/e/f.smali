.class public final Lcom/zinio/mobile/android/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Lcom/zinio/mobile/android/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {}, Lcom/zinio/mobile/android/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zinio/mobile/android/e/f;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v1, v0}, Lcom/zinio/mobile/android/e/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/zinio/mobile/android/e/g;

    invoke-direct {v1}, Lcom/zinio/mobile/android/e/g;-><init>()V

    .line 236
    invoke-static {v0}, Lcom/zinio/mobile/android/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/zinio/mobile/android/e/a;

    invoke-direct {v0}, Lcom/zinio/mobile/android/e/a;-><init>()V

    .line 81
    invoke-static {p1}, Lcom/zinio/mobile/android/e/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/e/a;->a([B)V

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 84
    new-array v3, v5, [B

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move v4, v2

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/zinio/mobile/android/e/a;->a([BI[BII)V

    .line 91
    invoke-static {v3}, Lcom/zinio/mobile/android/e/f;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 30
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x10

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 46
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 47
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 48
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 47
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 51
    :cond_0
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 127
    invoke-static {}, Lcom/zinio/mobile/android/e/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {p0, v0}, Lcom/zinio/mobile/android/e/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Lcom/zinio/mobile/android/e/a;

    invoke-direct {v0}, Lcom/zinio/mobile/android/e/a;-><init>()V

    .line 106
    invoke-static {p1}, Lcom/zinio/mobile/android/e/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/e/a;->a([B)V

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 109
    new-array v2, v1, [B

    .line 112
    invoke-static {p0}, Lcom/zinio/mobile/android/e/f;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 114
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/zinio/mobile/android/e/a;->a([B[BII)V

    .line 116
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 141
    invoke-static {}, Lcom/zinio/mobile/android/e/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {p0, v0}, Lcom/zinio/mobile/android/e/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
