.class public final Lcom/skyhookwireless/_sdkoc;
.super Lcom/skyhookwireless/_sdknc;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdke:Lcom/skyhookwireless/_sdkcb;

.field private _sdkf:Landroid/content/Context;

.field private _sdkg:Landroid/content/BroadcastReceiver;

.field private _sdkh:Lcom/skyhookwireless/_sdkh;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x5c

    const/16 v12, 0x5b

    const/16 v11, 0x51

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":\u0004e#32\u000e/82/\u000fo%r:\tu835DC\u0010\u0008\u000f/S\u0008\u0003\u0018\"@\u001f\u001b\u001e."

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_b

    move v3, v10

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

    move v7, v13

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

    aput-object v1, v0, v10

    const-string v1, ":\u0006s4=?\u0013!>,>\u0004"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_a

    move v3, v10

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

    move v7, v13

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

    aput-object v1, v0, v9

    const/4 v1, 0x2

    const-string v2, ":\u0006s4=?\u0013!204\u0019d5"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_9

    move v4, v10

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

    move v8, v13

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

    const-string v2, ">\u0018s>.{\u001fo#9<\u0003r%9)\u0003o6|)\u000fb45-\u000fs"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_8

    move v4, v10

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

    move v8, v13

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

    sput-object v0, Lcom/skyhookwireless/_sdkoc;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v12

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x6a

    goto/16 :goto_1

    :pswitch_2
    move v7, v9

    goto/16 :goto_1

    :pswitch_3
    move v7, v11

    goto/16 :goto_1

    :pswitch_4
    move v7, v12

    goto/16 :goto_4

    :pswitch_5
    const/16 v7, 0x6a

    goto/16 :goto_4

    :pswitch_6
    move v7, v9

    goto/16 :goto_4

    :pswitch_7
    move v7, v11

    goto/16 :goto_4

    :pswitch_8
    move v8, v12

    goto :goto_7

    :pswitch_9
    const/16 v8, 0x6a

    goto :goto_7

    :pswitch_a
    move v8, v9

    goto :goto_7

    :pswitch_b
    move v8, v11

    goto :goto_7

    :pswitch_c
    move v8, v12

    goto :goto_a

    :pswitch_d
    const/16 v8, 0x6a

    goto :goto_a

    :pswitch_e
    move v8, v9

    goto :goto_a

    :pswitch_f
    move v8, v11

    goto :goto_a

    :cond_8
    move v4, v10

    goto :goto_b

    :cond_9
    move v4, v10

    goto :goto_8

    :cond_a
    move v3, v10

    goto/16 :goto_5

    :cond_b
    move v3, v10

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
.end method

.method public constructor <init>(Lcom/skyhookwireless/_sdko;)V
    .locals 2

    sget v0, Lcom/skyhookwireless/_sdknc;->_sdkd:I

    invoke-direct {p0}, Lcom/skyhookwireless/_sdknc;-><init>()V

    const-class v1, Lcom/skyhookwireless/_sdkoc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    iput-object v1, p0, Lcom/skyhookwireless/_sdkoc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    check-cast p1, Lcom/skyhookwireless/_sdkm;

    invoke-virtual {p1}, Lcom/skyhookwireless/_sdkm;->_sdka()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/skyhookwireless/_sdkoc;->_sdkf:Landroid/content/Context;

    sget-object v1, Lcom/skyhookwireless/_sdkh;->UNKNOWN:Lcom/skyhookwireless/_sdkh;

    iput-object v1, p0, Lcom/skyhookwireless/_sdkoc;->_sdkh:Lcom/skyhookwireless/_sdkh;

    if-eqz v0, :cond_0

    sget v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    :cond_0
    return-void
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkoc;)Lcom/skyhookwireless/_sdkcb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkoc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    return-object v0
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkoc;Lcom/skyhookwireless/_sdkh;)Lcom/skyhookwireless/_sdkh;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkoc;->_sdkh:Lcom/skyhookwireless/_sdkh;

    return-object p1
.end method

.method static _sdkb(Lcom/skyhookwireless/_sdkoc;)Lcom/skyhookwireless/_sdkh;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkoc;->_sdkh:Lcom/skyhookwireless/_sdkh;

    return-object v0
.end method

.method static _sdkc(Lcom/skyhookwireless/_sdkoc;)V
    .locals 0

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkoc;->_sdka()V

    return-void
.end method


# virtual methods
.method public _sdka(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdknc;
    .locals 1

    new-instance v0, Lcom/skyhookwireless/_sdkoc;

    invoke-direct {v0, p1}, Lcom/skyhookwireless/_sdkoc;-><init>(Lcom/skyhookwireless/_sdko;)V

    return-object v0
.end method

.method public _sdkb()V
    .locals 3

    iget-object v0, p0, Lcom/skyhookwireless/_sdkoc;->_sdkg:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkoc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkoc;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/skyhookwireless/_sdka;

    invoke-direct {v0, p0}, Lcom/skyhookwireless/_sdka;-><init>(Lcom/skyhookwireless/_sdkoc;)V

    iput-object v0, p0, Lcom/skyhookwireless/_sdkoc;->_sdkg:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/skyhookwireless/_sdkh;->UNKNOWN:Lcom/skyhookwireless/_sdkh;

    iput-object v0, p0, Lcom/skyhookwireless/_sdkoc;->_sdkh:Lcom/skyhookwireless/_sdkh;

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/skyhookwireless/_sdkoc;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/skyhookwireless/_sdkoc;->_sdkf:Landroid/content/Context;

    iget-object v2, p0, Lcom/skyhookwireless/_sdkoc;->_sdkg:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public _sdkc()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkoc;->_sdkg:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkoc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkoc;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkoc;->_sdkf:Landroid/content/Context;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkoc;->_sdkg:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v4, p0, Lcom/skyhookwireless/_sdkoc;->_sdkg:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/skyhookwireless/_sdkh;->UNKNOWN:Lcom/skyhookwireless/_sdkh;

    iput-object v0, p0, Lcom/skyhookwireless/_sdkoc;->_sdkh:Lcom/skyhookwireless/_sdkh;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/skyhookwireless/_sdkoc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/_sdkoc;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v4, p0, Lcom/skyhookwireless/_sdkoc;->_sdkg:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/skyhookwireless/_sdkh;->UNKNOWN:Lcom/skyhookwireless/_sdkh;

    iput-object v0, p0, Lcom/skyhookwireless/_sdkoc;->_sdkh:Lcom/skyhookwireless/_sdkh;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/skyhookwireless/_sdkoc;->_sdkg:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/skyhookwireless/_sdkh;->UNKNOWN:Lcom/skyhookwireless/_sdkh;

    iput-object v1, p0, Lcom/skyhookwireless/_sdkoc;->_sdkh:Lcom/skyhookwireless/_sdkh;

    throw v0
.end method

.method public declared-synchronized _sdkd()Lcom/skyhookwireless/_sdkh;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkoc;->_sdkh:Lcom/skyhookwireless/_sdkh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
