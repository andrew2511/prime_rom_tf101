.class final Lcom/skyhookwireless/wps/_sdkcc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/wps/_sdke;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/wps/_sdkxb;

.field private final _sdkb:Lcom/skyhookwireless/wps/_sdkec;

.field private final _sdkc:Lcom/skyhookwireless/_sdkmb;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x67

    const/16 v11, 0x61

    const/16 v10, 0x2e

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0017\u001f\u0002K\u000f\u0006\u000e\u000e@_\u001d\u0004\u0002[\r\u0000\u0002\u0005\u0014_"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_8

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

    const/16 v7, 0x7f

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

    const-string v1, "]\u0013\u0008B\u0016\u001c\u0000"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_7

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

    const/16 v7, 0x7f

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

    const/4 v1, 0x2

    const-string v2, "\u0013\u0005\u000e\\\u000b\u0017\u0003"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_6

    move v4, v8

    :cond_4
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v13, v4

    move-object v4, v2

    move v2, v13

    :goto_6
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2

    const/16 v8, 0x7f

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

    move-object v13, v4

    move v4, v2

    move-object v2, v13

    :goto_8
    if-gt v3, v4, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/wps/_sdkcc;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v7, 0x72

    goto/16 :goto_1

    :pswitch_1
    move v7, v12

    goto/16 :goto_1

    :pswitch_2
    move v7, v11

    goto/16 :goto_1

    :pswitch_3
    move v7, v10

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x72

    goto :goto_4

    :pswitch_5
    move v7, v12

    goto :goto_4

    :pswitch_6
    move v7, v11

    goto :goto_4

    :pswitch_7
    move v7, v10

    goto :goto_4

    :pswitch_8
    const/16 v8, 0x72

    goto :goto_7

    :pswitch_9
    move v8, v12

    goto :goto_7

    :pswitch_a
    move v8, v11

    goto :goto_7

    :pswitch_b
    move v8, v10

    goto :goto_7

    :cond_6
    move v4, v8

    goto :goto_8

    :cond_7
    move v3, v8

    goto :goto_5

    :cond_8
    move v3, v8

    goto/16 :goto_2

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method constructor <init>(Lcom/skyhookwireless/wps/_sdkxb;Lcom/skyhookwireless/wps/_sdkec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkcc;->_sdka:Lcom/skyhookwireless/wps/_sdkxb;

    iput-object p2, p0, Lcom/skyhookwireless/wps/_sdkcc;->_sdkb:Lcom/skyhookwireless/wps/_sdkec;

    invoke-static {}, Lcom/skyhookwireless/_sdkmb;->_sdkc()Lcom/skyhookwireless/_sdkmb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkcc;->_sdkc:Lcom/skyhookwireless/_sdkmb;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkcc;->_sdkc:Lcom/skyhookwireless/_sdkmb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkmb;->_sdka()V

    return-void
.end method

.method public run()V
    .locals 6

    const/4 v5, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkcc;->_sdkc:Lcom/skyhookwireless/_sdkmb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkcc;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkcc;->_sdka:Lcom/skyhookwireless/wps/_sdkxb;

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkmb;->_sdka(Ljava/lang/String;)Lcom/skyhookwireless/_sdkkb;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkcc;->_sdkb:Lcom/skyhookwireless/wps/_sdkec;

    const/4 v1, -0x1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkcc;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkec;->_sdkb(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdka()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkcc;->_sdkb:Lcom/skyhookwireless/wps/_sdkec;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdka()I

    move-result v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Lcom/skyhookwireless/wps/_sdkec;->_sdkb(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkcc;->_sdkb:Lcom/skyhookwireless/wps/_sdkec;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkcc;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lcom/skyhookwireless/wps/_sdkec;->_sdkb(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkcc;->_sdkb:Lcom/skyhookwireless/wps/_sdkec;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkcc;->_sdka:Lcom/skyhookwireless/wps/_sdkxb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdkc()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/skyhookwireless/wps/_sdkec;->_sdka(Lcom/skyhookwireless/wps/_sdkxb;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
