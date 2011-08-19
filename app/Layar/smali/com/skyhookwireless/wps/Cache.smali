.class public Lcom/skyhookwireless/wps/Cache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final _sdke:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final _sdkb:Lcom/skyhookwireless/_sdkcb;

.field private _sdkc:I

.field private _sdkd:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x25

    const/16 v12, 0x19

    const/16 v11, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Fqz\u0005]\u00055jM\u0010MymMJDd|W\u0018\u0000t6H\\\t0<C\nC5<D"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_f

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

    const/16 v7, 0x38

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

    const-string v1, "Hyj\u001e"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_e

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

    const/16 v7, 0x38

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

    const-string v2, "Mym"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_d

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

    const/16 v8, 0x38

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

    const-string v2, "Nu`MUPcmMVJd9\u000f]\u0005~l\u0001T"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c

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

    const/16 v8, 0x38

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

    const-string v2, "Squ\u0018]\u0005}l\u001eL\u0005~v\u0019\u0018Gu9\u0003MI|"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_b

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

    const/16 v8, 0x38

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

    sput-object v0, Lcom/skyhookwireless/wps/Cache;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/Cache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v10

    :goto_f
    sput-boolean v0, Lcom/skyhookwireless/wps/Cache;->_sdke:Z

    return-void

    :cond_a
    move v0, v9

    goto :goto_f

    :pswitch_0
    move v7, v13

    goto/16 :goto_1

    :pswitch_1
    move v7, v11

    goto/16 :goto_1

    :pswitch_2
    move v7, v12

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x6d

    goto/16 :goto_1

    :pswitch_4
    move v7, v13

    goto/16 :goto_4

    :pswitch_5
    move v7, v11

    goto/16 :goto_4

    :pswitch_6
    move v7, v12

    goto/16 :goto_4

    :pswitch_7
    const/16 v7, 0x6d

    goto/16 :goto_4

    :pswitch_8
    move v8, v13

    goto/16 :goto_7

    :pswitch_9
    move v8, v11

    goto/16 :goto_7

    :pswitch_a
    move v8, v12

    goto/16 :goto_7

    :pswitch_b
    const/16 v8, 0x6d

    goto/16 :goto_7

    :pswitch_c
    move v8, v13

    goto/16 :goto_a

    :pswitch_d
    move v8, v11

    goto/16 :goto_a

    :pswitch_e
    move v8, v12

    goto/16 :goto_a

    :pswitch_f
    const/16 v8, 0x6d

    goto/16 :goto_a

    :pswitch_10
    move v8, v13

    goto :goto_d

    :pswitch_11
    move v8, v11

    goto :goto_d

    :pswitch_12
    move v8, v12

    goto :goto_d

    :pswitch_13
    const/16 v8, 0x6d

    goto :goto_d

    :cond_b
    move v4, v9

    goto :goto_e

    :cond_c
    move v4, v9

    goto/16 :goto_b

    :cond_d
    move v4, v9

    goto/16 :goto_8

    :cond_e
    move v3, v9

    goto/16 :goto_5

    :cond_f
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
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/Cache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/Cache;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkoc;

    const/high16 v3, 0x3f40

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/skyhookwireless/wps/_sdkoc;-><init>(Lcom/skyhookwireless/wps/Cache;IFZI)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdka:Ljava/util/Map;

    sget-boolean v0, Lcom/skyhookwireless/wps/Cache;->_sdke:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdka:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/skyhookwireless/wps/Cache;->_sdka()V

    return-void
.end method

.method private _sdka(Lcom/skyhookwireless/wps/Cache$Finder;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/Cache$Finder",
            "<TK;TV;>;TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdka:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/skyhookwireless/wps/Cache$Finder;->call(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/skyhookwireless/wps/Cache;->_sdka(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private _sdka()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdkd:I

    iput v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdkc:I

    return-void
.end method

.method private _sdka(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdka:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private _sdkb(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    move v0, v5

    :goto_1
    iget v1, p0, Lcom/skyhookwireless/wps/Cache;->_sdkc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/skyhookwireless/wps/Cache;->_sdkc:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/skyhookwireless/wps/Cache;->_sdkd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/skyhookwireless/wps/Cache;->_sdkd:I

    :cond_1
    iget-object v1, p0, Lcom/skyhookwireless/wps/Cache;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/Cache;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/skyhookwireless/wps/Cache;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    :goto_2
    aput-object v0, v3, v4

    iget v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdkd:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    iget v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdkc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x3

    const-wide/high16 v4, 0x4059

    iget v6, p0, Lcom/skyhookwireless/wps/Cache;->_sdkd:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/skyhookwireless/wps/Cache;->_sdkc:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/skyhookwireless/wps/Cache;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    goto :goto_2
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/skyhookwireless/wps/Cache;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/skyhookwireless/wps/Cache;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdka:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Lcom/skyhookwireless/wps/Cache$Finder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/skyhookwireless/wps/Cache$Finder",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p3, p1}, Lcom/skyhookwireless/wps/Cache;->_sdka(Lcom/skyhookwireless/wps/Cache$Finder;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/skyhookwireless/wps/Cache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdka:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/skyhookwireless/wps/Cache;->_sdka()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/Cache;->_sdka:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/Cache;->_sdkb(Ljava/lang/Object;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;Lcom/skyhookwireless/wps/Cache$Finder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/skyhookwireless/wps/Cache$Finder",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lcom/skyhookwireless/wps/Cache;->_sdka(Lcom/skyhookwireless/wps/Cache$Finder;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/skyhookwireless/wps/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
