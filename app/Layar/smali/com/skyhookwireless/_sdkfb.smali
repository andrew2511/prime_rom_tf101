.class final Lcom/skyhookwireless/_sdkfb;
.super Lcom/skyhookwireless/_sdkcb;


# static fields
.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\u001f8j[D\u0017.o\u001aX\u0017 n\u0007R\u00102t\u0006\u0019\u0004\'t"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v7, v2

    move-object v2, v0

    move v0, v7

    :goto_0
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_0

    const/16 v6, 0x37

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    if-nez v3, :cond_1

    move-object v1, v2

    move v4, v0

    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/_sdkfb;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v6, 0x7c

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x57

    goto :goto_1

    :pswitch_2
    const/4 v6, 0x7

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x75

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/skyhookwireless/_sdkcb;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected _sdka(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/skyhookwireless/_sdkcb;"
        }
    .end annotation

    new-instance v0, Lcom/skyhookwireless/_sdkfb;

    invoke-direct {v0, p1}, Lcom/skyhookwireless/_sdkfb;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected _sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/skyhookwireless/_sdkg;->_sdkb:I

    sget-object v1, Lcom/skyhookwireless/_sdkjb;->_sdka:[I

    invoke-virtual {p1}, Lcom/skyhookwireless/_sdkg;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Lcom/skyhookwireless/_sdkfb;->z:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    :pswitch_1
    sget-object v1, Lcom/skyhookwireless/_sdkfb;->z:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    :pswitch_2
    sget-object v1, Lcom/skyhookwireless/_sdkfb;->z:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    :pswitch_3
    sget-object v1, Lcom/skyhookwireless/_sdkfb;->z:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    :pswitch_4
    sget-object v0, Lcom/skyhookwireless/_sdkfb;->z:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
