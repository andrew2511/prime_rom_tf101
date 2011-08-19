.class final Lcom/skyhookwireless/_sdkcc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/net/wifi/WifiManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdkrc;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\u0012C%+"

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

    const/16 v6, 0x1b

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

    sput-object v0, Lcom/skyhookwireless/_sdkcc;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v6, 0x65

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x2a

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x43

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x42

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private constructor <init>(Lcom/skyhookwireless/_sdkrc;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkcc;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/skyhookwireless/_sdkrc;Lcom/skyhookwireless/_sdkac;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/skyhookwireless/_sdkcc;-><init>(Lcom/skyhookwireless/_sdkrc;)V

    return-void
.end method


# virtual methods
.method public _sdka()Landroid/net/wifi/WifiManager;
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/_sdkcc;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdkh(Lcom/skyhookwireless/_sdkrc;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkcc;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkcc;->_sdka()Landroid/net/wifi/WifiManager;

    move-result-object v0

    return-object v0
.end method
