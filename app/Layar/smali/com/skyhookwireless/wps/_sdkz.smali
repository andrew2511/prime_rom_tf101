.class public abstract Lcom/skyhookwireless/wps/_sdkz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static _sdka:Lcom/skyhookwireless/wps/_sdkz;

.field public static _sdkb:Z

.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "5\u0008%\u000f v\u001a.\\t&\u001b$\\;\"\u0010;M\'"

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

    const/16 v6, 0x54

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkz;->z:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/skyhookwireless/wps/_sdkz;->_sdka:Lcom/skyhookwireless/wps/_sdkz;

    return-void

    :pswitch_0
    const/16 v6, 0x56

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x69

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x4b

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x28

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _sdka(Lcom/skyhookwireless/wps/_sdkz;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkz;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static _sdkb(Ljava/lang/String;Ljava/lang/String;)Lcom/skyhookwireless/wps/_sdkz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/skyhookwireless/wps/_sdkc;
        }
    .end annotation

    sget-object v0, Lcom/skyhookwireless/wps/_sdkz;->_sdka:Lcom/skyhookwireless/wps/_sdkz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/skyhookwireless/wps/_sdkab;

    invoke-direct {v0, p0, p1}, Lcom/skyhookwireless/wps/_sdkab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/skyhookwireless/wps/_sdkz;->_sdka:Lcom/skyhookwireless/wps/_sdkz;

    invoke-virtual {v0, p0, p1}, Lcom/skyhookwireless/wps/_sdkz;->_sdka(Ljava/lang/String;Ljava/lang/String;)Lcom/skyhookwireless/wps/_sdkz;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract _sdka(Lcom/skyhookwireless/_sdkyb;)Lcom/skyhookwireless/wps/_sdkcb;
.end method

.method protected abstract _sdka(Ljava/lang/String;Ljava/lang/String;)Lcom/skyhookwireless/wps/_sdkz;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/skyhookwireless/wps/_sdkc;
        }
    .end annotation
.end method

.method public abstract close()V
.end method
