.class public Lcom/skyhookwireless/_sdkn;
.super Ljava/lang/Object;


# static fields
.field private static _sdka:Landroid/os/Handler;

.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\u0004\u000e0\u000e^\u0018\u000e\u0016\u000eP\u0019\u0001%\u0003C"

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

    const/16 v6, 0x31

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

    sput-object v0, Lcom/skyhookwireless/_sdkn;->z:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/skyhookwireless/_sdkn;->z:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/skyhookwireless/_sdkn;->_sdka:Landroid/os/Handler;

    :goto_2
    return-void

    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/skyhookwireless/_sdkn;->_sdka:Landroid/os/Handler;

    goto :goto_2

    :pswitch_0
    const/16 v6, 0x77

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x65

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x49

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x66

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _sdka(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/skyhookwireless/_sdkub;->_sdkb:Z

    new-instance v1, Lcom/skyhookwireless/_sdkkd;

    invoke-direct {v1, p0}, Lcom/skyhookwireless/_sdkkd;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v2, Lcom/skyhookwireless/_sdkn;->_sdka:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v2, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/skyhookwireless/_sdkub;->_sdkb:Z

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static _sdka()Z
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Lcom/skyhookwireless/_sdkn;->_sdkb()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static _sdka(Ljava/lang/Runnable;)Z
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkn;->_sdka:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public static _sdka(Ljava/lang/Runnable;J)Z
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkn;->_sdka:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public static _sdkb()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkn;->_sdka:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static _sdkc()Z
    .locals 1

    invoke-static {}, Lcom/skyhookwireless/_sdkn;->_sdka()Z

    move-result v0

    return v0
.end method
