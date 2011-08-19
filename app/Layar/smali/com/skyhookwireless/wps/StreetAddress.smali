.class public final Lcom/skyhookwireless/wps/StreetAddress;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14973970a851d4bdL

.field private static final z:[Ljava/lang/String;


# instance fields
.field _sdka:Ljava/lang/String;

.field _sdkb:Ljava/lang/String;

.field _sdkc:Ljava/lang/String;

.field _sdkd:Ljava/lang/String;

.field _sdke:Ljava/lang/String;

.field _sdkf:Ljava/lang/String;

.field _sdkg:Ljava/lang/String;

.field _sdkh:Ljava/lang/String;

.field _sdki:Ljava/lang/String;

.field _sdkj:Ljava/lang/String;

.field _sdkk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x20

    const/16 v11, 0x16

    const/16 v10, 0xe

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "U6"

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

    const-string v1, "Y>"

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

    sput-object v0, Lcom/skyhookwireless/wps/StreetAddress;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v7, 0x79

    goto :goto_1

    :pswitch_1
    move v7, v11

    goto :goto_1

    :pswitch_2
    move v7, v12

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x49

    goto :goto_1

    :pswitch_4
    const/16 v7, 0x79

    goto :goto_4

    :pswitch_5
    move v7, v11

    goto :goto_4

    :pswitch_6
    move v7, v12

    goto :goto_4

    :pswitch_7
    const/16 v7, 0x49

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

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkj:Ljava/lang/String;

    iput-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdki:Ljava/lang/String;

    iput-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkh:Ljava/lang/String;

    iput-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkf:Ljava/lang/String;

    iput-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdke:Ljava/lang/String;

    iput-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkd:Ljava/lang/String;

    iput-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkc:Ljava/lang/String;

    iput-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkb:Ljava/lang/String;

    iput-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdka:Ljava/lang/String;

    iput-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkk:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/skyhookwireless/wps/StreetAddress;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/StreetAddress;

    iget-object v1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkk:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkk:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkk:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/StreetAddress;->clone()Lcom/skyhookwireless/wps/StreetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAddressLine()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkk:[Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkb:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkj:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdki:Ljava/lang/String;

    return-object v0
.end method

.method public getCounty()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkd:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkc:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdke:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkf:Ljava/lang/String;

    return-object v0
.end method

.method public getStateCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkh:Ljava/lang/String;

    return-object v0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkg:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdka:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressLines([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkk:[Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkb:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkj:Ljava/lang/String;

    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdki:Ljava/lang/String;

    return-void
.end method

.method public setCounty(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkd:Ljava/lang/String;

    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkc:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdke:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkf:Ljava/lang/String;

    return-void
.end method

.method public setStateCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkh:Ljava/lang/String;

    return-void
.end method

.method public setStateName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkg:Ljava/lang/String;

    return-void
.end method

.method public setStreetNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdka:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdka:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkk:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdka:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkk:[Ljava/lang/String;

    array-length v3, v2

    move v4, v7

    :cond_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    if-nez v0, :cond_3

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdki:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkj:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkb:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkh:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkc:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/skyhookwireless/wps/StreetAddress;->z:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkh:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdki:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/StreetAddress;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/skyhookwireless/wps/StreetAddress;->_sdkj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
