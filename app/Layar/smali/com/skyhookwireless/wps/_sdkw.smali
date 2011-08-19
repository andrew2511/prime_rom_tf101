.class final Lcom/skyhookwireless/wps/_sdkw;
.super Ljava/lang/Object;


# static fields
.field private static final _sdka:[B

.field static final synthetic _sdke:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private _sdkb:[I

.field private _sdkc:J

.field private _sdkd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x52

    const/16 v12, 0x30

    const/16 v11, 0x20

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a\u0010\u0014t3f\u0015\u001fy<k\u001e\u001a~9p\u0003\u0005c\"u\u0004\u0000h/z35S\u0012E40X\u001fJ9;]\u0018O\"&B\u0005T\'!G\u000eY(g\u0001D\u0013fb\u0006A\u0018k"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_f

    move v3, v9

    :cond_0
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_0
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_0

    const/16 v7, 0x76

    :goto_1
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_1

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_0

    :cond_1
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_2
    if-gt v2, v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "\u0011`d\u0004C\u0016eo\tF\u0011`d\u0004C\u0016eo\tF\u0011`d\u0004C\u0016eo\tF\u0011`d\u0004C\u0016eo\tF\u0011`d\u0004C\u0016eo\tF\u0011`d\u0004C\u0016eo\tF\u0011`d\u0004C\u0016eo\tF\u0011`d\u0004C\u0016eo\tF"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_e

    move v3, v9

    :cond_2
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_3
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_1

    const/16 v7, 0x76

    :goto_4
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_3

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_3

    :cond_3
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_5
    if-gt v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x2

    const-string v2, "A04"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_d

    move v4, v9

    :cond_4
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_6
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2

    const/16 v8, 0x76

    :goto_7
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_5

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_6

    :cond_5
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_8
    if-gt v3, v4, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "M7$C\u0017G7wT\u001fG7$D"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c

    move v4, v9

    :cond_6
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_9
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_3

    const/16 v8, 0x76

    :goto_a
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_7

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_9

    :cond_7
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_b
    if-gt v3, v4, :cond_6

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "A04T\u0013F5?Y\u001cK>:^\u0019P#%C\u0002U$ H\u000fZ"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_b

    move v4, v9

    :cond_8
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_c
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_4

    const/16 v8, 0x76

    :goto_d
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_9

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_c

    :cond_9
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_e
    if-gt v3, v4, :cond_8

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/wps/_sdkw;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/_sdkw;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v10

    :goto_f
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkw;->_sdke:Z

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/skyhookwireless/wps/_sdkw;->_sdka:[B

    return-void

    :cond_a
    move v0, v9

    goto :goto_f

    :pswitch_0
    move v7, v11

    goto/16 :goto_1

    :pswitch_1
    move v7, v13

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x57

    goto/16 :goto_1

    :pswitch_3
    move v7, v12

    goto/16 :goto_1

    :pswitch_4
    move v7, v11

    goto/16 :goto_4

    :pswitch_5
    move v7, v13

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x57

    goto/16 :goto_4

    :pswitch_7
    move v7, v12

    goto/16 :goto_4

    :pswitch_8
    move v8, v11

    goto/16 :goto_7

    :pswitch_9
    move v8, v13

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x57

    goto/16 :goto_7

    :pswitch_b
    move v8, v12

    goto/16 :goto_7

    :pswitch_c
    move v8, v11

    goto/16 :goto_a

    :pswitch_d
    move v8, v13

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x57

    goto/16 :goto_a

    :pswitch_f
    move v8, v12

    goto/16 :goto_a

    :pswitch_10
    move v8, v11

    goto :goto_d

    :pswitch_11
    move v8, v13

    goto :goto_d

    :pswitch_12
    const/16 v8, 0x57

    goto :goto_d

    :pswitch_13
    move v8, v12

    goto :goto_d

    :cond_b
    move v4, v9

    goto :goto_e

    :cond_c
    move v4, v9

    goto/16 :goto_b

    :cond_d
    move v4, v9

    goto/16 :goto_8

    :cond_e
    move v3, v9

    goto/16 :goto_5

    :cond_f
    move v3, v9

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :array_0
    .array-data 0x1
        0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkd:[B

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    const/4 v1, 0x0

    const v2, 0x67452301

    aput v2, v0, v1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    const/4 v1, 0x1

    const v2, -0x10325477

    aput v2, v0, v1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    const/4 v1, 0x2

    const v2, -0x67452302

    aput v2, v0, v1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    const/4 v1, 0x3

    const v2, 0x10325476

    aput v2, v0, v1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkc:J

    return-void
.end method

.method private static final _sdka(II)I
    .locals 2

    const/16 v1, 0x20

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkw;->_sdke:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    move v0, p0

    :goto_0
    return v0

    :cond_3
    shl-int v0, p0, p1

    sub-int/2addr v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private static final _sdka(III)I
    .locals 2

    and-int v0, p0, p1

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private static final _sdka(IIIIII)I
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(III)I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    invoke-static {v0, p5}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(II)I

    move-result v0

    return v0
.end method

.method private static final _sdka(Ljava/lang/String;[B)V
    .locals 5

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    new-instance v1, Lcom/skyhookwireless/wps/_sdkw;

    invoke-direct {v1}, Lcom/skyhookwireless/wps/_sdkw;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/skyhookwireless/wps/_sdkw;->_sdka([BI)V

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkw;->_sdka()[B

    move-result-object v1

    sget-boolean v2, Lcom/skyhookwireless/wps/_sdkw;->_sdke:Z

    if-nez v2, :cond_0

    array-length v2, v1

    array-length v3, p1

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-byte v3, v1, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-eqz v0, :cond_1

    :cond_3
    return-void
.end method

.method private static _sdka([BJ)V
    .locals 6

    const/16 v5, 0x8

    const-wide/16 v3, 0xff

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkw;->_sdke:Z

    if-nez v0, :cond_0

    array-length v0, p0

    if-ge v0, v5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    and-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x1

    shr-long v1, p1, v5

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x2

    const/16 v1, 0x10

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x3

    const/16 v1, 0x18

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x4

    const/16 v1, 0x20

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x5

    const/16 v1, 0x28

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x6

    const/16 v1, 0x30

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x7

    const/16 v1, 0x38

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method private static _sdka([B[II)V
    .locals 5

    const/4 v3, 0x0

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkw;->_sdke:Z

    if-nez v1, :cond_0

    rem-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkw;->_sdke:Z

    if-nez v1, :cond_1

    array-length v1, p1

    div-int/lit8 v2, p2, 0x4

    if-ge v1, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkw;->_sdke:Z

    if-nez v1, :cond_2

    array-length v1, p0

    if-ge v1, p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v1, v3

    move v2, v3

    :cond_3
    if-ge v1, p2, :cond_4

    aget v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget v4, p1, v2

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, v1, 0x2

    aget v4, p1, v2

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, v1, 0x3

    aget v4, p1, v2

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x4

    if-eqz v0, :cond_3

    :cond_4
    return-void
.end method

.method private static _sdka([I[BI)V
    .locals 6

    const/4 v3, 0x0

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkw;->_sdke:Z

    if-nez v1, :cond_0

    rem-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkw;->_sdke:Z

    if-nez v1, :cond_1

    array-length v1, p0

    div-int/lit8 v2, p2, 0x4

    if-ge v1, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkw;->_sdke:Z

    if-nez v1, :cond_2

    array-length v1, p1

    if-ge v1, p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v1, v3

    move v2, v3

    :cond_3
    if-ge v1, p2, :cond_4

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, 0xff

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x18

    const/high16 v5, -0x100

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x4

    if-eqz v0, :cond_3

    :cond_4
    return-void
.end method

.method public static final _sdka([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v3, 0x10

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    const-string v1, ""

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(Ljava/lang/String;[B)V

    const-string v1, "a"

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(Ljava/lang/String;[B)V

    sget-object v1, Lcom/skyhookwireless/wps/_sdkw;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    invoke-static {v1, v2}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(Ljava/lang/String;[B)V

    sget-object v1, Lcom/skyhookwireless/wps/_sdkw;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    invoke-static {v1, v2}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(Ljava/lang/String;[B)V

    sget-object v1, Lcom/skyhookwireless/wps/_sdkw;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    invoke-static {v1, v2}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(Ljava/lang/String;[B)V

    sget-object v1, Lcom/skyhookwireless/wps/_sdkw;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    invoke-static {v1, v2}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(Ljava/lang/String;[B)V

    sget-object v1, Lcom/skyhookwireless/wps/_sdkw;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    invoke-static {v1, v2}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(Ljava/lang/String;[B)V

    if-eqz v0, :cond_0

    sget v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    :cond_0
    return-void

    :array_0
    .array-data 0x1
        0x31t
        0xd6t
        0xcft
        0xe0t
        0xd1t
        0x6at
        0xe9t
        0x31t
        0xb7t
        0x3ct
        0x59t
        0xd7t
        0xe0t
        0xc0t
        0x89t
        0xc0t
    .end array-data

    :array_1
    .array-data 0x1
        0xbdt
        0xe5t
        0x2ct
        0xb3t
        0x1dt
        0xe3t
        0x3et
        0x46t
        0x24t
        0x5et
        0x5t
        0xfbt
        0xdbt
        0xd6t
        0xfbt
        0x24t
    .end array-data

    :array_2
    .array-data 0x1
        0xa4t
        0x48t
        0x1t
        0x7at
        0xaft
        0x21t
        0xd8t
        0x52t
        0x5ft
        0xc1t
        0xat
        0xe8t
        0x7at
        0xa6t
        0x72t
        0x9dt
    .end array-data

    :array_3
    .array-data 0x1
        0xd9t
        0x13t
        0xat
        0x81t
        0x64t
        0x54t
        0x9ft
        0xe8t
        0x18t
        0x87t
        0x48t
        0x6t
        0xe1t
        0xc7t
        0x1t
        0x4bt
    .end array-data

    :array_4
    .array-data 0x1
        0xd7t
        0x9et
        0x1ct
        0x30t
        0x8at
        0xa5t
        0xbbt
        0xcdt
        0xeet
        0xa8t
        0xedt
        0x63t
        0xdft
        0x41t
        0x2dt
        0xa9t
    .end array-data

    :array_5
    .array-data 0x1
        0x4t
        0x3ft
        0x85t
        0x82t
        0xf2t
        0x41t
        0xdbt
        0x35t
        0x1ct
        0xe6t
        0x27t
        0xe1t
        0x53t
        0xe7t
        0xf0t
        0xe4t
    .end array-data

    :array_6
    .array-data 0x1
        0xe3t
        0x3bt
        0x4dt
        0xdct
        0x9ct
        0x38t
        0xf2t
        0x19t
        0x9ct
        0x3et
        0x7bt
        0x16t
        0x4ft
        0xcct
        0x5t
        0x36t
    .end array-data
.end method

.method private static final _sdkb(III)I
    .locals 2

    and-int v0, p0, p1

    and-int v1, p0, p2

    or-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private static final _sdkb(IIIIII)I
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(III)I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    const v1, 0x5a827999

    add-int/2addr v0, v1

    invoke-static {v0, p5}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(II)I

    move-result v0

    return v0
.end method

.method private final _sdkb([BI)V
    .locals 28

    sget-boolean v3, Lcom/skyhookwireless/wps/_sdkw;->_sdke:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    add-int/lit8 v4, p2, 0x40

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    move-object v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    move-object v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    move-object v5, v0

    const/4 v6, 0x2

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    move-object v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    const/16 v7, 0x10

    move v0, v7

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v7, 0x40

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkw;->_sdka([I[BI)V

    const/4 v7, 0x0

    aget v7, v27, v7

    const/4 v8, 0x3

    invoke-static/range {v3 .. v8}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v7

    const/4 v3, 0x1

    aget v10, v27, v3

    const/4 v11, 0x7

    move v8, v4

    move v9, v5

    invoke-static/range {v6 .. v11}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v6

    const/4 v3, 0x2

    aget v9, v27, v3

    const/16 v10, 0xb

    move v8, v4

    invoke-static/range {v5 .. v10}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v5

    const/4 v3, 0x3

    aget v8, v27, v3

    const/16 v9, 0x13

    invoke-static/range {v4 .. v9}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v8

    const/4 v3, 0x4

    aget v11, v27, v3

    const/4 v12, 0x3

    move v9, v5

    move v10, v6

    invoke-static/range {v7 .. v12}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v7

    const/4 v3, 0x5

    aget v10, v27, v3

    const/4 v11, 0x7

    move v9, v5

    invoke-static/range {v6 .. v11}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v6

    const/4 v3, 0x6

    aget v9, v27, v3

    const/16 v10, 0xb

    invoke-static/range {v5 .. v10}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v9

    const/4 v3, 0x7

    aget v12, v27, v3

    const/16 v13, 0x13

    move v10, v6

    move v11, v7

    invoke-static/range {v8 .. v13}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v8

    const/16 v3, 0x8

    aget v11, v27, v3

    const/4 v12, 0x3

    move v10, v6

    invoke-static/range {v7 .. v12}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v7

    const/16 v3, 0x9

    aget v10, v27, v3

    const/4 v11, 0x7

    invoke-static/range {v6 .. v11}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v10

    const/16 v3, 0xa

    aget v13, v27, v3

    const/16 v14, 0xb

    move v11, v7

    move v12, v8

    invoke-static/range {v9 .. v14}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v9

    const/16 v3, 0xb

    aget v12, v27, v3

    const/16 v13, 0x13

    move v11, v7

    invoke-static/range {v8 .. v13}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v8

    const/16 v3, 0xc

    aget v11, v27, v3

    const/4 v12, 0x3

    invoke-static/range {v7 .. v12}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v11

    const/16 v3, 0xd

    aget v14, v27, v3

    const/4 v15, 0x7

    move v12, v8

    move v13, v9

    invoke-static/range {v10 .. v15}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v10

    const/16 v3, 0xe

    aget v13, v27, v3

    const/16 v14, 0xb

    move v12, v8

    invoke-static/range {v9 .. v14}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v9

    const/16 v3, 0xf

    aget v12, v27, v3

    const/16 v13, 0x13

    invoke-static/range {v8 .. v13}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(IIIIII)I

    move-result v12

    const/4 v3, 0x0

    aget v15, v27, v3

    const/16 v16, 0x3

    move v13, v9

    move v14, v10

    invoke-static/range {v11 .. v16}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v11

    const/4 v3, 0x4

    aget v14, v27, v3

    const/4 v15, 0x5

    move v13, v9

    invoke-static/range {v10 .. v15}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v10

    const/16 v3, 0x8

    aget v13, v27, v3

    const/16 v14, 0x9

    invoke-static/range {v9 .. v14}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v13

    const/16 v3, 0xc

    aget v16, v27, v3

    const/16 v17, 0xd

    move v14, v10

    move v15, v11

    invoke-static/range {v12 .. v17}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v12

    const/4 v3, 0x1

    aget v15, v27, v3

    const/16 v16, 0x3

    move v14, v10

    invoke-static/range {v11 .. v16}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v11

    const/4 v3, 0x5

    aget v14, v27, v3

    const/4 v15, 0x5

    invoke-static/range {v10 .. v15}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v14

    const/16 v3, 0x9

    aget v17, v27, v3

    const/16 v18, 0x9

    move v15, v11

    move/from16 v16, v12

    invoke-static/range {v13 .. v18}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v13

    const/16 v3, 0xd

    aget v16, v27, v3

    const/16 v17, 0xd

    move v15, v11

    invoke-static/range {v12 .. v17}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v12

    const/4 v3, 0x2

    aget v15, v27, v3

    const/16 v16, 0x3

    invoke-static/range {v11 .. v16}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v15

    const/4 v3, 0x6

    aget v18, v27, v3

    const/16 v19, 0x5

    move/from16 v16, v12

    move/from16 v17, v13

    invoke-static/range {v14 .. v19}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v14

    const/16 v3, 0xa

    aget v17, v27, v3

    const/16 v18, 0x9

    move/from16 v16, v12

    invoke-static/range {v13 .. v18}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v13

    const/16 v3, 0xe

    aget v16, v27, v3

    const/16 v17, 0xd

    invoke-static/range {v12 .. v17}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v16

    const/4 v3, 0x3

    aget v19, v27, v3

    const/16 v20, 0x3

    move/from16 v17, v13

    move/from16 v18, v14

    invoke-static/range {v15 .. v20}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v15

    const/4 v3, 0x7

    aget v18, v27, v3

    const/16 v19, 0x5

    move/from16 v17, v13

    invoke-static/range {v14 .. v19}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v14

    const/16 v3, 0xb

    aget v17, v27, v3

    const/16 v18, 0x9

    invoke-static/range {v13 .. v18}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v17

    const/16 v3, 0xf

    aget v20, v27, v3

    const/16 v21, 0xd

    move/from16 v18, v14

    move/from16 v19, v15

    invoke-static/range {v16 .. v21}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb(IIIIII)I

    move-result v16

    const/4 v3, 0x0

    aget v19, v27, v3

    const/16 v20, 0x3

    move/from16 v18, v14

    invoke-static/range {v15 .. v20}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v15

    const/16 v3, 0x8

    aget v18, v27, v3

    const/16 v19, 0x9

    invoke-static/range {v14 .. v19}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v18

    const/4 v3, 0x4

    aget v21, v27, v3

    const/16 v22, 0xb

    move/from16 v19, v15

    move/from16 v20, v16

    invoke-static/range {v17 .. v22}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v17

    const/16 v3, 0xc

    aget v20, v27, v3

    const/16 v21, 0xf

    move/from16 v19, v15

    invoke-static/range {v16 .. v21}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v16

    const/4 v3, 0x2

    aget v19, v27, v3

    const/16 v20, 0x3

    invoke-static/range {v15 .. v20}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v19

    const/16 v3, 0xa

    aget v22, v27, v3

    const/16 v23, 0x9

    move/from16 v20, v16

    move/from16 v21, v17

    invoke-static/range {v18 .. v23}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v18

    const/4 v3, 0x6

    aget v21, v27, v3

    const/16 v22, 0xb

    move/from16 v20, v16

    invoke-static/range {v17 .. v22}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v17

    const/16 v3, 0xe

    aget v20, v27, v3

    const/16 v21, 0xf

    invoke-static/range {v16 .. v21}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v20

    const/4 v3, 0x1

    aget v23, v27, v3

    const/16 v24, 0x3

    move/from16 v21, v17

    move/from16 v22, v18

    invoke-static/range {v19 .. v24}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v19

    const/16 v3, 0x9

    aget v22, v27, v3

    const/16 v23, 0x9

    move/from16 v21, v17

    invoke-static/range {v18 .. v23}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v18

    const/4 v3, 0x5

    aget v21, v27, v3

    const/16 v22, 0xb

    invoke-static/range {v17 .. v22}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v21

    const/16 v3, 0xd

    aget v24, v27, v3

    const/16 v25, 0xf

    move/from16 v22, v18

    move/from16 v23, v19

    invoke-static/range {v20 .. v25}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v20

    const/4 v3, 0x3

    aget v23, v27, v3

    const/16 v24, 0x3

    move/from16 v22, v18

    invoke-static/range {v19 .. v24}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v19

    const/16 v3, 0xb

    aget v22, v27, v3

    const/16 v23, 0x9

    invoke-static/range {v18 .. v23}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v22

    const/4 v3, 0x7

    aget v25, v27, v3

    const/16 v26, 0xb

    move/from16 v23, v19

    move/from16 v24, v20

    invoke-static/range {v21 .. v26}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v21

    const/16 v3, 0xf

    aget v24, v27, v3

    const/16 v25, 0xf

    move/from16 v23, v19

    invoke-static/range {v20 .. v25}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    move-object v4, v0

    const/4 v5, 0x0

    aget v6, v4, v5

    add-int v6, v6, v19

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    move-object v4, v0

    const/4 v5, 0x1

    aget v6, v4, v5

    add-int/2addr v3, v6

    aput v3, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    move-object v3, v0

    const/4 v4, 0x2

    aget v5, v3, v4

    add-int v5, v5, v21

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    move-object v3, v0

    const/4 v4, 0x3

    aget v5, v3, v4

    add-int v5, v5, v22

    aput v5, v3, v4

    return-void
.end method

.method private static final _sdkc(III)I
    .locals 1

    xor-int v0, p0, p1

    xor-int/2addr v0, p2

    return v0
.end method

.method private static final _sdkc(IIIIII)I
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/skyhookwireless/wps/_sdkw;->_sdkc(III)I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    invoke-static {v0, p5}, Lcom/skyhookwireless/wps/_sdkw;->_sdka(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method _sdka([B)V
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/skyhookwireless/wps/_sdkw;->_sdka([BI)V

    return-void
.end method

.method _sdka([BI)V
    .locals 8

    const/4 v6, 0x0

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    iget-wide v1, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkc:J

    const/4 v3, 0x3

    shr-long/2addr v1, v3

    const-wide/16 v3, 0x3f

    and-long/2addr v1, v3

    long-to-int v1, v1

    iget-wide v2, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkc:J

    shl-int/lit8 v4, p2, 0x3

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkc:J

    const/16 v2, 0x40

    sub-int/2addr v2, v1

    if-lt p2, v2, :cond_4

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkd:[B

    invoke-static {p1, v6, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkd:[B

    invoke-direct {p0, v3, v6}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb([BI)V

    :cond_0
    add-int/lit8 v3, v2, 0x3f

    if-ge v3, p2, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/skyhookwireless/wps/_sdkw;->_sdkb([BI)V

    add-int/lit8 v2, v2, 0x40

    if-nez v0, :cond_3

    if-eqz v0, :cond_0

    :cond_1
    move v1, v2

    move v2, v6

    :goto_0
    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    move v1, v0

    move v0, v6

    :goto_2
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkd:[B

    sub-int v3, p2, v0

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_2

    :cond_3
    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method _sdka()[B
    .locals 8

    const/16 v7, 0x38

    const/16 v6, 0x10

    const/16 v5, 0x8

    new-array v0, v5, [B

    iget-wide v1, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkc:J

    invoke-static {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkw;->_sdka([BJ)V

    iget-wide v1, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkc:J

    const/4 v3, 0x3

    shr-long/2addr v1, v3

    const-wide/16 v3, 0x3f

    and-long/2addr v1, v3

    long-to-int v1, v1

    if-ge v1, v7, :cond_0

    sub-int v1, v7, v1

    :goto_0
    sget-object v2, Lcom/skyhookwireless/wps/_sdkw;->_sdka:[B

    invoke-virtual {p0, v2, v1}, Lcom/skyhookwireless/wps/_sdkw;->_sdka([BI)V

    invoke-virtual {p0, v0, v5}, Lcom/skyhookwireless/wps/_sdkw;->_sdka([BI)V

    new-array v0, v6, [B

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkw;->_sdkb:[I

    invoke-static {v0, v1, v6}, Lcom/skyhookwireless/wps/_sdkw;->_sdka([B[II)V

    return-object v0

    :cond_0
    const/16 v2, 0x78

    sub-int v1, v2, v1

    goto :goto_0
.end method
