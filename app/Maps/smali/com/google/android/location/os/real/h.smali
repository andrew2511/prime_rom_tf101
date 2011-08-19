.class public Lcom/google/android/location/os/real/h;
.super LW/m;

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;IJ)V
    .locals 8

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x3

    invoke-direct {p0, p4, p5}, LW/m;-><init>(J)V

    invoke-static {p1}, Lcom/google/android/location/os/real/h;->a(Landroid/telephony/TelephonyManager;)I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/h;->m:I

    iput p3, p0, Lcom/google/android/location/os/real/h;->n:I

    instance-of v0, p2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_3

    check-cast p2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/h;->b:I

    invoke-virtual {p2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/h;->a:I

    invoke-static {}, Lcom/google/android/location/os/real/f;->a()Lcom/google/android/location/os/real/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/location/os/real/f;->a(Landroid/telephony/gsm/GsmCellLocation;)I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/h;->c:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/location/os/real/h;->m:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v1, p0, Lcom/google/android/location/os/real/h;->d:I

    iput v2, p0, Lcom/google/android/location/os/real/h;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v1, p0, Lcom/google/android/location/os/real/h;->f:I

    iput v2, p0, Lcom/google/android/location/os/real/h;->g:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    iget v2, p0, Lcom/google/android/location/os/real/h;->m:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/location/os/real/h;->l:Ljava/util/List;

    new-instance v3, LW/q;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-direct {v3, v4, v5, v7, v0}, LW/q;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    instance-of v0, p2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/h;->b:I

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/h;->a:I

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/h;->e:I

    iput v1, p0, Lcom/google/android/location/os/real/h;->d:I

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/h;->h:I

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/h;->i:I

    iput v2, p0, Lcom/google/android/location/os/real/h;->m:I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CellState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing MCC/MNC from operator \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v2, "CellState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing MCC/MNC from home operator \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :pswitch_2
    iget v2, p0, Lcom/google/android/location/os/real/h;->m:I

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/google/android/location/os/real/h;->l:Ljava/util/List;

    new-instance v3, LW/q;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-direct {v3, v7, v7, v4, v0}, LW/q;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object v0, p0, Lcom/google/android/location/os/real/h;->j:Ljava/lang/String;

    :cond_5
    const-string v0, "CellState"

    invoke-static {v0, v6}, Lw/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static final a(Landroid/telephony/TelephonyManager;)I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eq v0, v3, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    if-eq v0, v4, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    move v0, v4

    goto :goto_0

    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method
