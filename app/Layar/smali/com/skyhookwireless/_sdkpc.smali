.class public abstract Lcom/skyhookwireless/_sdkpc;
.super Lcom/skyhookwireless/_sdkfc;


# static fields
.field public static final NULL_WIFI_ADAPTER:Lcom/skyhookwireless/_sdkpc;

.field private static _sdkc:Lcom/skyhookwireless/_sdkpc;

.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "}hjNJ>za\u001d\u001en{k\u001dQjpt\u000cM"

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

    const/16 v6, 0x3e

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

    sput-object v0, Lcom/skyhookwireless/_sdkpc;->z:Ljava/lang/String;

    new-instance v0, Lcom/skyhookwireless/_sdkqc;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdkqc;-><init>()V

    sput-object v0, Lcom/skyhookwireless/_sdkpc;->NULL_WIFI_ADAPTER:Lcom/skyhookwireless/_sdkpc;

    const/4 v0, 0x0

    sput-object v0, Lcom/skyhookwireless/_sdkpc;->_sdkc:Lcom/skyhookwireless/_sdkpc;

    return-void

    :pswitch_0
    const/16 v6, 0x1e

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x9

    goto :goto_1

    :pswitch_2
    const/4 v6, 0x4

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x69

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

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkfc;-><init>()V

    return-void
.end method

.method public static _sdka(Lcom/skyhookwireless/_sdkpc;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/skyhookwireless/_sdkpc;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static _sdkb(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdkpc;
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkpc;->_sdkc:Lcom/skyhookwireless/_sdkpc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/skyhookwireless/_sdkrc;

    invoke-direct {v0, p0}, Lcom/skyhookwireless/_sdkrc;-><init>(Lcom/skyhookwireless/_sdko;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/skyhookwireless/_sdkpc;->_sdkc:Lcom/skyhookwireless/_sdkpc;

    invoke-virtual {v0, p0}, Lcom/skyhookwireless/_sdkpc;->_sdka(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdkpc;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract _sdka(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdkpc;
.end method

.method public abstract _sdka(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/skyhookwireless/_sdkj;
        }
    .end annotation
.end method

.method public abstract _sdka(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract _sdka()Z
.end method

.method public abstract _sdkb()Z
.end method

.method public abstract _sdkc()Z
.end method

.method public abstract _sdkd()Z
.end method

.method public abstract _sdke()V
.end method

.method public abstract _sdkf()Ljava/lang/String;
.end method
