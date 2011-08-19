.class public final Lcom/skyhookwireless/wps/_sdkx;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkb:Lcom/skyhookwireless/wps/_sdky;

.field private _sdkc:I

.field private final _sdkd:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/_sdkz;",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x46

    const/16 v12, 0x1a

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "`s\"I\u0005knf\u000f\u0002j~f"

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

    const/16 v7, 0x6b

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

    const-string v1, "$s(I\rmv#\u001a"

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

    const/16 v7, 0x6b

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

    const-string v2, "$s(I\u0008ey.\u000c"

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

    const/16 v8, 0x6b

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

    const-string v2, "bu3\u0007\u000f$"

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

    const/16 v8, 0x6b

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkx;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v11

    goto/16 :goto_1

    :pswitch_1
    move v7, v12

    goto/16 :goto_1

    :pswitch_2
    move v7, v13

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x69

    goto/16 :goto_1

    :pswitch_4
    move v7, v11

    goto/16 :goto_4

    :pswitch_5
    move v7, v12

    goto/16 :goto_4

    :pswitch_6
    move v7, v13

    goto/16 :goto_4

    :pswitch_7
    const/16 v7, 0x69

    goto/16 :goto_4

    :pswitch_8
    move v8, v11

    goto :goto_7

    :pswitch_9
    move v8, v12

    goto :goto_7

    :pswitch_a
    move v8, v13

    goto :goto_7

    :pswitch_b
    const/16 v8, 0x69

    goto :goto_7

    :pswitch_c
    move v8, v11

    goto :goto_a

    :pswitch_d
    move v8, v12

    goto :goto_a

    :pswitch_e
    move v8, v13

    goto :goto_a

    :pswitch_f
    const/16 v8, 0x69

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

.method public constructor <init>(Lcom/skyhookwireless/wps/WPSAuthentication;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkc:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkd:Ljava/util/LinkedList;

    const-class v0, Lcom/skyhookwireless/wps/_sdkx;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v0, Lcom/skyhookwireless/wps/_sdky;

    invoke-direct {v0, p1}, Lcom/skyhookwireless/wps/_sdky;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkb:Lcom/skyhookwireless/wps/_sdky;

    return-void
.end method

.method private _sdka(Lcom/skyhookwireless/_sdked;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/_sdkz;",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkc:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkc:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkc:I

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkd:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkd:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private _sdkb(Lcom/skyhookwireless/_sdkyb;)Lcom/skyhookwireless/_sdked;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdkyb;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/_sdkz;",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;"
        }
    .end annotation

    sget-boolean v2, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkd:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdked;

    iget-object v1, v0, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v1, Lcom/skyhookwireless/wps/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkcb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/skyhookwireless/_sdkyb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkd:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkd:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    if-eqz v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _sdkb(Lcom/skyhookwireless/wps/_sdkz;)Lcom/skyhookwireless/wps/_sdkz;
    .locals 3

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkd:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdked;

    iget-object v2, p0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    if-eqz v0, :cond_0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public _sdka(Lcom/skyhookwireless/_sdkyb;)Lcom/skyhookwireless/_sdked;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdkyb;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/_sdkz;",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/_sdkx;->_sdkb(Lcom/skyhookwireless/_sdkyb;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkx;->z:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/_sdkx;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkb:Lcom/skyhookwireless/wps/_sdky;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdky;->_sdka(Lcom/skyhookwireless/_sdkyb;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkx;->z:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/_sdkx;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/_sdkx;->_sdka(Lcom/skyhookwireless/_sdked;)V

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkx;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/_sdkx;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public _sdka()Lcom/skyhookwireless/wps/_sdkz;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkb:Lcom/skyhookwireless/wps/_sdky;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdky;->_sdka()Lcom/skyhookwireless/wps/_sdkz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/_sdkx;->_sdkb(Lcom/skyhookwireless/wps/_sdkz;)Lcom/skyhookwireless/wps/_sdkz;

    move-result-object v0

    return-object v0
.end method

.method public _sdka(Ljava/lang/String;)Lcom/skyhookwireless/wps/_sdkz;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkb:Lcom/skyhookwireless/wps/_sdky;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdky;->_sdka(Ljava/lang/String;)Lcom/skyhookwireless/wps/_sdkz;

    move-result-object v0

    return-object v0
.end method

.method public _sdka(Lcom/skyhookwireless/wps/_sdkz;)V
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkx;->_sdkb:Lcom/skyhookwireless/wps/_sdky;

    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/_sdkx;->_sdkb(Lcom/skyhookwireless/wps/_sdkz;)Lcom/skyhookwireless/wps/_sdkz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/wps/_sdky;->_sdka(Lcom/skyhookwireless/wps/_sdkz;)V

    return-void
.end method
