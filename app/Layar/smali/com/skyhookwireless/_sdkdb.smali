.class final Lcom/skyhookwireless/_sdkdb;
.super Lcom/skyhookwireless/_sdkcb;


# static fields
.field private static _sdke:Ljava/io/FileWriter;

.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v3, 0x1

    const-string v0, "Jb[\u001aR\u0017u\u0010\u000eC\u0016}P\u001e\u001d\u0011iK"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

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

    const/16 v6, 0x33

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

    sput-object v0, Lcom/skyhookwireless/_sdkdb;->z:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    sget-object v1, Lcom/skyhookwireless/_sdkdb;->z:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/skyhookwireless/_sdkdb;->_sdke:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/skyhookwireless/_sdkdb;->_sdke:Ljava/io/FileWriter;

    goto :goto_2

    :pswitch_0
    const/16 v6, 0x65

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x11

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x3f

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x79

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

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/skyhookwireless/_sdkcb;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected _sdka(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/skyhookwireless/_sdkcb;"
        }
    .end annotation

    new-instance v0, Lcom/skyhookwireless/_sdkdb;

    invoke-direct {v0, p1}, Lcom/skyhookwireless/_sdkdb;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected _sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-class v0, Lcom/skyhookwireless/_sdkdb;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/skyhookwireless/_sdkdb;->_sdke:Ljava/io/FileWriter;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/skyhookwireless/_sdkdb;->_sdke:Ljava/io/FileWriter;

    invoke-virtual {v1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    sget-object v1, Lcom/skyhookwireless/_sdkdb;->_sdke:Ljava/io/FileWriter;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    sget-object v1, Lcom/skyhookwireless/_sdkdb;->_sdke:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    :cond_0
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/skyhookwireless/_sdkdb;->_sdke:Ljava/io/FileWriter;

    goto :goto_0
.end method
