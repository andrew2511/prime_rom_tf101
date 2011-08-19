.class public abstract Lcom/skyhookwireless/_sdkgc;
.super Lcom/skyhookwireless/_sdkfc;


# static fields
.field public static final NULL_GSM_ADAPTER:Lcom/skyhookwireless/_sdkgc;

.field private static _sdkc:Lcom/skyhookwireless/_sdkgc;

.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "6I\u001fLSu[\u0014\u001f\u0007%Z\u001e\u001fH!Q\u0001\u000eT"

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

    const/16 v6, 0x27

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

    sput-object v0, Lcom/skyhookwireless/_sdkgc;->z:Ljava/lang/String;

    new-instance v0, Lcom/skyhookwireless/_sdkhc;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdkhc;-><init>()V

    sput-object v0, Lcom/skyhookwireless/_sdkgc;->NULL_GSM_ADAPTER:Lcom/skyhookwireless/_sdkgc;

    const/4 v0, 0x0

    sput-object v0, Lcom/skyhookwireless/_sdkgc;->_sdkc:Lcom/skyhookwireless/_sdkgc;

    return-void

    :pswitch_0
    const/16 v6, 0x55

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x28

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x71

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x6b

    goto :goto_1

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

.method public static _sdka(Lcom/skyhookwireless/_sdkgc;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/skyhookwireless/_sdkgc;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static _sdkb(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdkgc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/skyhookwireless/_sdkid;
        }
    .end annotation

    sget-object v0, Lcom/skyhookwireless/_sdkgc;->_sdkc:Lcom/skyhookwireless/_sdkgc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/skyhookwireless/_sdkic;

    invoke-direct {v0, p0}, Lcom/skyhookwireless/_sdkic;-><init>(Lcom/skyhookwireless/_sdko;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/skyhookwireless/_sdkgc;->_sdkc:Lcom/skyhookwireless/_sdkgc;

    invoke-virtual {v0, p0}, Lcom/skyhookwireless/_sdkgc;->_sdka(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdkgc;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract _sdka(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdkgc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/skyhookwireless/_sdkid;
        }
    .end annotation
.end method

.method public abstract _sdka(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkv;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract _sdkb()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/skyhookwireless/_sdkid;
        }
    .end annotation
.end method

.method public abstract _sdkc()V
.end method

.method public abstract _sdkd()Ljava/lang/String;
.end method

.method public abstract _sdke()Z
.end method
