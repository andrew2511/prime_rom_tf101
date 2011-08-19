.class public Lcom/google/mobile/common/io/IoUtil;
.super Ljava/lang/Object;


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/mobile/common/io/IoUtil;->HEX_DIGITS:[C

    return-void

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
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeUtf8([BIIZ)Ljava/lang/String;
    .locals 12

    const v10, 0xd800

    const/16 v9, 0x80

    const/4 v8, 0x1

    new-instance v0, Ljava/lang/StringBuffer;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_d

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x7f

    if-gt v1, v3, :cond_0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0xf5

    if-lt v1, v3, :cond_2

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_0

    :cond_2
    const/16 v3, 0xe0

    const/16 v4, 0x1f

    move v5, v8

    move v6, v3

    move v3, v4

    move v4, v9

    :goto_1
    if-lt v1, v6, :cond_4

    shr-int/lit8 v6, v6, 0x1

    or-int/lit16 v6, v6, 0x80

    if-ne v5, v8, :cond_3

    const/4 v7, 0x4

    :goto_2
    shl-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x5

    goto :goto_2

    :cond_4
    and-int/2addr v1, v3

    const/4 v3, 0x0

    move v11, v3

    move v3, v2

    move v2, v1

    move v1, v11

    :goto_3
    if-ge v1, v5, :cond_8

    shl-int/lit8 v2, v2, 0x6

    if-lt v3, p2, :cond_5

    if-nez p3, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p3, :cond_6

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xc0

    if-eq v6, v9, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    move v3, v6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    if-nez p3, :cond_9

    if-lt v2, v4, :cond_a

    :cond_9
    if-lt v2, v10, :cond_b

    const v1, 0xdfff

    if-gt v2, v1, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const v1, 0xffff

    if-gt v2, v1, :cond_c

    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    goto/16 :goto_0

    :cond_c
    const/high16 v1, 0x1

    sub-int v1, v2, v1

    shr-int/lit8 v2, v1, 0xa

    or-int/2addr v2, v10

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const v2, 0xdc00

    and-int/lit16 v1, v1, 0x3ff

    or-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeUtf8(Ljava/lang/String;[BI)I
    .locals 10

    const v8, 0xd800

    const v7, 0xfc00

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    if-ge v1, v0, :cond_8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v8, :cond_9

    const v4, 0xdfff

    if-gt v3, v4, :cond_9

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_9

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int v5, v4, v7

    and-int v6, v3, v7

    xor-int/2addr v5, v6

    const/16 v6, 0x400

    if-ne v5, v6, :cond_9

    add-int/lit8 v1, v1, 0x1

    and-int v5, v4, v7

    if-ne v5, v8, :cond_0

    move v9, v4

    move v4, v3

    move v3, v9

    :cond_0
    and-int/lit16 v3, v3, 0x3ff

    shl-int/lit8 v3, v3, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    const/high16 v4, 0x1

    add-int/2addr v3, v4

    move v9, v3

    move v3, v1

    move v1, v9

    :goto_1
    const/16 v4, 0x7f

    if-gt v1, v4, :cond_2

    if-eqz p1, :cond_1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    :cond_1
    add-int/lit8 v1, v2, 0x1

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_0

    :cond_2
    const/16 v4, 0x7ff

    if-gt v1, v4, :cond_4

    if-eqz p1, :cond_3

    shr-int/lit8 v4, v1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    :cond_3
    add-int/lit8 v1, v2, 0x2

    goto :goto_2

    :cond_4
    const v4, 0xffff

    if-gt v1, v4, :cond_6

    if-eqz p1, :cond_5

    shr-int/lit8 v4, v1, 0xc

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    :cond_5
    add-int/lit8 v1, v2, 0x3

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    shr-int/lit8 v4, v1, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x2

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x3

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    :cond_7
    add-int/lit8 v1, v2, 0x4

    goto :goto_2

    :cond_8
    return v2

    :cond_9
    move v9, v3

    move v3, v1

    move v1, v9

    goto :goto_1
.end method

.method public static encodeUtf8(Ljava/lang/String;)[B
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/mobile/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    new-array v0, v0, [B

    invoke-static {p0, v0, v1}, Lcom/google/mobile/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    return-object v0
.end method
