.class final Lcom/skyhookwireless/_sdkbb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdkmc;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x17

    const/16 v12, 0x14

    const/16 v11, 0x12

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "}f|x*}ou71zws{1p!~x;uu{x6"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_14

    move v3, v10

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

    const/16 v7, 0x58

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

    aput-object v1, v0, v10

    const-string v1, "{o^x;uu{x6Wisy?qe:"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_13

    move v3, v10

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

    const/16 v7, 0x58

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

    aput-object v1, v0, v9

    const/4 v1, 0x2

    const-string v2, "}f|x*}ou7h9rscxrhj"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_12

    move v4, v10

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

    const/16 v8, 0x58

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

    const-string v2, "sqa"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_11

    move v4, v10

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

    const/16 v8, 0x58

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

    const-string v2, "{oAc9`taT0uour<<"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_10

    move v4, v10

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

    const/16 v8, 0x58

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

    const-string v2, "{oBe7bhvr*Phav:xdv?"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_f

    move v4, v10

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

    const/16 v8, 0x58

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

    const-string v2, "{oBe7bhvr*Qosu4qe:"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_e

    move v4, v10

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

    const/16 v8, 0x58

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

    sput-object v0, Lcom/skyhookwireless/_sdkbb;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v12

    goto/16 :goto_1

    :pswitch_1
    move v7, v9

    goto/16 :goto_1

    :pswitch_2
    move v7, v11

    goto/16 :goto_1

    :pswitch_3
    move v7, v13

    goto/16 :goto_1

    :pswitch_4
    move v7, v12

    goto/16 :goto_4

    :pswitch_5
    move v7, v9

    goto/16 :goto_4

    :pswitch_6
    move v7, v11

    goto/16 :goto_4

    :pswitch_7
    move v7, v13

    goto/16 :goto_4

    :pswitch_8
    move v8, v12

    goto/16 :goto_7

    :pswitch_9
    move v8, v9

    goto/16 :goto_7

    :pswitch_a
    move v8, v11

    goto/16 :goto_7

    :pswitch_b
    move v8, v13

    goto/16 :goto_7

    :pswitch_c
    move v8, v12

    goto/16 :goto_a

    :pswitch_d
    move v8, v9

    goto/16 :goto_a

    :pswitch_e
    move v8, v11

    goto/16 :goto_a

    :pswitch_f
    move v8, v13

    goto/16 :goto_a

    :pswitch_10
    move v8, v12

    goto/16 :goto_d

    :pswitch_11
    move v8, v9

    goto/16 :goto_d

    :pswitch_12
    move v8, v11

    goto/16 :goto_d

    :pswitch_13
    move v8, v13

    goto/16 :goto_d

    :pswitch_14
    move v8, v12

    goto/16 :goto_10

    :pswitch_15
    move v8, v9

    goto/16 :goto_10

    :pswitch_16
    move v8, v11

    goto/16 :goto_10

    :pswitch_17
    move v8, v13

    goto/16 :goto_10

    :pswitch_18
    move v8, v12

    goto :goto_13

    :pswitch_19
    move v8, v9

    goto :goto_13

    :pswitch_1a
    move v8, v11

    goto :goto_13

    :pswitch_1b
    move v8, v13

    goto :goto_13

    :cond_e
    move v4, v10

    goto :goto_14

    :cond_f
    move v4, v10

    goto/16 :goto_11

    :cond_10
    move v4, v10

    goto/16 :goto_e

    :cond_11
    move v4, v10

    goto/16 :goto_b

    :cond_12
    move v4, v10

    goto/16 :goto_8

    :cond_13
    move v3, v10

    goto/16 :goto_5

    :cond_14
    move v3, v10

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

.method private constructor <init>(Lcom/skyhookwireless/_sdkmc;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/skyhookwireless/_sdkmc;Lcom/skyhookwireless/_sdkab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/skyhookwireless/_sdkbb;-><init>(Lcom/skyhookwireless/_sdkmc;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkmc;->_sdkb(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkmc;->_sdkb(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkbb;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkmc;->_sdkc(Lcom/skyhookwireless/_sdkmc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkmc;->_sdkb(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkbb;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/skyhookwireless/_sdkmc;->_sdka(Landroid/location/Location;)Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/wps/_sdkdb;->setAge(Lcom/skyhookwireless/_sdkub;)V

    iget-object v2, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkmc;->_sdkc(Lcom/skyhookwireless/_sdkmc;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/_sdkbb;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkmc;->_sdkd(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/_sdky;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkmc;->_sdkd(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/_sdky;

    move-result-object v2

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdky;->_sdkd()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/wps/_sdkdb;->setSatellites(I)V

    :cond_3
    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkdb;->getSatellites()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkmc;->_sdke(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkmc;->_sdke(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->getSatellites()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkmc;->_sdke(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    iget-object v1, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkmc;->_sdkb(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkbb;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkjc;->_sdkb(Lcom/skyhookwireless/wps/_sdkdb;)V

    :cond_5
    iget-object v2, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v2, v1}, Lcom/skyhookwireless/_sdkmc;->_sdka(Lcom/skyhookwireless/_sdkmc;Lcom/skyhookwireless/wps/_sdkdb;)Lcom/skyhookwireless/wps/_sdkdb;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkmc;->_sdkf(Lcom/skyhookwireless/_sdkmc;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkmc;->_sdkb(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkmc;->_sdkb(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkbb;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkmc;->_sdkc(Lcom/skyhookwireless/_sdkmc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkmc;->_sdkb(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkmc;->_sdkb(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkbb;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkmc;->_sdkc(Lcom/skyhookwireless/_sdkmc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkmc;->_sdkb(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkmc;->_sdkb(Lcom/skyhookwireless/_sdkmc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkbb;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkbb;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkmc;->_sdkc(Lcom/skyhookwireless/_sdkmc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
