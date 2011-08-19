.class Lcom/skyhookwireless/_sdkac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdkub;

.field final _sdkb:Lcom/skyhookwireless/_sdkrc;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "<X@&BxDJ @<BE-AxRG)G4R\u0001a\u00059Q]-Wx"

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

    const/16 v6, 0x25

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

    sput-object v0, Lcom/skyhookwireless/_sdkac;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v6, 0x58

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x37

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x29

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x48

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method constructor <init>(Lcom/skyhookwireless/_sdkrc;)V
    .locals 1

    iput-object p1, p0, Lcom/skyhookwireless/_sdkac;->_sdkb:Lcom/skyhookwireless/_sdkrc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkac;->_sdka:Lcom/skyhookwireless/_sdkub;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget v0, Lcom/skyhookwireless/_sdkyb;->_sdkc:I

    iget-object v1, p0, Lcom/skyhookwireless/_sdkac;->_sdkb:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdkac;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/skyhookwireless/_sdkac;->_sdka:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v3}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/skyhookwireless/_sdkac;->_sdkb:Lcom/skyhookwireless/_sdkrc;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/skyhookwireless/_sdkac;->_sdkb:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkrc;->_sdkb(Lcom/skyhookwireless/_sdkrc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/skyhookwireless/_sdkac;->_sdkb:Lcom/skyhookwireless/_sdkrc;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget v1, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/skyhookwireless/_sdkyb;->_sdkc:I

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/skyhookwireless/_sdkac;->_sdkb:Lcom/skyhookwireless/_sdkrc;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
