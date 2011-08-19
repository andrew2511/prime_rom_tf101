.class public Lcom/skyhookwireless/_sdkjc;
.super Lcom/skyhookwireless/_sdkfc;


# static fields
.field private static final _sdkf:Lcom/skyhookwireless/_sdkcb;

.field private static final _sdkg:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/skyhookwireless/_sdkjc;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final _sdkh:Lcom/skyhookwireless/_sdked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static _sdki:Lcom/skyhookwireless/wps/_sdkdb;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdkc:Lcom/skyhookwireless/_sdko;

.field private _sdkd:Z

.field private _sdke:Lcom/skyhookwireless/wps/_sdkdb;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x2e

    const/16 v12, 0x16

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u000b]\u0003\u007fi\u000fZ\u0012r$\u000fI\u00126m\u001d\u000e\u0007dk\u000cO\u0015z}NZ\u0018y$\u0007@\u0016ug\u001b\\\u0016baB\u000e\u001eqj\u0001\\\u001excNB\u0018ue\u001aG\u0018x"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_14

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

    move v7, v11

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

    const-string v1, "\u0002A\u0014wp\u0007A\u00196l\u000f]WxkNO\u0010s(NG\u0010xk\u001cG\u0019q"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_13

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

    move v7, v11

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

    const-string v2, "\u0007I\u0019yv\u0007@\u00106k\u0002JWzk\rO\u0003\u007fk\u0000"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_12

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

    move v8, v11

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

    const-string v2, "\u0002A\u0014wp\u0007A\u00196m\u001d\u000e\u0019ypNOWpm\u0016"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_11

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

    move v8, v11

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

    const-string v1, "\u000fJ\u0013Zk\rO\u0003\u007fk\u0000\u0006"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_10

    move v3, v9

    :cond_8
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_c
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_4

    move v7, v11

    :goto_d
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_9

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_c

    :cond_9
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_e
    if-gt v2, v3, :cond_8

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const-string v2, "\u000b]\u0003\u007fi\u000fZ\u0012r$\u0002A\u0014wp\u0007A\u00196e\tKWte\u001dK\u00136k\u0000\u000e\u0007da\u0018G\u0018cwNB\u0018ue\u001aG\u0018x>N"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_f

    move v4, v9

    :cond_a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_f
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_5

    move v8, v11

    :goto_10
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_f

    :cond_b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_11
    if-gt v3, v4, :cond_a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u000bV\u0014st\u001aG\u0018x$\u0007@\u0001yo\u0007@\u00106t\u0001B\u001bsv"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e

    move v4, v9

    :cond_c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_12
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_6

    move v8, v11

    :goto_13
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_12

    :cond_d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_14
    if-gt v3, v4, :cond_c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/_sdkjc;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/_sdkjc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkg:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkh:Lcom/skyhookwireless/_sdked;

    return-void

    :pswitch_0
    const/16 v7, 0x6e

    goto/16 :goto_1

    :pswitch_1
    move v7, v13

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x77

    goto/16 :goto_1

    :pswitch_3
    move v7, v12

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x6e

    goto/16 :goto_4

    :pswitch_5
    move v7, v13

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x77

    goto/16 :goto_4

    :pswitch_7
    move v7, v12

    goto/16 :goto_4

    :pswitch_8
    const/16 v8, 0x6e

    goto/16 :goto_7

    :pswitch_9
    move v8, v13

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x77

    goto/16 :goto_7

    :pswitch_b
    move v8, v12

    goto/16 :goto_7

    :pswitch_c
    const/16 v8, 0x6e

    goto/16 :goto_a

    :pswitch_d
    move v8, v13

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x77

    goto/16 :goto_a

    :pswitch_f
    move v8, v12

    goto/16 :goto_a

    :pswitch_10
    const/16 v7, 0x6e

    goto/16 :goto_d

    :pswitch_11
    move v7, v13

    goto/16 :goto_d

    :pswitch_12
    const/16 v7, 0x77

    goto/16 :goto_d

    :pswitch_13
    move v7, v12

    goto/16 :goto_d

    :pswitch_14
    const/16 v8, 0x6e

    goto/16 :goto_10

    :pswitch_15
    move v8, v13

    goto/16 :goto_10

    :pswitch_16
    const/16 v8, 0x77

    goto/16 :goto_10

    :pswitch_17
    move v8, v12

    goto/16 :goto_10

    :pswitch_18
    const/16 v8, 0x6e

    goto/16 :goto_13

    :pswitch_19
    move v8, v13

    goto/16 :goto_13

    :pswitch_1a
    const/16 v8, 0x77

    goto/16 :goto_13

    :pswitch_1b
    move v8, v12

    goto/16 :goto_13

    :cond_e
    move v4, v9

    goto/16 :goto_14

    :cond_f
    move v4, v9

    goto/16 :goto_11

    :cond_10
    move v3, v9

    goto/16 :goto_e

    :cond_11
    move v4, v9

    goto/16 :goto_b

    :cond_12
    move v4, v9

    goto/16 :goto_8

    :cond_13
    move v3, v9

    goto/16 :goto_5

    :cond_14
    move v3, v9

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

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public constructor <init>(Lcom/skyhookwireless/_sdko;)V
    .locals 1

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkfc;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyhookwireless/_sdkjc;->_sdkd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkjc;->_sdke:Lcom/skyhookwireless/wps/_sdkdb;

    iput-object p1, p0, Lcom/skyhookwireless/_sdkjc;->_sdkc:Lcom/skyhookwireless/_sdko;

    return-void
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkjc;)V
    .locals 5

    const-class v0, Lcom/skyhookwireless/_sdkjc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/skyhookwireless/_sdkjc;->_sdkg:Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/skyhookwireless/_sdkjc;->_sdki:Lcom/skyhookwireless/wps/_sdkdb;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/skyhookwireless/_sdkjc;->_sdki:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-direct {p0, v1}, Lcom/skyhookwireless/_sdkjc;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkh:Lcom/skyhookwireless/_sdked;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkh:Lcom/skyhookwireless/_sdked;

    iget-object v0, v0, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    sget-object v1, Lcom/skyhookwireless/_sdkjc;->_sdkh:Lcom/skyhookwireless/_sdked;

    iget-object v1, v1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/skyhookwireless/_sdkjc;->_sdkc:Lcom/skyhookwireless/_sdko;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/skyhookwireless/_sdkjc;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/_sdkjc;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized _sdka(Lcom/skyhookwireless/wps/_sdkdb;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkjc;->_sdka()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/skyhookwireless/_sdkjc;->_sdke:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkjc;->_sdka()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static declared-synchronized _sdkb(Lcom/skyhookwireless/_sdkjc;)V
    .locals 2

    const-class v0, Lcom/skyhookwireless/_sdkjc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/skyhookwireless/_sdkjc;->_sdkg:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static _sdkb(Lcom/skyhookwireless/wps/_sdkdb;)V
    .locals 11

    const-wide/16 v9, 0x0

    sget v1, Lcom/skyhookwireless/_sdkkc;->_sdkd:I

    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdkjc;->z:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    const-class v2, Lcom/skyhookwireless/_sdkjc;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdki:Lcom/skyhookwireless/wps/_sdkdb;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdki:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getTime()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkjc;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    monitor-exit v2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdki:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getTime()J

    move-result-wide v5

    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdki:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/skyhookwireless/_sdkjc;->z:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_3
    const-wide/16 v5, -0x7d0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    const-wide/16 v5, 0x7d0

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    :cond_4
    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkjc;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    const-wide/16 v5, 0x0

    :try_start_1
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/skyhookwireless/_sdkub;->_sdka(J)Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/skyhookwireless/wps/_sdkdb;->setAge(Lcom/skyhookwireless/_sdkub;)V

    if-eqz v1, :cond_8

    :cond_6
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->hasHPE()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v3

    cmpl-double v0, v3, v9

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLongitude()D

    move-result-wide v3

    cmpl-double v0, v3, v9

    if-nez v0, :cond_8

    :cond_7
    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkjc;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    monitor-exit v2

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkjc;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    monitor-exit v2

    goto/16 :goto_0

    :cond_9
    sput-object p0, Lcom/skyhookwireless/_sdkjc;->_sdki:Lcom/skyhookwireless/wps/_sdkdb;

    sget-object v0, Lcom/skyhookwireless/_sdkjc;->_sdkg:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdkjc;

    invoke-direct {v0, p0}, Lcom/skyhookwireless/_sdkjc;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;)V

    if-nez v1, :cond_c

    if-eqz v1, :cond_a

    :cond_b
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    sget v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    sput v0, Lcom/skyhookwireless/_sdkkc;->_sdkd:I

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized _sdka(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkjc;->_sdke:Lcom/skyhookwireless/wps/_sdkdb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkjc;->_sdke:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkjc;->_sdke:Lcom/skyhookwireless/wps/_sdkdb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized _sdka()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/skyhookwireless/_sdkjc;->_sdkd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public _sdkb()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/skyhookwireless/_sdkjc;->_sdkd:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/skyhookwireless/_sdkjc;->_sdka(Lcom/skyhookwireless/_sdkjc;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public _sdkc()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/skyhookwireless/_sdkjc;->_sdkd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkjc;->_sdke:Lcom/skyhookwireless/wps/_sdkdb;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/skyhookwireless/_sdkjc;->_sdkb(Lcom/skyhookwireless/_sdkjc;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
