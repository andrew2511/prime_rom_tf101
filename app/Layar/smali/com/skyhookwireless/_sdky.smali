.class public Lcom/skyhookwireless/_sdky;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkb:Landroid/location/LocationManager;

.field private _sdkc:Z

.field private _sdkd:I

.field private _sdke:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x64

    const/16 v12, 0x3d

    const/16 v11, 0x2b

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0007\u0011H\u0003O\nYIOJ\u0000\u001a\u001d\u0008[\u0017^N\u001bJ\u0010\u000bNOG\r\rI\nE\u0001\u000c\u001dGY\u0001\nH\u001dE\u0001\u001a\u001d\tJ\u0008\rXF"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_1a

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

    const-string v1, "\u0007\u0011H\u0003O\nYIOJ\u0000\u001a\u001d\u0008[\u0017^N\u001bJ\u0010\u000bNOG\r\rI\nE\u0001\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_19

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

    const-string v2, "\u0005\u001aY\nOD\u0019M\u001c\u000b\u0017\n\\\u001b^\u0017^\u0015\u001cJ\u0010\u001bQ\u0003B\u0010\u001b\u0014OG\r\rI\nE\u0001\u000c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_18

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

    const-string v2, "\u0017\u001fI\nG\u0008\u0017I\n\u000b\u0007\u0011H\u0001_D\u0017NOE\u000b\t\u001d"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_17

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

    const/4 v1, 0x4

    const-string v2, "\n\u0011\u001d#D\u0007\u001fI\u0006D\n3\\\u0001J\u0003\u001bOOB\n\rI\u000eE\u0007\u001b\u001d\u000e]\u0005\u0017Q\u000eI\u0008\u001b"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_16

    move v4, v9

    :cond_8
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_c
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_4

    move v8, v11

    :goto_d
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_9

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_c

    :cond_9
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_e
    if-gt v3, v4, :cond_8

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\n\u0011IOG\r\rI\nE\r\u0010ZOM\u000b\u000c\u001d\u001a[\u0000\u001fI\nX"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_15

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

    const-string v2, "\u000b\u0010z\u001fX7\n\\\u001b^\u0017=U\u000eE\u0003\u001bYG"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_14

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

    const/4 v1, 0x7

    const-string v2, "\u0016\u001bP\u0000]\u0001\u001a\u001d\u0008[\u0017^N\u001bJ\u0010\u000bNO\u0003\u0017\u001fI\nG\u0008\u0017I\n\u0002D\u0012T\u001c_\u0001\u0010X\u001d"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_13

    move v4, v9

    :cond_e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_15
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_7

    move v8, v11

    :goto_16
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_15

    :cond_f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_17
    if-gt v3, v4, :cond_e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0007\u0011H\u0003O\nYIOY\u0001\u0013R\u0019ND\u0019M\u001c\u000b\u0017\n\\\u001b^\u0017^Q\u0006X\u0010\u001bS\nY"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_12

    move v4, v9

    :cond_10
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_18
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_8

    move v8, v11

    :goto_19
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_11

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_18

    :cond_11
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_1a
    if-gt v3, v4, :cond_10

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/_sdky;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v13

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x7e

    goto/16 :goto_1

    :pswitch_2
    move v7, v12

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x6f

    goto/16 :goto_1

    :pswitch_4
    move v7, v13

    goto/16 :goto_4

    :pswitch_5
    const/16 v7, 0x7e

    goto/16 :goto_4

    :pswitch_6
    move v7, v12

    goto/16 :goto_4

    :pswitch_7
    const/16 v7, 0x6f

    goto/16 :goto_4

    :pswitch_8
    move v8, v13

    goto/16 :goto_7

    :pswitch_9
    const/16 v8, 0x7e

    goto/16 :goto_7

    :pswitch_a
    move v8, v12

    goto/16 :goto_7

    :pswitch_b
    const/16 v8, 0x6f

    goto/16 :goto_7

    :pswitch_c
    move v8, v13

    goto/16 :goto_a

    :pswitch_d
    const/16 v8, 0x7e

    goto/16 :goto_a

    :pswitch_e
    move v8, v12

    goto/16 :goto_a

    :pswitch_f
    const/16 v8, 0x6f

    goto/16 :goto_a

    :pswitch_10
    move v8, v13

    goto/16 :goto_d

    :pswitch_11
    const/16 v8, 0x7e

    goto/16 :goto_d

    :pswitch_12
    move v8, v12

    goto/16 :goto_d

    :pswitch_13
    const/16 v8, 0x6f

    goto/16 :goto_d

    :pswitch_14
    move v8, v13

    goto/16 :goto_10

    :pswitch_15
    const/16 v8, 0x7e

    goto/16 :goto_10

    :pswitch_16
    move v8, v12

    goto/16 :goto_10

    :pswitch_17
    const/16 v8, 0x6f

    goto/16 :goto_10

    :pswitch_18
    move v8, v13

    goto/16 :goto_13

    :pswitch_19
    const/16 v8, 0x7e

    goto/16 :goto_13

    :pswitch_1a
    move v8, v12

    goto/16 :goto_13

    :pswitch_1b
    const/16 v8, 0x6f

    goto/16 :goto_13

    :pswitch_1c
    move v8, v13

    goto/16 :goto_16

    :pswitch_1d
    const/16 v8, 0x7e

    goto/16 :goto_16

    :pswitch_1e
    move v8, v12

    goto/16 :goto_16

    :pswitch_1f
    const/16 v8, 0x6f

    goto/16 :goto_16

    :pswitch_20
    move v8, v13

    goto/16 :goto_19

    :pswitch_21
    const/16 v8, 0x7e

    goto/16 :goto_19

    :pswitch_22
    move v8, v12

    goto/16 :goto_19

    :pswitch_23
    const/16 v8, 0x6f

    goto/16 :goto_19

    :cond_12
    move v4, v9

    goto/16 :goto_1a

    :cond_13
    move v4, v9

    goto/16 :goto_17

    :cond_14
    move v4, v9

    goto/16 :goto_14

    :cond_15
    move v4, v9

    goto/16 :goto_11

    :cond_16
    move v4, v9

    goto/16 :goto_e

    :cond_17
    move v4, v9

    goto/16 :goto_b

    :cond_18
    move v4, v9

    goto/16 :goto_8

    :cond_19
    move v3, v9

    goto/16 :goto_5

    :cond_1a
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

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/skyhookwireless/_sdky;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdka:Lcom/skyhookwireless/_sdkcb;

    iput-object p1, p0, Lcom/skyhookwireless/_sdky;->_sdkb:Landroid/location/LocationManager;

    return-void
.end method

.method static _sdka(Lcom/skyhookwireless/_sdky;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdkb:Landroid/location/LocationManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized _sdka()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/skyhookwireless/_sdky;->_sdkc:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/skyhookwireless/_sdky;->_sdkc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/skyhookwireless/_sdkz;

    invoke-direct {v0, p0}, Lcom/skyhookwireless/_sdkz;-><init>(Lcom/skyhookwireless/_sdky;)V

    invoke-static {v0}, Lcom/skyhookwireless/_sdkn;->_sdka(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/skyhookwireless/_sdky;->_sdkc:Z

    iget-boolean v0, p0, Lcom/skyhookwireless/_sdky;->_sdkc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdky;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget v0, Lcom/skyhookwireless/_sdkkc;->_sdkd:I

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdky;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    :try_start_2
    iget-boolean v0, p0, Lcom/skyhookwireless/_sdky;->_sdkc:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdky;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/_sdky;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized _sdkb()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/skyhookwireless/_sdky;->_sdkc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdkb:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdky;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/skyhookwireless/_sdky;->_sdkc:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/skyhookwireless/_sdky;->_sdke:I

    iput v0, p0, Lcom/skyhookwireless/_sdky;->_sdkd:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/skyhookwireless/_sdky;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/_sdky;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized _sdkc()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/skyhookwireless/_sdky;->_sdkd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized _sdkd()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/skyhookwireless/_sdky;->_sdke:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGpsStatusChanged(I)V
    .locals 6

    const/4 v5, 0x4

    sget v1, Lcom/skyhookwireless/_sdkkc;->_sdkd:I

    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdky;->z:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    if-ne p1, v5, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/skyhookwireless/_sdky;->_sdkc:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdky;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    monitor-exit p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdkb:Landroid/location/LocationManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdky;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/skyhookwireless/_sdky;->_sdke:I

    iput v0, p0, Lcom/skyhookwireless/_sdky;->_sdkd:I

    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdkb:Landroid/location/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    iget v3, p0, Lcom/skyhookwireless/_sdky;->_sdkd:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/skyhookwireless/_sdky;->_sdkd:I

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-nez v1, :cond_7

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/skyhookwireless/_sdky;->_sdke:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/skyhookwireless/_sdky;->_sdke:I

    :cond_5
    if-eqz v1, :cond_4

    :cond_6
    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    :cond_7
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/skyhookwireless/_sdky;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdky;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/skyhookwireless/_sdky;->_sdke:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/skyhookwireless/_sdky;->_sdkd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
