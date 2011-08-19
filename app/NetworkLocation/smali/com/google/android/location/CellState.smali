.class public Lcom/google/android/location/CellState;
.super Ljava/lang/Object;
.source "CellState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/CellState$NeighborCell;
    }
.end annotation


# instance fields
.field private mCarrier:Ljava/lang/String;

.field private mCid:I

.field private mHomeMcc:I

.field private mHomeMnc:I

.field private mLac:I

.field private mLatitude:I

.field private mLongitude:I

.field private mMcc:I

.field private mMnc:I

.field private final mNeighbors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/CellState$NeighborCell;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioType:I

.field private volatile mSignalStrength:I

.field private final mTime:J


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;I)V
    .locals 22
    .parameter "telephonyManager"
    .parameter "location"
    .parameter "signalStrength"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mCid:I

    .line 52
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mLac:I

    .line 53
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mMcc:I

    .line 54
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mMnc:I

    .line 55
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mHomeMcc:I

    .line 56
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mHomeMnc:I

    .line 57
    const v16, 0x7fffffff

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mLatitude:I

    .line 58
    const v16, 0x7fffffff

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mLongitude:I

    .line 59
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/CellState;->mCarrier:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/CellState;->mTime:J

    .line 61
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/CellState;->mNeighbors:Ljava/util/List;

    .line 68
    invoke-static/range {p1 .. p1}, Lcom/google/android/location/CellState;->getRadioType(Landroid/telephony/TelephonyManager;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mRadioType:I

    .line 69
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mSignalStrength:I

    .line 71
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 72
    move-object/from16 v0, p2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v7, v0

    .line 73
    .local v7, loc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mLac:I

    .line 74
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mCid:I

    .line 89
    .end local v7           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v13

    .line 91
    .local v13, neighboringCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    if-eqz v13, :cond_3

    .line 92
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/NeighboringCellInfo;

    .line 93
    .local v12, n:Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v14

    .line 94
    .local v14, networkType:I
    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 97
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/CellState;->mRadioType:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/CellState;->mNeighbors:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v17, Lcom/google/android/location/CellState$NeighborCell;

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v18

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v19

    const/16 v20, -0x1

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v21

    invoke-direct/range {v17 .. v21}, Lcom/google/android/location/CellState$NeighborCell;-><init>(IIII)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v12           #n:Landroid/telephony/NeighboringCellInfo;
    .end local v13           #neighboringCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v14           #networkType:I
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/telephony/cdma/CdmaCellLocation;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 76
    move-object/from16 v0, p2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v7, v0

    .line 77
    .local v7, loc:Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mLac:I

    .line 78
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mCid:I

    .line 79
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mMnc:I

    .line 80
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mMcc:I

    .line 81
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mLatitude:I

    .line 82
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mLongitude:I

    .line 85
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mRadioType:I

    goto/16 :goto_0

    .line 107
    .end local v7           #loc:Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v12       #n:Landroid/telephony/NeighboringCellInfo;
    .restart local v13       #neighboringCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .restart local v14       #networkType:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/CellState;->mRadioType:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/CellState;->mNeighbors:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v17, Lcom/google/android/location/CellState$NeighborCell;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v20

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v21

    invoke-direct/range {v17 .. v21}, Lcom/google/android/location/CellState$NeighborCell;-><init>(IIII)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 118
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v12           #n:Landroid/telephony/NeighboringCellInfo;
    .end local v14           #networkType:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/CellState;->mRadioType:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v15

    .line 121
    .local v15, operator:Ljava/lang/String;
    if-eqz v15, :cond_4

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 125
    const/16 v16, 0x0

    const/16 v17, 0x3

    :try_start_0
    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, mcc:Ljava/lang/String;
    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, mnc:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 128
    .local v9, mccTmp:I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 131
    .local v11, mncTmp:I
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mMcc:I

    .line 132
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mMnc:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v8           #mcc:Ljava/lang/String;
    .end local v9           #mccTmp:I
    .end local v10           #mnc:Ljava/lang/String;
    .end local v11           #mncTmp:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, homeOperator:Ljava/lang/String;
    if-eqz v5, :cond_4

    const-string v16, ""

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 144
    const/16 v16, 0x0

    const/16 v17, 0x3

    :try_start_1
    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 145
    .restart local v8       #mcc:Ljava/lang/String;
    const/16 v16, 0x3

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 146
    .restart local v10       #mnc:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 147
    .restart local v9       #mccTmp:I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 150
    .restart local v11       #mncTmp:I
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mHomeMcc:I

    .line 151
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/CellState;->mHomeMnc:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    .end local v5           #homeOperator:Ljava/lang/String;
    .end local v8           #mcc:Ljava/lang/String;
    .end local v9           #mccTmp:I
    .end local v10           #mnc:Ljava/lang/String;
    .end local v11           #mncTmp:I
    .end local v15           #operator:Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, carrier:Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v16, ""

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 163
    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/CellState;->mCarrier:Ljava/lang/String;

    .line 166
    :cond_5
    const-string v16, "CellState"

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 167
    const-string v16, "CellState"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CellState(): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/location/CellState;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_6
    return-void

    .line 133
    .end local v3           #carrier:Ljava/lang/String;
    .restart local v15       #operator:Ljava/lang/String;
    :catch_0
    move-exception v16

    move-object/from16 v4, v16

    .line 134
    .local v4, e:Ljava/lang/Exception;
    const-string v16, "CellState"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error parsing MCC/MNC from operator \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 152
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #homeOperator:Ljava/lang/String;
    :catch_1
    move-exception v16

    move-object/from16 v4, v16

    .line 153
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v16, "CellState"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error parsing MCC/MNC from home operator \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 94
    nop

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

.method public static final getRadioType(Landroid/telephony/TelephonyManager;)I
    .locals 5
    .parameter "telephonyManager"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 176
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 177
    .local v0, networkType:I
    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 180
    :cond_1
    if-eq v0, v3, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    :cond_2
    move v1, v3

    .line 184
    goto :goto_0

    .line 185
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
    move v1, v2

    .line 190
    goto :goto_0

    .line 191
    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    move v1, v4

    .line 192
    goto :goto_0

    .line 194
    :cond_6
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Lcom/google/android/location/CellState;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 263
    iget v0, p0, Lcom/google/android/location/CellState;->mCid:I

    iget v1, p1, Lcom/google/android/location/CellState;->mCid:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/location/CellState;->mLac:I

    iget v1, p1, Lcom/google/android/location/CellState;->mLac:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gcell()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 14

    .prologue
    const v8, 0x7fffffff

    const/4 v13, 0x2

    const/4 v12, 0x1

    const-wide v10, 0x4085b38e38e38e39L

    const/4 v9, -0x1

    .line 295
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v7, Lcom/google/android/location/protocol/GcellularMessageTypes;->GCELL:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 296
    .local v0, cell:Lcom/google/common/io/protocol/ProtoBuf;
    iget v7, p0, Lcom/google/android/location/CellState;->mLac:I

    invoke-virtual {v0, v12, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 297
    iget v7, p0, Lcom/google/android/location/CellState;->mCid:I

    invoke-virtual {v0, v13, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 299
    iget v1, p0, Lcom/google/android/location/CellState;->mLatitude:I

    .line 300
    .local v1, lat:I
    iget v3, p0, Lcom/google/android/location/CellState;->mLongitude:I

    .line 301
    .local v3, lng:I
    if-eq v1, v8, :cond_0

    if-eq v3, v8, :cond_0

    .line 302
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v7, Lcom/google/android/location/protocol/GlatlngMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v7}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 303
    .local v2, latLng:Lcom/google/common/io/protocol/ProtoBuf;
    int-to-double v7, v1

    mul-double/2addr v7, v10

    double-to-int v7, v7

    invoke-virtual {v2, v12, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 304
    int-to-double v7, v3

    mul-double/2addr v7, v10

    double-to-int v7, v7

    invoke-virtual {v2, v13, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 305
    const/16 v7, 0x9

    invoke-virtual {v0, v7, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 308
    .end local v2           #latLng:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    iget v4, p0, Lcom/google/android/location/CellState;->mMcc:I

    .line 309
    .local v4, primaryMcc:I
    if-eq v4, v9, :cond_1

    .line 310
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 313
    :cond_1
    iget v5, p0, Lcom/google/android/location/CellState;->mMnc:I

    .line 314
    .local v5, primaryMnc:I
    if-eq v5, v9, :cond_2

    .line 315
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 318
    :cond_2
    iget v6, p0, Lcom/google/android/location/CellState;->mSignalStrength:I

    .line 319
    .local v6, signalStrength:I
    if-eq v6, v9, :cond_3

    .line 320
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 323
    :cond_3
    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/location/CellState;->mCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/google/android/location/CellState;->mCid:I

    return v0
.end method

.method public getHomeMcc()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/google/android/location/CellState;->mHomeMcc:I

    return v0
.end method

.method public getHomeMnc()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/google/android/location/CellState;->mHomeMnc:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/location/CellState;->mLac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/google/android/location/CellState;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/google/android/location/CellState;->mMnc:I

    return v0
.end method

.method public getNeighbors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/CellState$NeighborCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/location/CellState;->mNeighbors:Ljava/util/List;

    return-object v0
.end method

.method public getRadioType()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/google/android/location/CellState;->mRadioType:I

    return v0
.end method

.method public getSignalStrength()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/google/android/location/CellState;->mSignalStrength:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/google/android/location/CellState;->mTime:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 267
    iget v0, p0, Lcom/google/android/location/CellState;->mCid:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/location/CellState;->mLac:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/location/CellState;->mMcc:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/location/CellState;->mMnc:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSignalStrength(I)V
    .locals 3
    .parameter "signalStrength"

    .prologue
    .line 198
    iput p1, p0, Lcom/google/android/location/CellState;->mSignalStrength:I

    .line 200
    const-string v0, "CellState"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "CellState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSignal(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/CellState;->mLac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/CellState;->mCid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/CellState;->mMnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/CellState;->mMcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/CellState;->mHomeMcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/CellState;->mHomeMnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/CellState;->mCarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/CellState;->mRadioType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/CellState;->mSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "[cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/android/location/CellState;->mCid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    const-string v4, " lac: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/android/location/CellState;->mLac:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    const-string v4, " mcc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/android/location/CellState;->mMcc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    const-string v4, " mnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/android/location/CellState;->mMnc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    const-string v4, " radioType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/android/location/CellState;->mRadioType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    const-string v4, " signalStrength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/android/location/CellState;->mSignalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    const-string v4, " neighbors["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const/4 v0, 0x1

    .line 280
    .local v0, first:Z
    iget-object v4, p0, Lcom/google/android/location/CellState;->mNeighbors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/CellState$NeighborCell;

    .line 281
    .local v2, n:Lcom/google/android/location/CellState$NeighborCell;
    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 286
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 284
    :cond_0
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    .end local v2           #n:Lcom/google/android/location/CellState$NeighborCell;
    :cond_1
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
