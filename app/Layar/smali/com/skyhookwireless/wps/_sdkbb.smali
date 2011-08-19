.class Lcom/skyhookwireless/wps/_sdkbb;
.super Ljava/lang/Object;


# static fields
.field private static final _sdka:D

.field private static final z:Ljava/lang/String;


# instance fields
.field private final _sdkb:Lcom/skyhookwireless/wps/_sdka;

.field private final _sdkc:Ljava/lang/String;

.field private final _sdkd:[B

.field private final _sdke:I

.field private final _sdkf:I

.field private final _sdkg:I

.field private final _sdkh:I

.field private final _sdki:J

.field private final _sdkj:J

.field private final _sdkk:I

.field private final _sdkl:I

.field private final _sdkm:I

.field private final _sdkn:I

.field private final _sdko:I

.field private final _sdkp:D

.field private final _sdkq:D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\u001cX@;\u0019"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v7, v2

    move-object v2, v0

    move v0, v7

    :goto_0
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_0

    const/16 v6, 0x21

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    if-nez v3, :cond_1

    move-object v1, v2

    move v4, v0

    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/wps/_sdkbb;->z:Ljava/lang/String;

    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/skyhookwireless/wps/_sdkbb;->_sdka:D

    return-void

    :pswitch_0
    const/16 v6, 0x49

    goto :goto_1

    :pswitch_1
    const/16 v6, 0xc

    goto :goto_1

    :pswitch_2
    const/4 v6, 0x6

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x16

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method constructor <init>(Lcom/skyhookwireless/wps/_sdkb;Ljava/lang/String;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/skyhookwireless/wps/_sdkc;
        }
    .end annotation

    const-wide/16 v9, 0x0

    const/4 v8, 0x5

    const-wide/high16 v6, 0x4000

    const/4 v5, 0x3

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkc:Ljava/lang/String;

    iput p3, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdke:I

    new-instance v1, Lcom/skyhookwireless/wps/_sdka;

    invoke-direct {v1, p1}, Lcom/skyhookwireless/wps/_sdka;-><init>(Lcom/skyhookwireless/wps/_sdkb;)V

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v1, v5}, Lcom/skyhookwireless/wps/_sdka;->_sdkb(I)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/skyhookwireless/wps/_sdkc;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkc;-><init>()V

    throw v0

    :cond_0
    add-int/lit8 v1, v1, 0xb

    neg-int v2, v1

    int-to-double v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkp:D

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    const-wide v3, 0x4066800000000000L

    invoke-static {v3, v4, v1}, Lcom/skyhookwireless/wps/_sdkbb;->_sdka(DI)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/skyhookwireless/wps/_sdka;->_sdka(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdki:J

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    const-wide v3, 0x4076800000000000L

    invoke-static {v3, v4, v1}, Lcom/skyhookwireless/wps/_sdkbb;->_sdka(DI)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/skyhookwireless/wps/_sdka;->_sdka(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkj:J

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v1, v8}, Lcom/skyhookwireless/wps/_sdka;->_sdkb(I)I

    move-result v1

    iput v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkk:I

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v1, v8}, Lcom/skyhookwireless/wps/_sdka;->_sdkb(I)I

    move-result v1

    iput v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkl:I

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v1, v5}, Lcom/skyhookwireless/wps/_sdka;->_sdkb(I)I

    move-result v1

    iput v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkm:I

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v1, v5}, Lcom/skyhookwireless/wps/_sdka;->_sdkb(I)I

    move-result v1

    iput v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkn:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdki:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkbb;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkd:[B

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkk:I

    iget v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkl:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkm:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkn:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdko:I

    iget-wide v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkp:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdki:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkj:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkk:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkl:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkm:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkk:I

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Lcom/skyhookwireless/wps/_sdkc;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkc;-><init>()V

    throw v0

    :cond_2
    const-wide/high16 v1, 0x4008

    iget v3, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkn:I

    int-to-double v3, v3

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkq:D

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdka;->_sdkd()V

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdka;->_sdke()J

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdka;->_sdke()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkh:I

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkh:I

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkg:I

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkb;->_sdka()I

    move-result v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdka;->available()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkf:I

    sget v1, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static _sdka(DI)I
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    cmpl-double v0, p0, v4

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/skyhookwireless/wps/_sdkbb;->_sdka:D

    div-double/2addr v0, v2

    int-to-double v2, p2

    add-double/2addr v0, v2

    cmpl-double v2, v0, v4

    if-lez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private _sdkb(Lcom/skyhookwireless/_sdkyb;)J
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/skyhookwireless/_sdkyb;->_sdka()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/skyhookwireless/_sdkyb;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkbb;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Lcom/skyhookwireless/wps/_sdkw;

    invoke-direct {v1}, Lcom/skyhookwireless/wps/_sdkw;-><init>()V

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/wps/_sdkw;->_sdka([B)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkd:[B

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/wps/_sdkw;->_sdka([B)V

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkw;->_sdka()[B

    move-result-object v0

    aget-byte v1, v0, v3

    int-to-long v1, v1

    const/16 v3, 0x28

    shl-long/2addr v1, v3

    const-wide v3, 0xff0000000000L

    and-long/2addr v1, v3

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    const-wide v5, 0xff00000000L

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    const-wide v5, 0xff000000L

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    int-to-long v3, v0

    const/16 v0, 0x10

    shl-long/2addr v3, v0

    const-wide/32 v5, 0xff0000

    and-long/2addr v3, v5

    or-long v0, v1, v3

    invoke-virtual {p1}, Lcom/skyhookwireless/_sdkyb;->_sdka()J

    move-result-wide v2

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method _sdka()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdke:I

    return v0
.end method

.method _sdka(Lcom/skyhookwireless/_sdkyb;)Lcom/skyhookwireless/wps/_sdkcb;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb(Lcom/skyhookwireless/_sdkyb;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v3}, Lcom/skyhookwireless/wps/_sdka;->reset()V

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    iget v4, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkf:I

    mul-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/skyhookwireless/wps/_sdka;->skip(J)J

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v3}, Lcom/skyhookwireless/wps/_sdka;->_sdkc()J

    move-result-wide v3

    iget v5, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkf:I

    iget v6, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkg:I

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x8

    iget v6, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkh:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v6}, Lcom/skyhookwireless/wps/_sdka;->available()I

    move-result v6

    :goto_0
    cmp-long v7, v3, v1

    if-lez v7, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    move v11, v7

    move v12, v6

    move-wide v6, v3

    move v3, v11

    move v4, v12

    :goto_2
    iget v8, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkh:I

    if-ge v3, v8, :cond_2

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdka;->_sdkc()J

    move-result-wide v8

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdka;->_sdkb()I

    move-result v4

    cmp-long v10, v8, v1

    if-nez v0, :cond_d

    if-lez v10, :cond_3

    :cond_2
    :goto_3
    iget v8, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkh:I

    if-ne v3, v8, :cond_6

    cmp-long v3, v6, v1

    if-gez v3, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    add-int/2addr v5, v4

    cmp-long v6, v8, v1

    if-nez v6, :cond_4

    iget v4, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdko:I

    add-int/lit8 v4, v4, 0x8

    if-eqz v0, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    if-eqz v0, :cond_c

    :cond_5
    move-wide v6, v8

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v3}, Lcom/skyhookwireless/wps/_sdka;->reset()V

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    int-to-long v8, v5

    invoke-virtual {v3, v8, v9}, Lcom/skyhookwireless/wps/_sdka;->skip(J)J

    sub-long/2addr v1, v6

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v3}, Lcom/skyhookwireless/wps/_sdka;->available()I

    move-result v3

    sub-int/2addr v3, v4

    :cond_7
    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdka;->_sdke()J

    move-result-wide v4

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    iget v5, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdko:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/skyhookwireless/wps/_sdka;->skip(J)J

    if-eqz v0, :cond_a

    :cond_8
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    iget-wide v0, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdki:J

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    iget v3, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkk:I

    invoke-virtual {v2, v3}, Lcom/skyhookwireless/wps/_sdka;->_sdkb(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkp:D

    mul-double/2addr v2, v0

    iget-wide v0, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkj:J

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    iget v5, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkl:I

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/wps/_sdka;->_sdkb(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    long-to-double v0, v0

    iget-wide v4, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkp:D

    mul-double/2addr v4, v0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkm:I

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/wps/_sdka;->_sdkb(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x12

    const-wide v0, 0x3fc5555555555555L

    iget-object v7, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    iget v8, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkn:I

    invoke-virtual {v7, v8}, Lcom/skyhookwireless/wps/_sdka;->_sdkb(I)I

    move-result v7

    int-to-double v7, v7

    iget-wide v9, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkq:D

    div-double/2addr v7, v9

    add-double/2addr v7, v0

    new-instance v0, Lcom/skyhookwireless/wps/_sdkcb;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/skyhookwireless/wps/_sdkcb;-><init>(Lcom/skyhookwireless/_sdkyb;DDID)V

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkbb;->_sdkb:Lcom/skyhookwireless/wps/_sdka;

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdka;->available()I

    move-result v4

    if-gt v4, v3, :cond_7

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v0, v1

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    goto/16 :goto_1

    :cond_c
    move-wide v6, v8

    goto/16 :goto_2

    :cond_d
    move v3, v10

    goto/16 :goto_3
.end method
