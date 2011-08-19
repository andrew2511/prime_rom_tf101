.class public final Lcom/skyhookwireless/_sdkyb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/skyhookwireless/_sdkyb;",
        ">;"
    }
.end annotation


# static fields
.field private static final _sdka:[C

.field public static _sdkc:I

.field private static final z:[Ljava/lang/String;


# instance fields
.field private _sdkb:J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x51

    const/16 v11, 0x24

    const/16 v10, 0x14

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u001ce\u0017gX2E:z\u0017%\u00046qX?A3u\u000c8R1"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_5

    move v3, v8

    :cond_0
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v13, v3

    move-object v3, v1

    move v1, v13

    :goto_0
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_0

    const/16 v7, 0x78

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

    move-object v13, v3

    move v3, v1

    move-object v1, v13

    :goto_2
    if-gt v2, v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "qM\'4\u0011?R5x\u00115\u00048q\u00166P<"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_4

    move v3, v8

    :cond_2
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v13, v3

    move-object v3, v1

    move v1, v13

    :goto_3
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_1

    const/16 v7, 0x78

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

    move-object v13, v3

    move v3, v1

    move-object v1, v13

    :goto_5
    if-gt v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    sput-object v0, Lcom/skyhookwireless/_sdkyb;->z:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/skyhookwireless/_sdkyb;->_sdka:[C

    return-void

    :pswitch_0
    move v7, v12

    goto :goto_1

    :pswitch_1
    move v7, v11

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x54

    goto :goto_1

    :pswitch_3
    move v7, v10

    goto :goto_1

    :pswitch_4
    move v7, v12

    goto :goto_4

    :pswitch_5
    move v7, v11

    goto :goto_4

    :pswitch_6
    const/16 v7, 0x54

    goto :goto_4

    :pswitch_7
    move v7, v10

    goto :goto_4

    :cond_4
    move v3, v8

    goto :goto_5

    :cond_5
    move v3, v8

    goto :goto_2

    nop

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

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0xc

    sget v0, Lcom/skyhookwireless/_sdkyb;->_sdkc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v6

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-nez v0, :cond_9

    if-lt v3, v4, :cond_1

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_1
    const/16 v4, 0x61

    if-lt v3, v4, :cond_2

    const/16 v4, 0x66

    if-le v3, v4, :cond_3

    :cond_2
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_4

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    move v2, v0

    move v0, v5

    :goto_0
    if-ne v2, v0, :cond_8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/skyhookwireless/_sdkyb;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/skyhookwireless/_sdkyb;->_sdkb:J

    iget-wide v0, p0, Lcom/skyhookwireless/_sdkyb;->_sdkb:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/skyhookwireless/_sdkyb;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void

    :cond_8
    move-object v0, p1

    goto :goto_1

    :cond_9
    move v0, v4

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public _sdka(Lcom/skyhookwireless/_sdkyb;)I
    .locals 4

    iget-wide v0, p0, Lcom/skyhookwireless/_sdkyb;->_sdkb:J

    iget-wide v2, p1, Lcom/skyhookwireless/_sdkyb;->_sdkb:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/skyhookwireless/_sdkyb;->_sdkb:J

    iget-wide v2, p0, Lcom/skyhookwireless/_sdkyb;->_sdkb:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public _sdka()J
    .locals 2

    iget-wide v0, p0, Lcom/skyhookwireless/_sdkyb;->_sdkb:J

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/skyhookwireless/_sdkyb;

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/_sdkyb;->_sdka(Lcom/skyhookwireless/_sdkyb;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/skyhookwireless/_sdkyb;->_sdkb:J

    check-cast p1, Lcom/skyhookwireless/_sdkyb;

    iget-wide v2, p1, Lcom/skyhookwireless/_sdkyb;->_sdkb:J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/skyhookwireless/_sdkyb;->_sdkb:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    sget v0, Lcom/skyhookwireless/_sdkyb;->_sdkc:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0xb

    :cond_0
    if-ltz v2, :cond_1

    sget-object v3, Lcom/skyhookwireless/_sdkyb;->_sdka:[C

    iget-wide v4, p0, Lcom/skyhookwireless/_sdkyb;->_sdkb:J

    mul-int/lit8 v6, v2, 0x4

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xf

    and-long/2addr v4, v6

    long-to-int v4, v4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    add-int/lit8 v2, v2, -0x1

    if-eqz v0, :cond_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method
