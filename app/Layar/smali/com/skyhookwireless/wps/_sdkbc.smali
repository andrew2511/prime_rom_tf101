.class final Lcom/skyhookwireless/wps/_sdkbc;
.super Ljava/lang/Object;


# static fields
.field static final _sdkh:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

.field private final _sdkc:J

.field private final _sdkd:Lcom/skyhookwireless/wps/_sdkec;

.field private volatile _sdke:Z

.field private _sdkf:Lcom/skyhookwireless/wps/_sdklc;

.field private _sdkg:Lcom/skyhookwireless/wps/_sdklc;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x4f

    const/16 v12, 0x46

    const/16 v11, 0x26

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "+.^\u0012\u00062.u?\u001d#\u001fC$4#<U?\u0008(o\u001bv"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_9

    move v3, v9

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

    const/16 v7, 0x67

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

    aput-object v1, v0, v9

    const-string v1, "jor?\u000b/!A\u0015\u000b/*H\"G1&J:G( Rv\u00086*T7\u0013#a"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_8

    move v3, v9

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

    const/16 v7, 0x67

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

    aput-object v1, v0, v10

    const/4 v1, 0x2

    const-string v2, "\'-I$\u0013/!A"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7

    move v4, v9

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

    const/16 v8, 0x67

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkbc;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/_sdkbc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v10

    :goto_9
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkh:Z

    return-void

    :cond_6
    move v0, v9

    goto :goto_9

    :pswitch_0
    move v7, v12

    goto/16 :goto_1

    :pswitch_1
    move v7, v13

    goto/16 :goto_1

    :pswitch_2
    move v7, v11

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x56

    goto/16 :goto_1

    :pswitch_4
    move v7, v12

    goto :goto_4

    :pswitch_5
    move v7, v13

    goto :goto_4

    :pswitch_6
    move v7, v11

    goto :goto_4

    :pswitch_7
    const/16 v7, 0x56

    goto :goto_4

    :pswitch_8
    move v8, v12

    goto :goto_7

    :pswitch_9
    move v8, v13

    goto :goto_7

    :pswitch_a
    move v8, v11

    goto :goto_7

    :pswitch_b
    const/16 v8, 0x56

    goto :goto_7

    :cond_7
    move v4, v9

    goto :goto_8

    :cond_8
    move v3, v9

    goto :goto_5

    :cond_9
    move v3, v9

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
.end method

.method constructor <init>(Lcom/skyhookwireless/wps/WPSAuthentication;JLcom/skyhookwireless/wps/_sdkec;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdke:Z

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkf:Lcom/skyhookwireless/wps/_sdklc;

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkg:Lcom/skyhookwireless/wps/_sdklc;

    const-class v0, Lcom/skyhookwireless/wps/_sdkbc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    iput-wide p2, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkc:J

    iput-object p4, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkd:Lcom/skyhookwireless/wps/_sdkec;

    iget-wide v0, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkbc;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkbc;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method _sdka()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkbc;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdke:Z

    new-array v1, v4, [Lcom/skyhookwireless/wps/_sdklc;

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkf:Lcom/skyhookwireless/wps/_sdklc;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkg:Lcom/skyhookwireless/wps/_sdklc;

    aput-object v3, v1, v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v2, v1

    move v3, v6

    :cond_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-nez v0, :cond_7

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdklc;->abort()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-eqz v0, :cond_0

    :cond_2
    array-length v2, v1

    move-object v3, v1

    move v1, v6

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v4, v3, v1

    if-nez v0, :cond_5

    move-object v5, v3

    move v3, v1

    move-object v1, v4

    move v7, v2

    move-object v2, v4

    move v4, v7

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdklc;->join()V

    :cond_3
    add-int/lit8 v1, v3, 0x1

    if-eqz v0, :cond_6

    :cond_4
    iput-boolean v6, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdke:Z

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    move v2, v4

    move-object v3, v5

    goto :goto_0

    :cond_7
    move-object v5, v1

    move-object v1, v4

    move v7, v2

    move-object v2, v4

    move v4, v7

    goto :goto_1
.end method

.method _sdka(Lcom/skyhookwireless/wps/ScanHistory;)Z
    .locals 7

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdke:Z

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    new-instance v6, Lcom/skyhookwireless/wps/_sdklc;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkdc;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkd:Lcom/skyhookwireless/wps/_sdkec;

    iget-wide v4, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkc:J

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/skyhookwireless/wps/_sdkdc;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/ScanHistory;Lcom/skyhookwireless/wps/_sdkec;J)V

    invoke-direct {v6, v0}, Lcom/skyhookwireless/wps/_sdklc;-><init>(Lcom/skyhookwireless/wps/_sdke;)V

    iput-object v6, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkf:Lcom/skyhookwireless/wps/_sdklc;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkf:Lcom/skyhookwireless/wps/_sdklc;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdklc;->start()V

    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method _sdka(Lcom/skyhookwireless/wps/_sdkxb;)Z
    .locals 4

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkh:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdke:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/skyhookwireless/wps/_sdklc;

    new-instance v1, Lcom/skyhookwireless/wps/_sdkcc;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkd:Lcom/skyhookwireless/wps/_sdkec;

    invoke-direct {v1, p1, v2}, Lcom/skyhookwireless/wps/_sdkcc;-><init>(Lcom/skyhookwireless/wps/_sdkxb;Lcom/skyhookwireless/wps/_sdkec;)V

    invoke-direct {v0, v1}, Lcom/skyhookwireless/wps/_sdklc;-><init>(Lcom/skyhookwireless/wps/_sdke;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkg:Lcom/skyhookwireless/wps/_sdklc;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkbc;->_sdkg:Lcom/skyhookwireless/wps/_sdklc;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdklc;->start()V

    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
