.class public Lcom/skyhookwireless/wps/WPSLocation;
.super Lcom/skyhookwireless/wps/Location;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x680098b9070c874dL

.field private static final z:[Ljava/lang/String;


# instance fields
.field private _sdkj:I

.field private _sdkk:I

.field private _sdkl:I

.field private _sdkm:D

.field private _sdkn:D

.field private _sdko:Lcom/skyhookwireless/wps/StreetAddress;

.field _sdkp:Lcom/skyhookwireless/wps/_sdkpb;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x2a

    const/16 v12, 0xe

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x69

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "j\u000c&"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v11, :cond_17

    move v3, v10

    :cond_0
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_0
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_0

    move v7, v9

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

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_2
    if-gt v2, v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "e\u0004nBI"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v11, :cond_16

    move v3, v10

    :cond_2
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_3
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_1

    move v7, v9

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

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_5
    if-gt v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x2

    const-string v2, "c\u001a"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v11, :cond_15

    move v4, v10

    :cond_4
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_6
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2

    move v8, v9

    :goto_7
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_5

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_6

    :cond_5
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_8
    if-gt v3, v4, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cIi"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v11, :cond_14

    move v4, v10

    :cond_6
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_9
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_3

    move v8, v9

    :goto_a
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_7

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_9

    :cond_7
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_b
    if-gt v3, v4, :cond_6

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".Bn\u0007"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v11, :cond_13

    move v4, v10

    :cond_8
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_c
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_4

    move v8, v9

    :goto_d
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_9

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_c

    :cond_9
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_e
    if-gt v3, v4, :cond_8

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\'I"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v11, :cond_12

    move v4, v10

    :cond_a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_f
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_5

    move v8, v9

    :goto_10
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_f

    :cond_b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_11
    if-gt v3, v4, :cond_a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\"I"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v11, :cond_11

    move v4, v10

    :cond_c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_12
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_6

    move v8, v9

    :goto_13
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_12

    :cond_d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_14
    if-gt v3, v4, :cond_c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cI F\u001d"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v11, :cond_10

    move v4, v10

    :cond_e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_15
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_7

    move v8, v9

    :goto_16
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_15

    :cond_f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_17
    if-gt v3, v4, :cond_e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/wps/WPSLocation;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v12

    goto/16 :goto_1

    :pswitch_1
    move v7, v9

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x41

    goto/16 :goto_1

    :pswitch_3
    move v7, v13

    goto/16 :goto_1

    :pswitch_4
    move v7, v12

    goto/16 :goto_4

    :pswitch_5
    move v7, v9

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x41

    goto/16 :goto_4

    :pswitch_7
    move v7, v13

    goto/16 :goto_4

    :pswitch_8
    move v8, v12

    goto/16 :goto_7

    :pswitch_9
    move v8, v9

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x41

    goto/16 :goto_7

    :pswitch_b
    move v8, v13

    goto/16 :goto_7

    :pswitch_c
    move v8, v12

    goto/16 :goto_a

    :pswitch_d
    move v8, v9

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x41

    goto/16 :goto_a

    :pswitch_f
    move v8, v13

    goto/16 :goto_a

    :pswitch_10
    move v8, v12

    goto/16 :goto_d

    :pswitch_11
    move v8, v9

    goto/16 :goto_d

    :pswitch_12
    const/16 v8, 0x41

    goto/16 :goto_d

    :pswitch_13
    move v8, v13

    goto/16 :goto_d

    :pswitch_14
    move v8, v12

    goto/16 :goto_10

    :pswitch_15
    move v8, v9

    goto/16 :goto_10

    :pswitch_16
    const/16 v8, 0x41

    goto/16 :goto_10

    :pswitch_17
    move v8, v13

    goto/16 :goto_10

    :pswitch_18
    move v8, v12

    goto/16 :goto_13

    :pswitch_19
    move v8, v9

    goto/16 :goto_13

    :pswitch_1a
    const/16 v8, 0x41

    goto/16 :goto_13

    :pswitch_1b
    move v8, v13

    goto/16 :goto_13

    :pswitch_1c
    move v8, v12

    goto :goto_16

    :pswitch_1d
    move v8, v9

    goto :goto_16

    :pswitch_1e
    const/16 v8, 0x41

    goto/16 :goto_16

    :pswitch_1f
    move v8, v13

    goto/16 :goto_16

    :cond_10
    move v4, v10

    goto :goto_17

    :cond_11
    move v4, v10

    goto/16 :goto_14

    :cond_12
    move v4, v10

    goto/16 :goto_11

    :cond_13
    move v4, v10

    goto/16 :goto_e

    :cond_14
    move v4, v10

    goto/16 :goto_b

    :cond_15
    move v4, v10

    goto/16 :goto_8

    :cond_16
    move v3, v10

    goto/16 :goto_5

    :cond_17
    move v3, v10

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/skyhookwireless/wps/Location;-><init>()V

    return-void
.end method

.method public constructor <init>(DDJIIIDDLcom/skyhookwireless/wps/StreetAddress;Lcom/skyhookwireless/wps/_sdkpb;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/skyhookwireless/wps/Location;-><init>(DDJ)V

    iput p7, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkj:I

    iput p8, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkk:I

    iput p9, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkl:I

    iput-wide p10, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkm:D

    iput-wide p12, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkn:D

    iput-object p14, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdko:Lcom/skyhookwireless/wps/StreetAddress;

    iput-object p15, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkp:Lcom/skyhookwireless/wps/_sdkpb;

    return-void
.end method


# virtual methods
.method protected _sdka(I)V
    .locals 0

    iput p1, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkl:I

    return-void
.end method

.method public clone()Lcom/skyhookwireless/wps/WPSLocation;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/WPSLocation;

    iget-object v1, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdko:Lcom/skyhookwireless/wps/StreetAddress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdko:Lcom/skyhookwireless/wps/StreetAddress;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->clone()Lcom/skyhookwireless/wps/StreetAddress;

    move-result-object v1

    iput-object v1, v0, Lcom/skyhookwireless/wps/WPSLocation;->_sdko:Lcom/skyhookwireless/wps/StreetAddress;

    :cond_0
    iget-object v1, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkp:Lcom/skyhookwireless/wps/_sdkpb;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkp:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkpb;->clone()Lcom/skyhookwireless/wps/_sdkpb;

    move-result-object v1

    iput-object v1, v0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkp:Lcom/skyhookwireless/wps/_sdkpb;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
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

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->clone()Lcom/skyhookwireless/wps/WPSLocation;

    move-result-object v0

    return-object v0
.end method

.method public getBearing()D
    .locals 2

    iget-wide v0, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkn:D

    return-wide v0
.end method

.method public getHPE()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkj:I

    return v0
.end method

.method public getNAP()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkk:I

    return v0
.end method

.method public getNCell()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkl:I

    return v0
.end method

.method public getSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkm:D

    return-wide v0
.end method

.method public getStreetAddress()Lcom/skyhookwireless/wps/StreetAddress;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdko:Lcom/skyhookwireless/wps/StreetAddress;

    return-object v0
.end method

.method protected setBearing(D)V
    .locals 0

    iput-wide p1, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkn:D

    return-void
.end method

.method protected setHPE(I)V
    .locals 0

    iput p1, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkj:I

    return-void
.end method

.method protected setNAP(I)V
    .locals 0

    iput p1, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkk:I

    return-void
.end method

.method protected setSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdkm:D

    return-void
.end method

.method public setStreetAddress(Lcom/skyhookwireless/wps/StreetAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdko:Lcom/skyhookwireless/wps/StreetAddress;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0xa

    const-wide/high16 v6, 0x4024

    const-wide v4, 0x416312d000000000L

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/WPSLocation;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/WPSLocation;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getHPE()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/WPSLocation;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getNAP()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getNCell()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/WPSLocation;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getSpeed()D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    div-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/WPSLocation;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getBearing()D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    div-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/WPSLocation;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/WPSLocation;->z:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdko:Lcom/skyhookwireless/wps/StreetAddress;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/skyhookwireless/wps/WPSLocation;->_sdko:Lcom/skyhookwireless/wps/StreetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    sget v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    :cond_0
    return-object v1

    :cond_1
    const-string v2, ""

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/WPSLocation;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
