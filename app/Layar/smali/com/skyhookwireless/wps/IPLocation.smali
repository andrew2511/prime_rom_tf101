.class public final Lcom/skyhookwireless/wps/IPLocation;
.super Lcom/skyhookwireless/wps/Location;


# static fields
.field private static final serialVersionUID:J = -0x26323bc8c3492f05L

.field private static final z:[Ljava/lang/String;


# instance fields
.field protected final _sdkj:Ljava/lang/String;

.field protected final _sdkk:Lcom/skyhookwireless/wps/StreetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x1b

    const/4 v11, 0x6

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ";P"

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

    move v7, v10

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

    const-string v1, "7J"

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

    move v7, v10

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

    sput-object v0, Lcom/skyhookwireless/wps/IPLocation;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v12

    goto :goto_1

    :pswitch_1
    const/16 v7, 0x6a

    goto :goto_1

    :pswitch_2
    move v7, v11

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x46

    goto :goto_1

    :pswitch_4
    move v7, v12

    goto :goto_4

    :pswitch_5
    const/16 v7, 0x6a

    goto :goto_4

    :pswitch_6
    move v7, v11

    goto :goto_4

    :pswitch_7
    const/16 v7, 0x46

    goto :goto_4

    :cond_4
    move v3, v8

    goto :goto_5

    :cond_5
    move v3, v8

    goto :goto_2

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

.method constructor <init>(DDJLjava/lang/String;Lcom/skyhookwireless/wps/StreetAddress;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/skyhookwireless/wps/Location;-><init>(DDJ)V

    iput-object p7, p0, Lcom/skyhookwireless/wps/IPLocation;->_sdkj:Ljava/lang/String;

    iput-object p8, p0, Lcom/skyhookwireless/wps/IPLocation;->_sdkk:Lcom/skyhookwireless/wps/StreetAddress;

    return-void
.end method


# virtual methods
.method public getIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/IPLocation;->_sdkj:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Lcom/skyhookwireless/wps/StreetAddress;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/IPLocation;->_sdkk:Lcom/skyhookwireless/wps/StreetAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/IPLocation;->getIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/IPLocation;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/IPLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/IPLocation;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/IPLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/IPLocation;->_sdkk:Lcom/skyhookwireless/wps/StreetAddress;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/IPLocation;->_sdkk:Lcom/skyhookwireless/wps/StreetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
