.class Lcom/skyhookwireless/_sdkqb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final _sdka:Ljava/lang/String;

.field final _sdkb:I

.field final _sdkc:Lcom/skyhookwireless/_sdkpb;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x36

    const/16 v12, 0x1f

    const/16 v11, 0x16

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "u\u0002XRzu\u0019SX?e\u0002UWzb"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_b

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

    const-string v1, "s\u001fDSm6\nSHk\u007f\u0003Q\u001cly\u000e]Yke"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_a

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

    const-string v2, "f\u001fS\u0011|y\u0003XY|b\u0004X[?e\u0002UWzbMBS?~\u0002EH?"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_9

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

    move v8, v12

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

    const-string v2, "6\u0002X\u001coy\u001fB\u001c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_8

    move v4, v9

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

    move v8, v12

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

    sput-object v0, Lcom/skyhookwireless/_sdkqb;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v11

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x6d

    goto/16 :goto_1

    :pswitch_2
    move v7, v13

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x3c

    goto/16 :goto_1

    :pswitch_4
    move v7, v11

    goto/16 :goto_4

    :pswitch_5
    const/16 v7, 0x6d

    goto/16 :goto_4

    :pswitch_6
    move v7, v13

    goto/16 :goto_4

    :pswitch_7
    const/16 v7, 0x3c

    goto/16 :goto_4

    :pswitch_8
    move v8, v11

    goto :goto_7

    :pswitch_9
    const/16 v8, 0x6d

    goto :goto_7

    :pswitch_a
    move v8, v13

    goto :goto_7

    :pswitch_b
    const/16 v8, 0x3c

    goto :goto_7

    :pswitch_c
    move v8, v11

    goto :goto_a

    :pswitch_d
    const/16 v8, 0x6d

    goto :goto_a

    :pswitch_e
    move v8, v13

    goto :goto_a

    :pswitch_f
    const/16 v8, 0x3c

    goto :goto_a

    :cond_8
    move v4, v9

    goto :goto_b

    :cond_9
    move v4, v9

    goto :goto_8

    :cond_a
    move v3, v9

    goto/16 :goto_5

    :cond_b
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

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method constructor <init>(Lcom/skyhookwireless/_sdkpb;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkqb;->_sdkc:Lcom/skyhookwireless/_sdkpb;

    iput-object p2, p0, Lcom/skyhookwireless/_sdkqb;->_sdka:Ljava/lang/String;

    iput p3, p0, Lcom/skyhookwireless/_sdkqb;->_sdkb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    new-instance v7, Lcom/skyhookwireless/_sdkrb;

    invoke-direct {v7, v0}, Lcom/skyhookwireless/_sdkrb;-><init>(Lcom/skyhookwireless/_sdkob;)V

    :try_start_0
    sget-object v0, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkqb;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkqb;->_sdka:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkqb;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/skyhookwireless/_sdkqb;->_sdkb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkqb;->_sdka:Ljava/lang/String;

    iput-object v0, v7, Lcom/skyhookwireless/_sdkrb;->_sdkc:Ljava/lang/String;

    iget v0, p0, Lcom/skyhookwireless/_sdkqb;->_sdkb:I

    iput v0, v7, Lcom/skyhookwireless/_sdkrb;->_sdkd:I

    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v0, 0x3a98

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkqb;->_sdkc:Lcom/skyhookwireless/_sdkpb;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkpb;->_sdka(Lcom/skyhookwireless/_sdkpb;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/skyhookwireless/_sdkqb;->_sdka:Ljava/lang/String;

    iget v3, p0, Lcom/skyhookwireless/_sdkqb;->_sdkb:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, v7, Lcom/skyhookwireless/_sdkrb;->_sdka:Ljava/net/Socket;

    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/skyhookwireless/_sdkrb;->_sdkb:Z

    sget-object v0, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkqb;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkqb;->_sdkc:Lcom/skyhookwireless/_sdkpb;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/skyhookwireless/_sdkqb;->_sdkc:Lcom/skyhookwireless/_sdkpb;

    invoke-static {v1, v7}, Lcom/skyhookwireless/_sdkpb;->_sdka(Lcom/skyhookwireless/_sdkpb;Lcom/skyhookwireless/_sdkrb;)Lcom/skyhookwireless/_sdkrb;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkqb;->_sdkc:Lcom/skyhookwireless/_sdkpb;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/skyhookwireless/_sdkpb;->_sdka(Lcom/skyhookwireless/_sdkpb;Ljava/lang/Thread;)Ljava/lang/Thread;

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/_sdkqb;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v7}, Lcom/skyhookwireless/_sdkpb;->_sdkb(Lcom/skyhookwireless/_sdkrb;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkqb;->_sdkc:Lcom/skyhookwireless/_sdkpb;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/skyhookwireless/_sdkqb;->_sdkc:Lcom/skyhookwireless/_sdkpb;

    invoke-static {v2, v0}, Lcom/skyhookwireless/_sdkpb;->_sdka(Lcom/skyhookwireless/_sdkpb;Lcom/skyhookwireless/_sdkrb;)Lcom/skyhookwireless/_sdkrb;

    iget-object v0, p0, Lcom/skyhookwireless/_sdkqb;->_sdkc:Lcom/skyhookwireless/_sdkpb;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/skyhookwireless/_sdkpb;->_sdka(Lcom/skyhookwireless/_sdkpb;Ljava/lang/Thread;)Ljava/lang/Thread;

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkqb;->_sdkc:Lcom/skyhookwireless/_sdkpb;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/skyhookwireless/_sdkqb;->_sdkc:Lcom/skyhookwireless/_sdkpb;

    invoke-static {v2, v7}, Lcom/skyhookwireless/_sdkpb;->_sdka(Lcom/skyhookwireless/_sdkpb;Lcom/skyhookwireless/_sdkrb;)Lcom/skyhookwireless/_sdkrb;

    iget-object v2, p0, Lcom/skyhookwireless/_sdkqb;->_sdkc:Lcom/skyhookwireless/_sdkpb;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/skyhookwireless/_sdkpb;->_sdka(Lcom/skyhookwireless/_sdkpb;Ljava/lang/Thread;)Ljava/lang/Thread;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
