.class Lcom/skyhookwireless/_sdka;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdkoc;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x20

    const/16 v11, 0x1c

    const/16 v10, 0x16

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "l\u0005WYd<\u0019OId\u007f\u000f\u0000Ue<\u0004OK6"

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

    move v7, v10

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

    const-string v1, "y\u0012CYfh\u0003OR6u\u0004\u0000SxN\u000fCY\u007fj\u000f\u0008\u0015"

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

    move v7, v10

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

    const-string v2, "l\u0006U[qy\u000e"

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

    move v8, v10

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

    sput-object v0, Lcom/skyhookwireless/_sdka;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v11

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x6a

    goto/16 :goto_1

    :pswitch_2
    move v7, v12

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x3c

    goto/16 :goto_1

    :pswitch_4
    move v7, v11

    goto :goto_4

    :pswitch_5
    const/16 v7, 0x6a

    goto :goto_4

    :pswitch_6
    move v7, v12

    goto :goto_4

    :pswitch_7
    const/16 v7, 0x3c

    goto :goto_4

    :pswitch_8
    move v8, v11

    goto :goto_7

    :pswitch_9
    const/16 v8, 0x6a

    goto :goto_7

    :pswitch_a
    move v8, v12

    goto :goto_7

    :pswitch_b
    const/16 v8, 0x3c

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

.method constructor <init>(Lcom/skyhookwireless/_sdkoc;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdka;->_sdka:Lcom/skyhookwireless/_sdkoc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    sget v0, Lcom/skyhookwireless/_sdknc;->_sdkd:I

    :try_start_0
    sget-object v1, Lcom/skyhookwireless/_sdka;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdka;->_sdka:Lcom/skyhookwireless/_sdkoc;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/skyhookwireless/_sdka;->_sdka:Lcom/skyhookwireless/_sdkoc;

    sget-object v3, Lcom/skyhookwireless/_sdkh;->UNKNOWN:Lcom/skyhookwireless/_sdkh;

    invoke-static {v1, v3}, Lcom/skyhookwireless/_sdkoc;->_sdka(Lcom/skyhookwireless/_sdkoc;Lcom/skyhookwireless/_sdkh;)Lcom/skyhookwireless/_sdkh;

    :cond_0
    iget-object v1, p0, Lcom/skyhookwireless/_sdka;->_sdka:Lcom/skyhookwireless/_sdkoc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkoc;->_sdka(Lcom/skyhookwireless/_sdkoc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/skyhookwireless/_sdka;->_sdka:Lcom/skyhookwireless/_sdkoc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkoc;->_sdka(Lcom/skyhookwireless/_sdkoc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/_sdka;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/skyhookwireless/_sdka;->_sdka:Lcom/skyhookwireless/_sdkoc;

    invoke-static {v4}, Lcom/skyhookwireless/_sdkoc;->_sdkb(Lcom/skyhookwireless/_sdkoc;)Lcom/skyhookwireless/_sdkh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkh;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/skyhookwireless/_sdka;->_sdka:Lcom/skyhookwireless/_sdkoc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkoc;->_sdkc(Lcom/skyhookwireless/_sdkoc;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    sget v1, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/skyhookwireless/_sdknc;->_sdkd:I

    :cond_2
    return-void

    :pswitch_0
    :try_start_2
    iget-object v1, p0, Lcom/skyhookwireless/_sdka;->_sdka:Lcom/skyhookwireless/_sdkoc;

    sget-object v3, Lcom/skyhookwireless/_sdkh;->EXTERNAL:Lcom/skyhookwireless/_sdkh;

    invoke-static {v1, v3}, Lcom/skyhookwireless/_sdkoc;->_sdka(Lcom/skyhookwireless/_sdkoc;Lcom/skyhookwireless/_sdkh;)Lcom/skyhookwireless/_sdkh;

    if-eqz v0, :cond_0

    :pswitch_1
    iget-object v1, p0, Lcom/skyhookwireless/_sdka;->_sdka:Lcom/skyhookwireless/_sdkoc;

    sget-object v3, Lcom/skyhookwireless/_sdkh;->BATTERY:Lcom/skyhookwireless/_sdkh;

    invoke-static {v1, v3}, Lcom/skyhookwireless/_sdkoc;->_sdka(Lcom/skyhookwireless/_sdkoc;Lcom/skyhookwireless/_sdkh;)Lcom/skyhookwireless/_sdkh;

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdka;->_sdka:Lcom/skyhookwireless/_sdkoc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkoc;->_sdka(Lcom/skyhookwireless/_sdkoc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/_sdka;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
