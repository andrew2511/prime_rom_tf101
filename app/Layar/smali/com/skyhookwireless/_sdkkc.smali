.class public abstract Lcom/skyhookwireless/_sdkkc;
.super Lcom/skyhookwireless/_sdkfc;


# static fields
.field public static final GPS:Ljava/lang/String;

.field public static final NETWORK:Ljava/lang/String;

.field public static final NULL_LOCATION_PROVIDER:Lcom/skyhookwireless/_sdkkc;

.field private static _sdkc:Lcom/skyhookwireless/_sdkkc;

.field public static _sdkd:I

.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v11, 0x5a

    const/16 v10, 0x3c

    const/16 v9, 0x3a

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "9[RH\u000bzIY\u001b_*HS\u001b\u0010.CL\n\u000c"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v8, :cond_8

    move v2, v7

    :cond_0
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_0
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_0

    const/16 v6, 0x7f

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

    move-object v12, v2

    move v2, v0

    move-object v0, v12

    :goto_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/_sdkkc;->z:Ljava/lang/String;

    const-string v0, "\u0014\u007fh80\u0008q"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v8, :cond_7

    move v2, v7

    :cond_2
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_3
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_1

    const/16 v6, 0x7f

    :goto_4
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    if-nez v3, :cond_3

    move-object v1, v2

    move v4, v0

    move v0, v3

    goto :goto_3

    :cond_3
    move v1, v3

    move-object v12, v2

    move v2, v0

    move-object v0, v12

    :goto_5
    if-gt v1, v2, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/_sdkkc;->NETWORK:Ljava/lang/String;

    const-string v0, "\u001djo"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v8, :cond_6

    move v2, v7

    :cond_4
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_6
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_2

    const/16 v6, 0x7f

    :goto_7
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    if-nez v3, :cond_5

    move-object v1, v2

    move v4, v0

    move v0, v3

    goto :goto_6

    :cond_5
    move v1, v3

    move-object v12, v2

    move v2, v0

    move-object v0, v12

    :goto_8
    if-gt v1, v2, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/_sdkkc;->GPS:Ljava/lang/String;

    new-instance v0, Lcom/skyhookwireless/_sdklc;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdklc;-><init>()V

    sput-object v0, Lcom/skyhookwireless/_sdkkc;->NULL_LOCATION_PROVIDER:Lcom/skyhookwireless/_sdkkc;

    const/4 v0, 0x0

    sput-object v0, Lcom/skyhookwireless/_sdkkc;->_sdkc:Lcom/skyhookwireless/_sdkkc;

    return-void

    :pswitch_0
    move v6, v11

    goto/16 :goto_1

    :pswitch_1
    move v6, v9

    goto/16 :goto_1

    :pswitch_2
    move v6, v10

    goto/16 :goto_1

    :pswitch_3
    const/16 v6, 0x6f

    goto/16 :goto_1

    :pswitch_4
    move v6, v11

    goto :goto_4

    :pswitch_5
    move v6, v9

    goto :goto_4

    :pswitch_6
    move v6, v10

    goto :goto_4

    :pswitch_7
    const/16 v6, 0x6f

    goto :goto_4

    :pswitch_8
    move v6, v11

    goto :goto_7

    :pswitch_9
    move v6, v9

    goto :goto_7

    :pswitch_a
    move v6, v10

    goto :goto_7

    :pswitch_b
    const/16 v6, 0x6f

    goto :goto_7

    :cond_6
    move v2, v7

    goto :goto_8

    :cond_7
    move v2, v7

    goto :goto_5

    :cond_8
    move v2, v7

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
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkfc;-><init>()V

    return-void
.end method

.method public static _sdka(Lcom/skyhookwireless/_sdkkc;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/skyhookwireless/_sdkkc;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static _sdkb(Lcom/skyhookwireless/_sdko;Ljava/lang/String;)Lcom/skyhookwireless/_sdkkc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/skyhookwireless/_sdki;
        }
    .end annotation

    sget-object v0, Lcom/skyhookwireless/_sdkkc;->_sdkc:Lcom/skyhookwireless/_sdkkc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/skyhookwireless/_sdkmc;

    invoke-direct {v0, p0, p1}, Lcom/skyhookwireless/_sdkmc;-><init>(Lcom/skyhookwireless/_sdko;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/skyhookwireless/_sdkkc;->_sdkc:Lcom/skyhookwireless/_sdkkc;

    invoke-virtual {v0, p0, p1}, Lcom/skyhookwireless/_sdkkc;->_sdka(Lcom/skyhookwireless/_sdko;Ljava/lang/String;)Lcom/skyhookwireless/_sdkkc;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract _sdka(Lcom/skyhookwireless/_sdko;Ljava/lang/String;)Lcom/skyhookwireless/_sdkkc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/skyhookwireless/_sdki;
        }
    .end annotation
.end method

.method public abstract _sdka(J)V
.end method

.method public abstract _sdka()Z
.end method

.method public abstract _sdkb()V
.end method

.method public abstract _sdkc()Lcom/skyhookwireless/wps/_sdkdb;
.end method
