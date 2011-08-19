.class final Lcom/skyhookwireless/_sdkib;
.super Ljava/lang/Object;


# static fields
.field private static final _sdka:[Ljava/lang/String;

.field private static final _sdkb:[C

.field private static _sdkc:I

.field private static _sdkd:Ljava/io/File;

.field private static _sdke:J

.field private static _sdkf:Lcom/skyhookwireless/_sdkg;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x2e

    const/16 v11, 0x9

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0012\u0004hZc\u0012\u0013p]vX\r&Bm^\u0001}GmSOq^q\u0012\u0013bWjR\u000fbbmZNjAl["

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

    const-string v1, "\u0013OzE{U\u000ffENR\u0007\'MmS\u0006"

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

    const-string v1, "\u0012\u0013mMcO\u0004&]iD\u0008fAiq\u000fn\u0000aR\u000eo"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_6

    move v3, v8

    :cond_4
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v13, v3

    move-object v3, v1

    move v1, v13

    :goto_6
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_2

    move v7, v10

    :goto_7
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_5

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_6

    :cond_5
    move v2, v4

    move-object v13, v3

    move v3, v1

    move-object v1, v13

    :goto_8
    if-gt v2, v3, :cond_4

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    sput-object v0, Lcom/skyhookwireless/_sdkib;->_sdka:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [C

    sput-object v0, Lcom/skyhookwireless/_sdkib;->_sdkb:[C

    sput v8, Lcom/skyhookwireless/_sdkib;->_sdkc:I

    const/4 v0, 0x0

    sput-object v0, Lcom/skyhookwireless/_sdkib;->_sdkd:Ljava/io/File;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/skyhookwireless/_sdkib;->_sdke:J

    const/4 v0, 0x0

    sput-object v0, Lcom/skyhookwireless/_sdkib;->_sdkf:Lcom/skyhookwireless/_sdkg;

    return-void

    :pswitch_0
    const/16 v7, 0x3d

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x60

    goto/16 :goto_1

    :pswitch_2
    move v7, v11

    goto/16 :goto_1

    :pswitch_3
    move v7, v12

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x3d

    goto :goto_4

    :pswitch_5
    const/16 v7, 0x60

    goto :goto_4

    :pswitch_6
    move v7, v11

    goto :goto_4

    :pswitch_7
    move v7, v12

    goto :goto_4

    :pswitch_8
    const/16 v7, 0x3d

    goto :goto_7

    :pswitch_9
    const/16 v7, 0x60

    goto :goto_7

    :pswitch_a
    move v7, v11

    goto :goto_7

    :pswitch_b
    move v7, v12

    goto :goto_7

    :cond_6
    move v3, v8

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

.method private static final declared-synchronized _sdka(Lcom/skyhookwireless/_sdkg;)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-class v0, Lcom/skyhookwireless/_sdkib;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/skyhookwireless/_sdkib;->_sdkc:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/skyhookwireless/_sdkib;->_sdkc:I

    and-int/lit16 v1, v1, 0x3ff

    if-nez v1, :cond_1

    sget-object v1, Lcom/skyhookwireless/_sdkib;->_sdkd:Ljava/io/File;

    if-nez v1, :cond_0

    sget-object v1, Lcom/skyhookwireless/_sdkib;->_sdka:[Ljava/lang/String;

    array-length v2, v1

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    sput-object v5, Lcom/skyhookwireless/_sdkib;->_sdkd:Ljava/io/File;

    :cond_0
    sget-object v1, Lcom/skyhookwireless/_sdkib;->_sdkd:Ljava/io/File;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/skyhookwireless/_sdkib;->_sdkd:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    sput-object v1, Lcom/skyhookwireless/_sdkib;->_sdkd:Ljava/io/File;

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/skyhookwireless/_sdkib;->_sdke:J

    const/4 v1, 0x0

    sput-object v1, Lcom/skyhookwireless/_sdkib;->_sdkf:Lcom/skyhookwireless/_sdkg;

    :cond_1
    :goto_1
    sget-object v1, Lcom/skyhookwireless/_sdkib;->_sdkf:Lcom/skyhookwireless/_sdkg;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/skyhookwireless/_sdkib;->_sdkf:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {v1, p0}, Lcom/skyhookwireless/_sdkg;->compareTo(Ljava/lang/Enum;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-gtz v1, :cond_6

    const/4 v1, 0x1

    :goto_2
    monitor-exit v0

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v1, Lcom/skyhookwireless/_sdkib;->_sdkd:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    sget-wide v3, Lcom/skyhookwireless/_sdkib;->_sdke:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    sget-object v1, Lcom/skyhookwireless/_sdkib;->_sdkd:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    sput-wide v1, Lcom/skyhookwireless/_sdkib;->_sdke:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    sget-object v2, Lcom/skyhookwireless/_sdkib;->_sdkd:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v2, Lcom/skyhookwireless/_sdkib;->_sdkb:[C

    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v2

    if-lez v2, :cond_4

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/skyhookwireless/_sdkib;->_sdkb:[C

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3}, Lcom/skyhookwireless/_sdkg;->valueOf(Ljava/lang/String;)Lcom/skyhookwireless/_sdkg;

    move-result-object v2

    sput-object v2, Lcom/skyhookwireless/_sdkib;->_sdkf:Lcom/skyhookwireless/_sdkg;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v7

    :goto_4
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_5
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_6
    move v1, v6

    goto :goto_2

    :cond_7
    move v1, v6

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_3
.end method

.method static _sdkb(Lcom/skyhookwireless/_sdkg;)Z
    .locals 1

    invoke-static {p0}, Lcom/skyhookwireless/_sdkib;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v0

    return v0
.end method
