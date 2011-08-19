.class Lcom/skyhookwireless/_sdkab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/location/LocationManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdkmc;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "/l\u0004zF*l\t"

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

    const/16 v6, 0x32

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

    sput-object v0, Lcom/skyhookwireless/_sdkab;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v6, 0x43

    goto :goto_1

    :pswitch_1
    const/4 v6, 0x3

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x67

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x1b

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

.method constructor <init>(Lcom/skyhookwireless/_sdkmc;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkab;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _sdka()Landroid/location/LocationManager;
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/_sdkab;->_sdka:Lcom/skyhookwireless/_sdkmc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkmc;->_sdka(Lcom/skyhookwireless/_sdkmc;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkab;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkab;->_sdka()Landroid/location/LocationManager;

    move-result-object v0

    return-object v0
.end method
