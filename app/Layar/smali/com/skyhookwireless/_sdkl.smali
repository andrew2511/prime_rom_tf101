.class public abstract Lcom/skyhookwireless/_sdkl;
.super Ljava/lang/Object;


# static fields
.field public static final allowSetPrototypes:Z = false

.field public static final configuration:Ljava/lang/String; = null

.field public static final disableWifiIfConnected:Z = true

.field public static final forceEnableWifi:Z = true

.field public static final logFilePath:Ljava/lang/String; = null

.field public static final loggerType:Lcom/skyhookwireless/_sdkf; = null

.field public static final minLogLevel:Ljava/lang/String; = null

.field public static final noSatIgnorePeriod:J = 0x7d0L

.field public static final useGpsPoller:Z

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x3e

    const/16 v12, 0x2b

    const/16 v11, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "w[\u0018-Yy]ZhLuP\u0013:Bst\u0017>J<\u001e\u0006:Bf_\u0002-\u00070_\u0018,Y\u007fW\u0012d\u000bqP\u0012:DyZ8)_yH\u0013d\u000bqP\u0012:DyZ%,@<\u001e\u0004-Gu_\u0005-"

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

    sput-object v1, Lcom/skyhookwireless/_sdkl;->configuration:Ljava/lang/String;

    const-string v1, "?M\u0012+JbZY?[cR\u0019/\u0005dF\u0002"

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

    sput-object v1, Lcom/skyhookwireless/_sdkl;->logFilePath:Ljava/lang/String;

    const-string v1, "T{4\u001dl"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_12

    move v3, v9

    :cond_4
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_6
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_2

    move v7, v12

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

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_8
    if-gt v2, v3, :cond_4

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/skyhookwireless/_sdkl;->minLogLevel:Ljava/lang/String;

    const-string v1, "K\\\u0003!Gt\u0010\u0015\'EvW\u0011=YqJ\u001f\'E-Y\u0013&NbW\u0015d\u000bw[\u0018-Yy]<)]q\u0012V8YyH\u0017<N<\u001e\u0017&ObQ\u001f,\u00070_\u0018,Y\u007fW\u0012\u0006JdW\u0000-\u00070_\u0018,Y\u007fW\u0012\u001bO{\u0012V:N|[\u0017;N<\u001e\u0017$G\u007fI%-_@L\u0019<DdG\u0006-X-X\u0017$Xu\u0012V$DwY\u0013:\u007fiN\u0013u"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_11

    move v3, v9

    :cond_6
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_9
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_3

    move v7, v12

    :goto_a
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_7

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_9

    :cond_7
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_b
    if-gt v2, v3, :cond_6

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "<\u001e\u0010\'Ys[3&JrR\u0013\u001fBvWK"

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

    move v7, v12

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

    aput-object v1, v0, v10

    const/4 v1, 0x2

    const-string v2, "<\u001e\u001a\'LVW\u001a-{qJ\u001eu"

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

    move v8, v12

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

    const/4 v1, 0x3

    const-string v2, "<\u001e\u001b!E\\Q\u0011\u0004Nf[\u001au"

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

    move v8, v12

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

    sput-object v0, Lcom/skyhookwireless/_sdkl;->z:[Ljava/lang/String;

    sget-object v0, Lcom/skyhookwireless/_sdkf;->BUILT_IN:Lcom/skyhookwireless/_sdkf;

    sput-object v0, Lcom/skyhookwireless/_sdkl;->loggerType:Lcom/skyhookwireless/_sdkf;

    return-void

    :pswitch_0
    move v7, v11

    goto/16 :goto_1

    :pswitch_1
    move v7, v13

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x76

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x48

    goto/16 :goto_1

    :pswitch_4
    move v7, v11

    goto/16 :goto_4

    :pswitch_5
    move v7, v13

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x76

    goto/16 :goto_4

    :pswitch_7
    const/16 v7, 0x48

    goto/16 :goto_4

    :pswitch_8
    move v7, v11

    goto/16 :goto_7

    :pswitch_9
    move v7, v13

    goto/16 :goto_7

    :pswitch_a
    const/16 v7, 0x76

    goto/16 :goto_7

    :pswitch_b
    const/16 v7, 0x48

    goto/16 :goto_7

    :pswitch_c
    move v7, v11

    goto/16 :goto_a

    :pswitch_d
    move v7, v13

    goto/16 :goto_a

    :pswitch_e
    const/16 v7, 0x76

    goto/16 :goto_a

    :pswitch_f
    const/16 v7, 0x48

    goto/16 :goto_a

    :pswitch_10
    move v7, v11

    goto/16 :goto_d

    :pswitch_11
    move v7, v13

    goto/16 :goto_d

    :pswitch_12
    const/16 v7, 0x76

    goto/16 :goto_d

    :pswitch_13
    const/16 v7, 0x48

    goto/16 :goto_d

    :pswitch_14
    move v8, v11

    goto/16 :goto_10

    :pswitch_15
    move v8, v13

    goto/16 :goto_10

    :pswitch_16
    const/16 v8, 0x76

    goto/16 :goto_10

    :pswitch_17
    const/16 v8, 0x48

    goto/16 :goto_10

    :pswitch_18
    move v8, v11

    goto :goto_13

    :pswitch_19
    move v8, v13

    goto :goto_13

    :pswitch_1a
    const/16 v8, 0x76

    goto :goto_13

    :pswitch_1b
    const/16 v8, 0x48

    goto/16 :goto_13

    :cond_e
    move v4, v9

    goto :goto_14

    :cond_f
    move v4, v9

    goto/16 :goto_11

    :cond_10
    move v3, v9

    goto/16 :goto_e

    :cond_11
    move v3, v9

    goto/16 :goto_b

    :cond_12
    move v3, v9

    goto/16 :goto_8

    :cond_13
    move v3, v9

    goto/16 :goto_5

    :cond_14
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

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _sdka()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    sget-boolean v0, Lcom/skyhookwireless/_sdkub;->_sdkb:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkl;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkl;->loggerType:Lcom/skyhookwireless/_sdkf;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkl;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkl;->minLogLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkl;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkl;->logFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkl;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    sget v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    :cond_0
    return-object v1
.end method
