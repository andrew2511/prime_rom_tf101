.class Lcom/skyhookwireless/wps/_sdkhc;
.super Ljava/lang/Object;


# static fields
.field static final _sdkc:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkb:Lcom/skyhookwireless/wps/_sdkrb;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x3b

    const/16 v12, 0x1f

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "!v2q^5z:%T+{~Dkg"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_15

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

    move v7, v13

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

    const-string v1, "g\\\u0018k\u001b(j*%T!?,dU z"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_14

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

    move v7, v13

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

    const-string v2, "g\\\u0018f\u001b(j*%T!?,dU z"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_13

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

    move v8, v13

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

    const-string v2, "oo1v\u0012gH\u000eV\u001b+p=dO.p0+\u001b"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_12

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

    move v8, v13

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

    const-string v2, "gM\rV\u001b0~-%W.r7q^#?*j\u001bj&nay*"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_11

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

    move v8, v13

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

    const-string v1, "\tp~Dk4?*j\u001b$s+vO\"mp"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_10

    move v3, v9

    :cond_a
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_f
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_5

    move v7, v13

    :goto_10
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_b

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_f

    :cond_b
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_11
    if-gt v2, v3, :cond_a

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x6

    const-string v2, "\tp~fW2l*`Igy1pU#1"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_f

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

    move v8, v13

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkhc;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/_sdkhc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v10

    :goto_15
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdkc:Z

    return-void

    :cond_e
    move v0, v9

    goto :goto_15

    :pswitch_0
    const/16 v7, 0x47

    goto/16 :goto_1

    :pswitch_1
    move v7, v12

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x5e

    goto/16 :goto_1

    :pswitch_3
    move v7, v11

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x47

    goto/16 :goto_4

    :pswitch_5
    move v7, v12

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x5e

    goto/16 :goto_4

    :pswitch_7
    move v7, v11

    goto/16 :goto_4

    :pswitch_8
    const/16 v8, 0x47

    goto/16 :goto_7

    :pswitch_9
    move v8, v12

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x5e

    goto/16 :goto_7

    :pswitch_b
    move v8, v11

    goto/16 :goto_7

    :pswitch_c
    const/16 v8, 0x47

    goto/16 :goto_a

    :pswitch_d
    move v8, v12

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x5e

    goto/16 :goto_a

    :pswitch_f
    move v8, v11

    goto/16 :goto_a

    :pswitch_10
    const/16 v8, 0x47

    goto/16 :goto_d

    :pswitch_11
    move v8, v12

    goto/16 :goto_d

    :pswitch_12
    const/16 v8, 0x5e

    goto/16 :goto_d

    :pswitch_13
    move v8, v11

    goto/16 :goto_d

    :pswitch_14
    const/16 v7, 0x47

    goto/16 :goto_10

    :pswitch_15
    move v7, v12

    goto/16 :goto_10

    :pswitch_16
    const/16 v7, 0x5e

    goto/16 :goto_10

    :pswitch_17
    move v7, v11

    goto/16 :goto_10

    :pswitch_18
    const/16 v8, 0x47

    goto/16 :goto_13

    :pswitch_19
    move v8, v12

    goto/16 :goto_13

    :pswitch_1a
    const/16 v8, 0x5e

    goto/16 :goto_13

    :pswitch_1b
    move v8, v11

    goto/16 :goto_13

    :cond_f
    move v4, v9

    goto :goto_14

    :cond_10
    move v3, v9

    goto/16 :goto_11

    :cond_11
    move v4, v9

    goto/16 :goto_e

    :cond_12
    move v4, v9

    goto/16 :goto_b

    :cond_13
    move v4, v9

    goto/16 :goto_8

    :cond_14
    move v3, v9

    goto/16 :goto_5

    :cond_15
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

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/_sdkhc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkrb;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lcom/skyhookwireless/wps/_sdkrb;-><init>(I)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkhc;->_sdkb:Lcom/skyhookwireless/wps/_sdkrb;

    return-void
.end method

.method private static _sdka(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/Location;)D
    .locals 6

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/Location;->getLatitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/Location;->getLongitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private _sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkkb;)D
    .locals 27

    sget v2, Lcom/skyhookwireless/wps/Location;->_sdki:I

    const/4 v3, 0x3

    const/4 v4, 0x5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/wps/_sdkkb;->_sdkd()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v2, :cond_1d

    if-lt v7, v4, :cond_4

    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_1
    if-lt v6, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v6

    const/16 v3, 0x4e20

    mul-int/lit16 v4, v4, 0x3e8

    add-int/lit16 v3, v3, 0x1388

    int-to-long v3, v3

    cmp-long v3, v6, v3

    if-lez v3, :cond_5

    :cond_2
    const-wide/16 v2, 0x0

    :cond_3
    :goto_2
    return-wide v2

    :cond_4
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_7

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/skyhookwireless/_sdkub;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v2, :cond_1c

    if-eqz v6, :cond_8

    :goto_3
    add-int/lit8 v4, v4, 0x1

    if-eqz v2, :cond_6

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    :goto_4
    if-eqz v4, :cond_a

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/wps/Location;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/wps/Location;

    invoke-static/range {p1 .. p2}, Lcom/skyhookwireless/_sdkdd;->_sdka(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/Location;)D

    move-result-wide v6

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L

    div-double/2addr v8, v10

    div-double/2addr v6, v8

    const-wide v8, 0x4044d55555555556L

    cmpl-double v8, v6, v8

    if-lez v8, :cond_9

    const-wide v6, 0x4044d55555555556L

    :cond_9
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/wps/Location;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/wps/Location;

    invoke-static/range {p1 .. p2}, Lcom/skyhookwireless/_sdkdd;->_sdka(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/Location;)D

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L

    div-double/2addr v8, v10

    div-double/2addr v6, v8

    add-double/2addr v3, v6

    const-wide/high16 v6, 0x4000

    div-double/2addr v3, v6

    const-wide v6, 0x3ffccccccccccccdL

    div-double/2addr v3, v6

    const-wide v6, 0x3fec28f5c28f5c29L

    mul-double/2addr v3, v6

    const-wide/high16 v8, 0x3ff0

    sub-double v6, v8, v6

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getSpeed()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdkb:Lcom/skyhookwireless/wps/_sdkrb;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/skyhookwireless/wps/_sdkrb;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide/from16 v22, v9

    move v10, v6

    move-wide/from16 v24, v7

    move-wide/from16 v8, v24

    move-wide/from16 v6, v22

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    move/from16 v22, v12

    move v12, v10

    move-wide/from16 v23, v6

    move/from16 v6, v22

    move-wide/from16 v25, v8

    move-wide/from16 v9, v25

    move-wide/from16 v7, v23

    :goto_6
    if-eqz v6, :cond_1b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/skyhookwireless/_sdkjd;

    const/4 v6, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    if-nez v2, :cond_1a

    const/16 v17, 0x0

    move/from16 v22, v17

    move/from16 v17, v6

    move/from16 v6, v22

    move-wide/from16 v23, v13

    move-wide v13, v15

    move-wide/from16 v15, v23

    :cond_b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v18

    if-nez v2, :cond_19

    if-eqz v18, :cond_e

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v18

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/_sdkzb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v18

    const-wide/16 v20, 0x2af8

    cmp-long v18, v18, v20

    if-lez v18, :cond_d

    move/from16 v6, v17

    :goto_7
    move/from16 v17, v6

    :goto_8
    if-eqz v6, :cond_18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v15, v15, v18

    mul-double/2addr v13, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v13, v13, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v13, v13, v18

    sub-double v13, v15, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide v15, v0

    mul-double/2addr v13, v15

    add-double v6, v7, v13

    :goto_9
    add-int v8, v12, v17

    const/4 v12, 0x0

    move/from16 v22, v12

    move-wide v12, v9

    move/from16 v9, v22

    :cond_c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_10

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v10

    if-nez v2, :cond_17

    if-eqz v10, :cond_10

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v10

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/_sdkzb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v14

    const-wide/16 v16, 0x5208

    cmp-long v10, v14, v16

    if-lez v10, :cond_f

    move-wide v9, v12

    :goto_a
    if-eqz v2, :cond_16

    move-wide/from16 v22, v6

    move-wide/from16 v5, v22

    move-wide/from16 v24, v9

    move v9, v8

    move-wide/from16 v7, v24

    :goto_b
    const-wide v10, 0x4044d55555555556L

    move-wide/from16 v22, v10

    move v11, v9

    move-wide v9, v7

    move-wide v7, v5

    move-wide/from16 v5, v22

    :goto_c
    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdkb:Lcom/skyhookwireless/wps/_sdkrb;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb()Z

    move-result v15

    if-nez v15, :cond_15

    if-lt v11, v14, :cond_15

    int-to-double v14, v11

    div-double/2addr v7, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdkb:Lcom/skyhookwireless/wps/_sdkrb;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/skyhookwireless/wps/_sdkrb;->_sdka()I

    move-result v11

    int-to-double v14, v11

    div-double/2addr v9, v14

    const-wide/high16 v14, 0x4000

    cmpg-double v7, v7, v14

    if-gez v7, :cond_11

    const-wide/16 v2, 0x0

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v18

    mul-int v19, v18, v18

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    add-double v15, v15, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v13, v13, v18

    add-int/lit8 v6, v6, 0x1

    if-eqz v2, :cond_b

    :cond_e
    move/from16 v6, v17

    goto/16 :goto_7

    :cond_f
    const-wide/high16 v14, 0x3ff0

    add-double/2addr v12, v14

    add-int/lit8 v9, v9, 0x1

    if-eqz v2, :cond_c

    :cond_10
    move-wide v9, v12

    goto :goto_a

    :cond_11
    const-wide/high16 v7, 0x4020

    cmpl-double v7, v9, v7

    if-lez v7, :cond_12

    const-wide/16 v2, 0x0

    goto/16 :goto_2

    :cond_12
    const-wide/high16 v7, 0x401e

    cmpl-double v7, v9, v7

    if-lez v7, :cond_15

    const-wide/high16 v5, 0x4000

    const-wide/16 v7, 0x0

    move-wide/from16 v22, v7

    move-wide v7, v5

    move-wide/from16 v5, v22

    :goto_d
    cmpl-double v9, v3, v7

    if-lez v9, :cond_14

    if-eqz v2, :cond_13

    move-wide v2, v7

    :goto_e
    cmpg-double v4, v2, v5

    if-gez v4, :cond_3

    move-wide v2, v5

    goto/16 :goto_2

    :cond_13
    move-wide v2, v7

    goto/16 :goto_2

    :cond_14
    move-wide v2, v3

    goto :goto_e

    :cond_15
    move-wide v7, v5

    move-wide v5, v12

    goto :goto_d

    :cond_16
    move-wide/from16 v22, v9

    move v10, v8

    move-wide/from16 v8, v22

    goto/16 :goto_5

    :cond_17
    move/from16 v22, v10

    move-wide v9, v12

    move v12, v8

    move-wide/from16 v23, v6

    move-wide/from16 v7, v23

    move/from16 v6, v22

    goto/16 :goto_6

    :cond_18
    move-wide v6, v7

    goto/16 :goto_9

    :cond_19
    move/from16 v6, v18

    goto/16 :goto_8

    :cond_1a
    move-wide v5, v15

    move v11, v12

    goto/16 :goto_c

    :cond_1b
    move-wide v5, v7

    move-wide v7, v9

    move v9, v12

    goto/16 :goto_b

    :cond_1c
    move v4, v6

    goto/16 :goto_4

    :cond_1d
    move v3, v4

    move v6, v7

    goto/16 :goto_1
.end method

.method private static _sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkkb;Lcom/skyhookwireless/_sdkub;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;",
            "Lcom/skyhookwireless/wps/_sdkkb;",
            "Lcom/skyhookwireless/_sdkub;",
            ")I"
        }
    .end annotation

    sget v5, Lcom/skyhookwireless/wps/Location;->_sdki:I

    sget-boolean v4, Lcom/skyhookwireless/wps/_sdkhc;->_sdkc:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct/range {p0 .. p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_0
    sget-boolean v4, Lcom/skyhookwireless/wps/_sdkhc;->_sdkc:Z

    if-nez v4, :cond_1

    sget-object v4, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I

    move-result v4

    if-eqz v4, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct/range {p0 .. p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/skyhookwireless/wps/_sdkcb;

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkcb;->_sdkb()D

    move-result-wide v6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v8

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-wide/from16 v22, v15

    move-wide v15, v6

    move-wide/from16 v6, v22

    move-wide/from16 v24, v9

    move-wide v9, v13

    move-wide/from16 v13, v24

    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/skyhookwireless/wps/_sdkcb;

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkcb;->_sdkb()D

    move-result-wide v18

    cmpg-double v18, v18, v15

    if-nez v5, :cond_f

    if-gez v18, :cond_3

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkcb;->_sdkb()D

    move-result-wide v15

    :cond_3
    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkcb;->getLatitude()D

    move-result-wide v18

    add-double v13, v13, v18

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkcb;->getLongitude()D

    move-result-wide v18

    add-double v11, v11, v18

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkcb;->getLatitude()D

    move-result-wide v18

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkcb;->getLatitude()D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v9, v9, v18

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkcb;->getLongitude()D

    move-result-wide v18

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkcb;->getLongitude()D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v6, v6, v18

    if-eqz v5, :cond_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v4, v8

    move-wide/from16 v22, v11

    move-wide/from16 v24, v13

    move-wide/from16 v12, v24

    move-wide/from16 v26, v9

    move-wide/from16 v8, v26

    move-wide/from16 v10, v22

    move-wide/from16 v28, v15

    move-wide/from16 v14, v28

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    move/from16 v22, v16

    move-object/from16 v23, p0

    move/from16 p0, v22

    move/from16 v24, v4

    move-object/from16 v4, v23

    move-wide/from16 v25, v14

    move-wide/from16 v15, v25

    move/from16 v14, v24

    :goto_1
    if-eqz p0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v17

    if-nez v5, :cond_d

    move/from16 v0, v17

    move v1, v14

    if-le v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result p0

    :goto_2
    if-eqz v5, :cond_b

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move/from16 v22, p1

    move/from16 p1, p0

    move/from16 p0, v22

    :goto_4
    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v8, v8, v17

    mul-double/2addr v12, v12

    mul-double v19, v17, v17

    div-double v12, v12, v19

    sub-double/2addr v8, v12

    div-double v6, v6, v17

    add-double/2addr v6, v8

    mul-double v8, v10, v10

    mul-double v10, v17, v17

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x4e20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/skyhookwireless/wps/_sdkkb;->_sdka(Lcom/skyhookwireless/_sdkub;J)Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object p0

    if-eqz p0, :cond_a

    const-wide p2, 0x4047800000000000L

    const-wide/high16 v8, 0x3fe0

    const-wide/high16 v10, 0x4026

    const-wide v12, 0x3fc555714b9cb685L

    sub-double v12, v15, v12

    const-wide v19, 0x3fd5566cf41f212dL

    div-double v12, v12, v19

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x4012cccccccccccdL

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const-wide v10, 0x4009333333333333L

    div-double/2addr v8, v10

    const-wide v10, 0x3fd3333333333333L

    const-wide/high16 v12, 0x3ff0

    div-double v12, v12, v17

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    const-wide v19, 0x3fdccccccccccccdL

    sub-double v12, v12, v19

    mul-double/2addr v10, v12

    const-wide v12, 0x3fc70a3d70a3d70aL

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x3fd0

    const-wide v12, 0x416312d000000000L

    mul-double/2addr v12, v6

    const-wide v19, 0x400599999999999aL

    sub-double v12, v12, v19

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4014

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide v10, 0x3fc999999999999aL

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 p0, v0

    const/16 v4, 0x4b

    sub-int p0, p0, v4

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide v12, v0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x401c

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    mul-double p2, p2, v8

    const-wide/high16 v8, 0x3ff4

    div-double p2, p2, v8

    const-wide v8, 0x405d800000000000L

    add-double p2, p2, v8

    :goto_5
    const-wide/16 v8, 0x0

    cmpl-double p0, p2, v8

    if-nez p0, :cond_9

    const-wide/high16 p2, 0x3ff0

    cmpl-double p0, v17, p2

    if-nez p0, :cond_5

    const-wide p2, 0x4062c00000000000L

    const-wide v8, 0x3fd6666666666666L

    const-wide/high16 v10, 0x4026

    const-wide v12, 0x3fc555714b9cb685L

    sub-double v12, v15, v12

    const-wide v19, 0x3fd5566cf41f212dL

    div-double v12, v12, v19

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x401a

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const-wide v10, 0x4005851eb851eb85L

    div-double/2addr v8, v10

    const-wide v10, 0x3fc7d566cf41f213L

    add-double/2addr v8, v10

    const-wide v10, 0x3fc3333333333333L

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 p0, v0

    const/16 v4, 0x50

    sub-int p0, p0, v4

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide v12, v0

    mul-double/2addr v10, v12

    const-wide v12, 0x4020570a3d70a3d7L

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    mul-double p2, p2, v8

    const-wide v8, 0x3fe4cccccccccccdL

    div-double p2, p2, v8

    const-wide v8, 0x406cc00000000000L

    add-double p2, p2, v8

    if-eqz v5, :cond_9

    :cond_5
    const-wide/high16 p2, 0x4000

    cmpl-double p0, v17, p2

    if-nez p0, :cond_6

    const-wide p2, 0x4062c00000000000L

    const-wide v8, 0x3fd6666666666666L

    const-wide/high16 v10, 0x4026

    const-wide v12, 0x3fc555714b9cb685L

    sub-double v12, v15, v12

    const-wide v19, 0x3fd5566cf41f212dL

    div-double v12, v12, v19

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x401a

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const-wide v10, 0x4005851eb851eb85L

    div-double/2addr v8, v10

    const-wide v10, 0x3fbde69ad42c3c9fL

    sub-double/2addr v8, v10

    const-wide v10, 0x3fd999999999999aL

    const-wide v12, 0x412e848000000000L

    mul-double/2addr v12, v6

    const-wide v19, 0x3ff4cccccccccccdL

    sub-double v12, v12, v19

    mul-double/2addr v10, v12

    const-wide v12, 0x400d99999999999aL

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide v10, 0x3fc3333333333333L

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 p0, v0

    const/16 v4, 0x50

    sub-int p0, p0, v4

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide v12, v0

    mul-double/2addr v10, v12

    const-wide v12, 0x4020570a3d70a3d7L

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    mul-double p2, p2, v8

    const-wide v8, 0x3ff0cccccccccccdL

    div-double p2, p2, v8

    const-wide v8, 0x406cc00000000000L

    add-double p2, p2, v8

    if-eqz v5, :cond_9

    :cond_6
    const-wide p2, 0x4045333333333333L

    const-wide v8, 0x3fe2e147ae147ae1L

    const-wide/high16 v10, 0x4026

    const-wide v12, 0x3fc555714b9cb685L

    sub-double v12, v15, v12

    const-wide v14, 0x3fd5566cf41f212dL

    div-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x400f333333333333L

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    const-wide v10, 0x3fc999999999999aL

    const-wide/high16 v12, 0x3ff0

    div-double v12, v12, v17

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    const-wide v14, 0x3fd47ae147ae147bL

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    const-wide v12, 0x3fbeb851eb851eb8L

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide v10, 0x3fc5c28f5c28f5c3L

    const-wide v12, 0x416312d000000000L

    mul-double/2addr v6, v12

    const-wide/high16 v12, 0x4000

    sub-double/2addr v6, v12

    mul-double/2addr v6, v10

    const-wide/high16 v10, 0x4014

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    const-wide v8, 0x3fc3333333333333L

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 p0, v0

    const/16 p1, 0x4b

    sub-int p0, p0, p1

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 p0, v0

    mul-double p0, p0, v8

    const-wide/high16 v8, 0x4024

    div-double p0, p0, v8

    add-double p0, p0, v6

    mul-double p0, p0, p2

    const-wide p2, 0x3ff1c28f5c28f5c3L

    div-double p0, p0, p2

    const-wide/high16 p2, 0x4051

    add-double p0, p0, p2

    :goto_6
    const-wide/high16 p2, 0x4024

    cmpg-double p2, p0, p2

    if-gez p2, :cond_7

    const-wide/high16 p0, 0x4024

    if-eqz v5, :cond_8

    :cond_7
    const-wide p2, 0x407c200000000000L

    cmpl-double p2, p0, p2

    if-lez p2, :cond_8

    const-wide p0, 0x407c200000000000L

    :cond_8
    move-wide/from16 v0, p0

    double-to-int v0, v0

    move/from16 p0, v0

    return p0

    :cond_9
    move-wide/from16 p0, p2

    goto :goto_6

    :cond_a
    move-wide/from16 p2, v8

    goto/16 :goto_5

    :cond_b
    move-object/from16 v22, v4

    move/from16 v4, p0

    move-object/from16 p0, v22

    move-wide/from16 v23, v15

    move-wide/from16 v14, v23

    goto/16 :goto_0

    :cond_c
    move/from16 p0, v14

    goto/16 :goto_2

    :cond_d
    move/from16 p0, v17

    move/from16 p1, v14

    goto/16 :goto_4

    :cond_e
    move/from16 p0, v14

    goto/16 :goto_3

    :cond_f
    move/from16 p0, v18

    move-object/from16 v4, v17

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move-wide/from16 v10, v24

    move-wide/from16 v26, v13

    move-wide/from16 v12, v26

    move v14, v8

    move-wide/from16 v8, v22

    goto/16 :goto_1
.end method

.method private static _sdka(Ljava/util/ArrayList;D)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/skyhookwireless/wps/Location;",
            ">;D)V"
        }
    .end annotation

    const/4 v7, 0x0

    sget v2, Lcom/skyhookwireless/wps/Location;->_sdki:I

    move v0, v7

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v0

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/Location;

    move v4, v3

    move v3, v7

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    if-nez v2, :cond_5

    if-eq v4, v3, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skyhookwireless/wps/Location;

    invoke-static {v0, v1}, Lcom/skyhookwireless/wps/_sdkhc;->_sdka(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/Location;)D

    move-result-wide v5

    cmpg-double v1, v5, p1

    if-gez v1, :cond_4

    add-int/lit8 v1, v4, 0x1

    if-eqz v2, :cond_3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    if-eqz v2, :cond_2

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz v2, :cond_0

    :cond_1
    return-void

    :cond_2
    move v4, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_3

    :cond_5
    move v0, v3

    move v1, v4

    move v3, v4

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_4
.end method

.method private _sdka(Ljava/util/ArrayList;Lcom/skyhookwireless/_sdkub;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;",
            "Lcom/skyhookwireless/_sdkub;",
            "J)V"
        }
    .end annotation

    sget v1, Lcom/skyhookwireless/wps/Location;->_sdki:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkzb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v4, Lcom/skyhookwireless/_sdkg;->DEBUG:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {v3, v4}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/skyhookwireless/wps/_sdkhc;->z:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_2
    if-eqz v1, :cond_0

    :cond_3
    return-void
.end method

.method private _sdka(Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkkb;Lcom/skyhookwireless/_sdkub;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;",
            "Lcom/skyhookwireless/wps/_sdkkb;",
            "Lcom/skyhookwireless/_sdkub;",
            ")V"
        }
    .end annotation

    sget v5, Lcom/skyhookwireless/wps/Location;->_sdki:I

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/wps/_sdkkb;->_sdkc()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v6

    if-eqz v6, :cond_0

    const-wide/16 v7, 0x4e20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/skyhookwireless/wps/_sdkkb;->_sdka(Lcom/skyhookwireless/_sdkub;J)Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v4, v6

    :cond_0
    if-nez v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x3

    if-lt v4, v7, :cond_c

    const-wide v7, 0x3fa999999999999aL

    move-object/from16 v0, p1

    move-wide v1, v7

    invoke-static {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkhc;->_sdka(Ljava/util/ArrayList;D)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget-boolean v4, Lcom/skyhookwireless/wps/_sdkhc;->_sdkc:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    if-ne v7, v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_1
    const/4 v4, 0x1

    if-le v7, v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    sget-object v8, Lcom/skyhookwireless/wps/Location;->_sdka:Ljava/util/Comparator;

    move-object/from16 v0, p2

    move-object v1, v8

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v8, Lcom/skyhookwireless/wps/Location;->_sdkb:Ljava/util/Comparator;

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    new-instance v8, Lcom/skyhookwireless/wps/Location;

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/wps/_sdkcb;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/wps/_sdkcb;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/wps/_sdkcb;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/wps/_sdkcb;->getLongitude()D

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/skyhookwireless/wps/Location;-><init>(DD)V

    move-object v4, v8

    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [D

    const/4 v8, 0x0

    :cond_3
    array-length v9, v7

    if-ge v8, v9, :cond_4

    if-nez v5, :cond_18

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/wps/Location;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdkdd;->_sdka(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/Location;)D

    move-result-wide v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    if-eqz v5, :cond_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 p2, v4

    :goto_1
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v4

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v8

    :goto_2
    const-wide/16 v10, 0x4e20

    cmp-long v4, v8, v10

    if-gtz v4, :cond_14

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4024

    mul-double/2addr v8, v10

    :goto_3
    const/16 v4, 0x4b

    const-wide/high16 v10, -0x4010

    const/4 v6, 0x0

    move/from16 v17, v6

    move v6, v4

    move/from16 v4, v17

    :goto_4
    const/4 v12, 0x3

    if-ge v4, v12, :cond_8

    int-to-double v12, v6

    add-double/2addr v12, v8

    const/4 v14, 0x0

    if-nez v5, :cond_17

    :cond_5
    array-length v15, v7

    if-ge v14, v15, :cond_7

    aget-wide v15, v7, v14

    cmpl-double v15, v15, v10

    if-nez v5, :cond_16

    if-ltz v15, :cond_6

    aget-wide v15, v7, v14

    cmpg-double v15, v15, v12

    if-gez v15, :cond_6

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v14, v14, 0x1

    if-eqz v5, :cond_5

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_5
    const/4 v11, 0x3

    if-ge v10, v11, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    array-length v11, v7

    if-ne v10, v11, :cond_15

    :cond_8
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    :goto_6
    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdkhc;->z:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_9
    :goto_7
    return-void

    :cond_a
    sget-boolean v4, Lcom/skyhookwireless/wps/_sdkhc;->_sdkc:Z

    if-nez v4, :cond_b

    if-eqz v7, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdkhc;->z:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_f

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/wps/Location;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/skyhookwireless/wps/Location;

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdkdd;->_sdka(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/Location;)D

    move-result-wide v7

    const-wide v9, 0x4072c00000000000L

    cmpg-double v4, v7, v9

    if-gez v4, :cond_d

    new-instance v4, Lcom/skyhookwireless/wps/Location;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/wps/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/wps/Location;->getLongitude()D

    move-result-wide v9

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/skyhookwireless/wps/Location;-><init>(DD)V

    goto/16 :goto_0

    :cond_d
    if-eqz v6, :cond_e

    if-eqz v5, :cond_19

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdkhc;->z:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_11

    if-eqz v6, :cond_10

    if-eqz v5, :cond_19

    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/skyhookwireless/wps/Location;

    new-instance v4, Lcom/skyhookwireless/wps/Location;

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/wps/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/wps/Location;->getLongitude()D

    move-result-wide v9

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/skyhookwireless/wps/Location;-><init>(DD)V

    goto/16 :goto_0

    :cond_11
    sget-boolean v4, Lcom/skyhookwireless/wps/_sdkhc;->_sdkc:Z

    if-nez v4, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdkhc;->z:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_13
    const-wide/16 v8, 0x0

    goto/16 :goto_2

    :cond_14
    const-wide/16 v8, 0x0

    goto/16 :goto_3

    :cond_15
    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v4, v4, 0x1

    if-nez v5, :cond_8

    move-wide v10, v12

    goto/16 :goto_4

    :cond_16
    move v10, v15

    goto/16 :goto_5

    :cond_17
    move v4, v14

    goto/16 :goto_6

    :cond_18
    move-object/from16 p2, v7

    goto/16 :goto_1

    :cond_19
    move-object v4, v6

    goto/16 :goto_0
.end method

.method private static _sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    new-instance v1, Lcom/skyhookwireless/wps/_sdkic;

    invoke-direct {v1, p0, p1}, Lcom/skyhookwireless/wps/_sdkic;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    sget-object v2, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p1, v1, v2}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/util/List;Ljava/util/List;Lcom/skyhookwireless/_sdkwc;Ljava/util/Comparator;)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v1, Lcom/skyhookwireless/wps/_sdkic;->i:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-nez v0, :cond_2

    if-eqz v0, :cond_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v1, Lcom/skyhookwireless/wps/_sdkic;->i:I

    if-le v2, v3, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-nez v0, :cond_3

    if-eqz v0, :cond_1

    :cond_2
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdkc:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    return-void
.end method

.method private _sdkb(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkkb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/wps/_sdkdb;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;",
            "Lcom/skyhookwireless/wps/_sdkkb;",
            "Lcom/skyhookwireless/_sdkub;",
            ")",
            "Lcom/skyhookwireless/wps/_sdkdb;"
        }
    .end annotation

    sget v6, Lcom/skyhookwireless/wps/Location;->_sdki:I

    const/4 v4, 0x0

    const-wide/16 v7, 0x4e20

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/skyhookwireless/wps/_sdkkb;->_sdka(Lcom/skyhookwireless/_sdkub;J)Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-virtual/range {p3 .. p3}, Lcom/skyhookwireless/wps/_sdkkb;->_sdkc()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v4

    move-object v7, v4

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkdb;->getHPE()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3f70624dd2f1a9fcL

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v10

    move-object/from16 v0, p4

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v10

    long-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    const/16 v7, 0x1c2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/skyhookwireless/wps/_sdkdb;->setHPE(I)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/skyhookwireless/wps/_sdkdb;->setNAP(I)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/skyhookwireless/wps/_sdkdb;->setSatellites(I)V

    invoke-virtual {v5}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/wps/_sdkdb;->setAge(Lcom/skyhookwireless/_sdkub;)V

    :goto_1
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v8, v4, [D

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    move-wide v10, v4

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v9

    :goto_3
    if-ge v5, v4, :cond_f

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/skyhookwireless/_sdkzb;

    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/skyhookwireless/wps/_sdkcb;

    sget-boolean v12, Lcom/skyhookwireless/wps/_sdkhc;->_sdkc:Z

    if-nez v12, :cond_2

    invoke-virtual {v5}, Lcom/skyhookwireless/wps/_sdkcb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v12

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkzb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/skyhookwireless/_sdkyb;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_2
    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v12

    int-to-double v12, v12

    const-wide/high16 v14, -0x3fcc

    cmpl-double v14, v12, v14

    if-ltz v14, :cond_3

    const-wide v12, -0x3fa9800000000000L

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v14, v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/skyhookwireless/wps/_sdkhc;->z:[Ljava/lang/String;

    const/16 v17, 0x4

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/skyhookwireless/wps/_sdkdb;->getSpeed()D

    move-result-wide v14

    :goto_4
    const-wide v16, 0x40301864899f0187L

    cmpg-double v14, v14, v16

    if-gez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdkb:Lcom/skyhookwireless/wps/_sdkrb;

    move-object v14, v0

    invoke-virtual {v14, v4}, Lcom/skyhookwireless/wps/_sdkrb;->_sdka(Lcom/skyhookwireless/_sdkzb;)Ljava/util/List;

    move-result-object v14

    sget-boolean v4, Lcom/skyhookwireless/wps/_sdkhc;->_sdkc:Z

    if-nez v4, :cond_5

    if-nez v14, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_4
    const-wide/16 v14, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x1

    const/4 v15, 0x1

    move/from16 v20, v15

    move-wide v15, v12

    move v13, v4

    move/from16 v12, v20

    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_19

    const/4 v4, 0x5

    if-nez v6, :cond_1a

    if-ge v12, v4, :cond_19

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v4

    move v0, v4

    int-to-double v0, v0

    move-wide/from16 v17, v0

    add-double v15, v15, v17

    add-int/lit8 v4, v13, 0x1

    :goto_6
    add-int/lit8 v12, v12, 0x1

    if-eqz v6, :cond_17

    move-wide v12, v15

    :goto_7
    int-to-double v14, v4

    div-double/2addr v12, v14

    :cond_6
    invoke-virtual {v5}, Lcom/skyhookwireless/wps/_sdkcb;->_sdkb()D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0

    cmpl-double v4, v14, v16

    if-lez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v14, Lcom/skyhookwireless/_sdkg;->DEBUG:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {v4, v14}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/skyhookwireless/wps/_sdkhc;->z:[Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_7
    const-wide/high16 v14, 0x3fe0

    if-eqz v6, :cond_a

    :cond_8
    const-wide v16, 0x3fc5555555555555L

    cmpg-double v4, v14, v16

    if-gez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v14, Lcom/skyhookwireless/_sdkg;->DEBUG:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {v4, v14}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/skyhookwireless/wps/_sdkhc;->z:[Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_9
    const-wide v14, 0x3fc5555555555555L

    :cond_a
    invoke-virtual {v5}, Lcom/skyhookwireless/wps/_sdkcb;->_sdka()I

    move-result v4

    move v0, v4

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4032

    cmpg-double v4, v16, v18

    if-gez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v16, Lcom/skyhookwireless/_sdkg;->DEBUG:Lcom/skyhookwireless/_sdkg;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/skyhookwireless/wps/_sdkhc;->z:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_b
    const-wide v16, 0x3f50624dd2f1a9fcL

    if-eqz v6, :cond_16

    :cond_c
    const-wide v18, 0x4048800000000000L

    cmpl-double v4, v16, v18

    if-lez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v16, Lcom/skyhookwireless/_sdkg;->DEBUG:Lcom/skyhookwireless/_sdkg;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v16, Lcom/skyhookwireless/wps/_sdkhc;->z:[Ljava/lang/String;

    const/16 v17, 0x1

    aget-object v16, v16, v17

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_d
    const-wide/high16 v4, 0x3ff0

    if-eqz v6, :cond_e

    :goto_8
    const-wide v16, 0x3feff7ced916872bL

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    const-wide/high16 v18, 0x4032

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log10(D)D

    move-result-wide v18

    sub-double v4, v4, v18

    mul-double v4, v4, v16

    const-wide v16, 0x4048800000000000L

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log10(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4032

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log10(D)D

    move-result-wide v18

    sub-double v16, v16, v18

    div-double v4, v4, v16

    const-wide v16, 0x3f50624dd2f1a9fcL

    add-double v4, v4, v16

    :cond_e
    :goto_9
    const-wide/high16 v16, 0x4024

    const-wide/high16 v18, 0x4024

    div-double v12, v12, v18

    move-wide/from16 v0, v16

    move-wide v2, v12

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v4, v12

    add-double/2addr v10, v4

    aput-wide v4, v8, v9

    add-int/lit8 v4, v9, 0x1

    if-eqz v6, :cond_14

    :cond_f
    move-wide v9, v10

    const-wide/16 v4, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v13, 0x0

    move/from16 v20, v13

    move-wide v13, v4

    move/from16 v5, v20

    :goto_a
    if-ge v5, v7, :cond_10

    aget-wide v15, v8, v5

    div-double/2addr v15, v9

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/skyhookwireless/wps/_sdkcb;

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkcb;->getLatitude()D

    move-result-wide v17

    mul-double v17, v17, v15

    add-double v13, v13, v17

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/skyhookwireless/wps/_sdkcb;

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkcb;->getLongitude()D

    move-result-wide v17

    mul-double v15, v15, v17

    add-double/2addr v11, v15

    add-int/lit8 v4, v5, 0x1

    if-nez v6, :cond_13

    if-eqz v6, :cond_12

    :cond_10
    move-wide v4, v11

    move-wide v8, v13

    invoke-static/range {p1 .. p4}, Lcom/skyhookwireless/wps/_sdkhc;->_sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkkb;Lcom/skyhookwireless/_sdkub;)I

    move-result v6

    move/from16 v20, v6

    move-wide/from16 v21, v4

    move-wide/from16 v5, v21

    move/from16 v4, v20

    :goto_b
    new-instance v10, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-direct {v10}, Lcom/skyhookwireless/wps/_sdkdb;-><init>()V

    invoke-virtual {v10, v8, v9}, Lcom/skyhookwireless/wps/_sdkdb;->setLatitude(D)V

    invoke-virtual {v10, v5, v6}, Lcom/skyhookwireless/wps/_sdkdb;->setLongitude(D)V

    invoke-virtual {v10, v4}, Lcom/skyhookwireless/wps/_sdkdb;->setHPE(I)V

    invoke-virtual {v10, v7}, Lcom/skyhookwireless/wps/_sdkdb;->setNAP(I)V

    move-object v0, v10

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/wps/_sdkdb;->setAge(Lcom/skyhookwireless/_sdkub;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/_sdkg;->DEBUG:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/skyhookwireless/wps/_sdkhc;->z:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_11
    move-object v4, v10

    goto/16 :goto_1

    :cond_12
    move v5, v4

    goto :goto_a

    :cond_13
    move-wide v5, v11

    move-wide v8, v13

    goto :goto_b

    :cond_14
    move v9, v4

    goto/16 :goto_2

    :cond_15
    move-wide/from16 v4, v16

    goto/16 :goto_8

    :cond_16
    move-wide/from16 v4, v16

    goto/16 :goto_9

    :cond_17
    move v13, v4

    goto/16 :goto_5

    :cond_18
    move v4, v13

    goto/16 :goto_6

    :cond_19
    move v4, v13

    move-wide v12, v15

    goto/16 :goto_7

    :cond_1a
    move v5, v12

    goto/16 :goto_3

    :cond_1b
    move-object v7, v4

    goto/16 :goto_0
.end method


# virtual methods
.method _sdkb(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkkb;)D
    .locals 20

    sget v2, Lcom/skyhookwireless/wps/Location;->_sdki:I

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getLongitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/wps/_sdkkb;->_sdkd()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x15

    if-nez v2, :cond_1f

    if-lt v5, v6, :cond_5

    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    :goto_2
    if-lt v5, v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v4

    const-wide/32 v6, 0xa028

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_5
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getSpeed()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getSpeed()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getSpeed()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_9

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getSpeed()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_9

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/skyhookwireless/wps/_sdkkb;->_sdkb()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->getBearing()D

    move-result-wide v2

    goto/16 :goto_0

    :cond_8
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getLongitude()D

    move-result-wide v6

    const-wide v8, 0x3f91df46a2529d34L

    mul-double/2addr v6, v8

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLongitude()D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d34L

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d34L

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d34L

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v10

    const-wide v12, 0x3f91df46a2529d34L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v10

    const-wide v12, 0x3f91df46a2529d34L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v12

    const-wide v14, 0x3f91df46a2529d34L

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getLongitude()D

    move-result-wide v12

    const-wide v14, 0x3f91df46a2529d34L

    mul-double/2addr v12, v14

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLongitude()D

    move-result-wide v14

    const-wide v16, 0x3f91df46a2529d34L

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    if-nez v2, :cond_1e

    if-eqz v2, :cond_a

    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    const-wide/16 v2, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x0

    move/from16 v18, v5

    move v5, v3

    move/from16 v3, v18

    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_10

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x3ff921fb54442d11L

    cmpl-double v6, v6, v8

    if-nez v2, :cond_1d

    if-gtz v6, :cond_e

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, -0x4006de04abbbd2efL

    cmpg-double v6, v6, v8

    if-gez v6, :cond_f

    :cond_e
    add-int/lit8 v5, v5, 0x1

    :cond_f
    add-int/lit8 v3, v3, 0x1

    if-eqz v2, :cond_d

    :cond_10
    move v3, v5

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v3, v5, :cond_13

    const/4 v3, 0x0

    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_13

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    if-nez v2, :cond_14

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_12

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v7, 0x401921fb54442d11L

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v3, v3, 0x1

    if-eqz v2, :cond_11

    :cond_13
    const-wide/16 v5, 0x0

    :cond_14
    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    move-wide/from16 v18, v7

    move-wide v7, v5

    move-wide/from16 v5, v18

    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_16

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    add-int/lit8 v3, v3, 0x1

    if-nez v2, :cond_17

    if-eqz v2, :cond_15

    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-double v9, v3

    div-double/2addr v7, v9

    :cond_17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-double v9, v3

    div-double/2addr v5, v9

    mul-double/2addr v7, v7

    sub-double/2addr v5, v7

    const-wide v7, 0x4006666666666666L

    cmpl-double v3, v5, v7

    if-lez v3, :cond_18

    const/4 v3, 0x2

    if-eqz v2, :cond_1c

    :cond_18
    const-wide/high16 v7, 0x4004

    cmpl-double v3, v5, v7

    if-lez v3, :cond_19

    const/4 v3, 0x3

    if-eqz v2, :cond_1c

    :cond_19
    const-wide v7, 0x4002666666666666L

    cmpl-double v3, v5, v7

    if-lez v3, :cond_1a

    const/4 v3, 0x5

    if-eqz v2, :cond_1c

    :cond_1a
    const/16 v2, 0x15

    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v2, v3, :cond_1b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_1b
    const/4 v3, 0x0

    invoke-virtual {v4, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x404ca5dc1a63c200L

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    const-wide v4, 0x40768028f5c28f5cL

    add-double/2addr v2, v4

    goto/16 :goto_0

    :cond_1c
    move v2, v3

    goto :goto_5

    :cond_1d
    move v3, v6

    goto/16 :goto_4

    :cond_1e
    move v3, v5

    goto/16 :goto_3

    :cond_1f
    move v4, v6

    goto/16 :goto_2
.end method

.method public calculateLocation(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkkb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;",
            "Lcom/skyhookwireless/wps/_sdkkb;",
            "Lcom/skyhookwireless/_sdkub;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkhc;->_sdkc:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkhc;->_sdkb:Lcom/skyhookwireless/wps/_sdkrb;

    invoke-virtual {v3, v0}, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v4, Lcom/skyhookwireless/_sdkg;->TRACE:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {v3, v4}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkhc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkhc;->_sdkb:Lcom/skyhookwireless/wps/_sdkrb;

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkrb;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/skyhookwireless/_sdkcb;->_sdka(Ljava/lang/String;)V

    :cond_1
    const-wide/16 v3, 0x1388

    invoke-direct {p0, v0, p4, v3, v4}, Lcom/skyhookwireless/wps/_sdkhc;->_sdka(Ljava/util/ArrayList;Lcom/skyhookwireless/_sdkub;J)V

    invoke-static {v0, v1}, Lcom/skyhookwireless/wps/_sdkhc;->_sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1, p3, p4}, Lcom/skyhookwireless/wps/_sdkhc;->_sdka(Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkkb;Lcom/skyhookwireless/_sdkub;)V

    invoke-static {v0, v1}, Lcom/skyhookwireless/wps/_sdkhc;->_sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/skyhookwireless/wps/_sdkhc;->_sdkb(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkkb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0, p3}, Lcom/skyhookwireless/wps/_sdkhc;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkkb;)D

    move-result-wide v1

    cmpl-double v3, v1, v5

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkdb;->setSpeed(D)V

    :cond_2
    invoke-virtual {p0, v0, p3}, Lcom/skyhookwireless/wps/_sdkhc;->_sdkb(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkkb;)D

    move-result-wide v1

    cmpl-double v3, v1, v5

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkdb;->setBearing(D)V

    :cond_3
    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {v1, v0}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_4
    if-eqz v2, :cond_5

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_NO_WIFI_IN_RANGE:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {v0, v7}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {v0, v7}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto :goto_0
.end method
