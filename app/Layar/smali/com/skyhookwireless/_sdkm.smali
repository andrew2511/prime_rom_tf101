.class public Lcom/skyhookwireless/_sdkm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/_sdko;


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field private final _sdka:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "nUNkUf\u0011\u0018IVa\u0001]rM/\u001cK*Kj\u0004McKj\u0011"

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

    const/16 v6, 0x39

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

    sput-object v0, Lcom/skyhookwireless/_sdkm;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v6, 0xf

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x75

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x38

    goto :goto_1

    :pswitch_3
    const/16 v6, 0xa

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/skyhookwireless/_sdkm;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkm;->_sdka:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public _sdka()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkm;->_sdka:Landroid/content/Context;

    return-object v0
.end method
