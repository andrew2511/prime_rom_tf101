.class final Lcom/skyhookwireless/wps/_sdkxb;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Ljava/lang/String;

.field private final _sdkb:I

.field private final _sdkc:Ljava/lang/String;

.field private final _sdkd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x26

    const/16 v11, 0x1a

    const/16 v10, 0x17

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "t*taR7,\u007f2\u0006c#\u007ff@~\'\u007ffVv?rf@x9:\'\u0006B\u0019V"

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

    move v7, v12

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

    const-string v1, "t*taR7,\u007f2\u0006c#\u007ffsE\u0007: Iek{f@~\'\u007f"

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

    move v7, v12

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkxb;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v10

    goto :goto_1

    :pswitch_1
    const/16 v7, 0x4b

    goto :goto_1

    :pswitch_2
    move v7, v11

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x46

    goto :goto_1

    :pswitch_4
    move v7, v10

    goto :goto_4

    :pswitch_5
    const/16 v7, 0x4b

    goto :goto_4

    :pswitch_6
    move v7, v11

    goto :goto_4

    :pswitch_7
    const/16 v7, 0x46

    goto :goto_4

    :cond_4
    move v3, v8

    goto :goto_5

    :cond_5
    move v3, v8

    goto :goto_2

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
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    iput-object p3, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkc:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkd:Z

    iput p2, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb:I

    return-void
.end method

.method static _sdka(Ljava/lang/String;ILjava/lang/String;)Lcom/skyhookwireless/wps/_sdkxb;
    .locals 2

    new-instance v0, Lcom/skyhookwireless/wps/_sdkxb;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/skyhookwireless/wps/_sdkxb;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v0
.end method

.method static _sdkb(Ljava/lang/String;ILjava/lang/String;)Lcom/skyhookwireless/wps/_sdkxb;
    .locals 2

    new-instance v0, Lcom/skyhookwireless/wps/_sdkxb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/skyhookwireless/wps/_sdkxb;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method _sdka()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    return-object v0
.end method

.method _sdka(Lcom/skyhookwireless/wps/_sdkxb;)Z
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p1, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    iget-object v1, p1, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method _sdkb()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb:I

    return v0
.end method

.method _sdkb(Lcom/skyhookwireless/wps/_sdkxb;)Z
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method _sdkc()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkd:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkxb;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkc:Ljava/lang/String;

    return-object v0
.end method

.method _sdkd()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkd:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkxb;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkc:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    check-cast p1, Lcom/skyhookwireless/wps/_sdkxb;

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkd:Z

    iget-boolean v1, p1, Lcom/skyhookwireless/wps/_sdkxb;->_sdkd:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    iget-object v1, p1, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb:I

    iget v1, p1, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkc:Ljava/lang/String;

    iget-object v1, p1, Lcom/skyhookwireless/wps/_sdkxb;->_sdkc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x25

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdka:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
