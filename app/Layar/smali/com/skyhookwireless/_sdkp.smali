.class Lcom/skyhookwireless/_sdkp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdkic;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x49

    const/16 v11, 0x20

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "9kO\u0002\u001ciwY\u001c\u001ci>\u0000"

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

    const/16 v7, 0x79

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

    const-string v1, "\u0007l\u0000+*\u0004#a\u0008\u00189wE\u001eY/lU\u0002\u001d"

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

    const/16 v7, 0x79

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

    const-string v2, "9kO\u0002\u001c"

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

    const/16 v8, 0x79

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

    sput-object v0, Lcom/skyhookwireless/_sdkp;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v12

    goto/16 :goto_1

    :pswitch_1
    move v7, v10

    goto/16 :goto_1

    :pswitch_2
    move v7, v11

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x6c

    goto/16 :goto_1

    :pswitch_4
    move v7, v12

    goto :goto_4

    :pswitch_5
    move v7, v10

    goto :goto_4

    :pswitch_6
    move v7, v11

    goto :goto_4

    :pswitch_7
    const/16 v7, 0x6c

    goto :goto_4

    :pswitch_8
    move v8, v12

    goto :goto_7

    :pswitch_9
    move v8, v10

    goto :goto_7

    :pswitch_a
    move v8, v11

    goto :goto_7

    :pswitch_b
    const/16 v8, 0x6c

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

.method constructor <init>(Lcom/skyhookwireless/_sdkic;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _sdka()Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x1

    sget v1, Lcom/skyhookwireless/_sdkv;->_sdkf:I

    new-instance v2, Lcom/skyhookwireless/_sdkc;

    invoke-direct {v2, p0}, Lcom/skyhookwireless/_sdkc;-><init>(Lcom/skyhookwireless/_sdkp;)V

    iget-object v3, p0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    iget-object v0, p0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdki(Lcom/skyhookwireless/_sdkic;)Landroid/content/Context;

    move-result-object v0

    sget-object v5, Lcom/skyhookwireless/_sdkp;->z:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v4, v0}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdkb(Lcom/skyhookwireless/_sdkic;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eq v0, v7, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/_sdkp;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/skyhookwireless/_sdkid;

    sget-object v1, Lcom/skyhookwireless/_sdkp;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/skyhookwireless/_sdkid;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0, v2}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_1

    sget v1, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    :cond_1
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkp;->_sdka()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
