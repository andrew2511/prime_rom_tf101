.class public final enum Lcom/skyhookwireless/wps/WPSContinuation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/skyhookwireless/wps/WPSContinuation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

.field public static final enum WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

.field private static final synthetic _sdka:[Lcom/skyhookwireless/wps/WPSContinuation;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x1b

    const/16 v11, 0x13

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "HK\u00155@KT\u0016"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_5

    move v3, v8

    :cond_0
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v13, v3

    move-object v3, v1

    move v1, v13

    :goto_0
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_0

    move v7, v11

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

    move-object v13, v3

    move v3, v1

    move-object v1, v13

    :goto_2
    if-gt v2, v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "HK\u00155PPU\u0012#]J^"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_4

    move v3, v8

    :cond_2
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v13, v3

    move-object v3, v1

    move v1, v13

    :goto_3
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_1

    move v7, v11

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

    move-object v13, v3

    move v3, v1

    move-object v1, v13

    :goto_5
    if-gt v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    sput-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->z:[Ljava/lang/String;

    new-instance v0, Lcom/skyhookwireless/wps/WPSContinuation;

    sget-object v1, Lcom/skyhookwireless/wps/WPSContinuation;->z:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-direct {v0, v1, v8}, Lcom/skyhookwireless/wps/WPSContinuation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    new-instance v0, Lcom/skyhookwireless/wps/WPSContinuation;

    sget-object v1, Lcom/skyhookwireless/wps/WPSContinuation;->z:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-direct {v0, v1, v9}, Lcom/skyhookwireless/wps/WPSContinuation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    new-array v0, v10, [Lcom/skyhookwireless/wps/WPSContinuation;

    sget-object v1, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    aput-object v1, v0, v8

    sget-object v1, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    aput-object v1, v0, v9

    sput-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->_sdka:[Lcom/skyhookwireless/wps/WPSContinuation;

    return-void

    :pswitch_0
    const/16 v7, 0x1f

    goto :goto_1

    :pswitch_1
    move v7, v12

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x46

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x6a

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x1f

    goto :goto_4

    :pswitch_5
    move v7, v12

    goto :goto_4

    :pswitch_6
    const/16 v7, 0x46

    goto :goto_4

    :pswitch_7
    const/16 v7, 0x6a

    goto :goto_4

    :cond_4
    move v3, v8

    goto :goto_5

    :cond_5
    move v3, v8

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
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 1

    const-class v0, Lcom/skyhookwireless/wps/WPSContinuation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/WPSContinuation;

    return-object p0
.end method

.method public static final values()[Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 1

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->_sdka:[Lcom/skyhookwireless/wps/WPSContinuation;

    invoke-virtual {v0}, [Lcom/skyhookwireless/wps/WPSContinuation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/skyhookwireless/wps/WPSContinuation;

    return-object v0
.end method
