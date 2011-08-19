.class Lcom/skyhookwireless/wps/_sdknc;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Lcom/skyhookwireless/_sdkad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;",
        "Lcom/skyhookwireless/_sdkad;"
    }
.end annotation


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkzc;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\u0015A\u000b\u001a\u0015VR\u0000\\\u0012\u0005I\u0002SA\u0002H\u0000\u001d$\u0000E\u000bI2\u001fN\u000e"

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

    const/16 v6, 0x61

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdknc;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v6, 0x76

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x20

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x65

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x3d

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lcom/skyhookwireless/_sdkzc;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdkzc;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdknc;->_sdka:Lcom/skyhookwireless/_sdkzc;

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdknc;->_sdka:Lcom/skyhookwireless/_sdkzc;

    invoke-interface {v0, p0}, Lcom/skyhookwireless/_sdkzc;->_sdka(Lcom/skyhookwireless/_sdkad;)V

    return-void
.end method

.method public setEventSink(Lcom/skyhookwireless/_sdkzc;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdknc;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
