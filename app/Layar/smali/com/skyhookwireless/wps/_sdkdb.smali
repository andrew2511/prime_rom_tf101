.class public Lcom/skyhookwireless/wps/_sdkdb;
.super Lcom/skyhookwireless/wps/WPSLocation;

# interfaces
.implements Lcom/skyhookwireless/_sdkw;


# static fields
.field private static final serialVersionUID:J = -0x5b6717a95e9758d0L

.field private static final z:[Ljava/lang/String;


# instance fields
.field private _sdkq:I

.field private _sdkr:Lcom/skyhookwireless/_sdkub;

.field private _sdks:Z

.field private _sdkt:Z

.field private _sdku:Z

.field private _sdkv:Z

.field private _sdkw:Z

.field private _sdkx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x2a

    const/16 v12, 0x1f

    const/4 v11, 0x7

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "?\u0001Kt;~\u001dCs\u0002{\u000c\u0017"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_17

    move v3, v9

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

    const/16 v7, 0x77

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

    aput-object v1, v0, v9

    const-string v1, "?\u001aKs\u0004\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_16

    move v3, v9

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

    const/16 v7, 0x77

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

    aput-object v1, v0, v10

    const/4 v1, 0x2

    const-string v2, "?\u0001Kt#v\u0004O:"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_15

    move v4, v9

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

    const/16 v8, 0x77

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

    const-string v2, "?\u0001Kt$o\u000cOcJ"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_14

    move v4, v9

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

    const/16 v8, 0x77

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

    const-string v2, "?\u0001Kt?O,\u0017"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_13

    move v4, v9

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

    const/16 v8, 0x77

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

    const-string v2, "?\u0001Kt;p\u0007Mn\u0003j\rO:"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_12

    move v4, v9

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

    const/16 v8, 0x77

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

    const-string v2, "?\u0001Kt6s\u001dCs\u0002{\u000c\u0017"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_11

    move v4, v9

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

    const/16 v8, 0x77

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

    const-string v1, "?\u0001Kt5z\u0008Xn\u0019xT"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_10

    move v3, v9

    :cond_e
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_15
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_7

    const/16 v7, 0x77

    :goto_16
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_f

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_15

    :cond_f
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_17
    if-gt v2, v3, :cond_e

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    sput-object v0, Lcom/skyhookwireless/wps/_sdkdb;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v12

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x69

    goto/16 :goto_1

    :pswitch_2
    move v7, v13

    goto/16 :goto_1

    :pswitch_3
    move v7, v11

    goto/16 :goto_1

    :pswitch_4
    move v7, v12

    goto/16 :goto_4

    :pswitch_5
    const/16 v7, 0x69

    goto/16 :goto_4

    :pswitch_6
    move v7, v13

    goto/16 :goto_4

    :pswitch_7
    move v7, v11

    goto/16 :goto_4

    :pswitch_8
    move v8, v12

    goto/16 :goto_7

    :pswitch_9
    const/16 v8, 0x69

    goto/16 :goto_7

    :pswitch_a
    move v8, v13

    goto/16 :goto_7

    :pswitch_b
    move v8, v11

    goto/16 :goto_7

    :pswitch_c
    move v8, v12

    goto/16 :goto_a

    :pswitch_d
    const/16 v8, 0x69

    goto/16 :goto_a

    :pswitch_e
    move v8, v13

    goto/16 :goto_a

    :pswitch_f
    move v8, v11

    goto/16 :goto_a

    :pswitch_10
    move v8, v12

    goto/16 :goto_d

    :pswitch_11
    const/16 v8, 0x69

    goto/16 :goto_d

    :pswitch_12
    move v8, v13

    goto/16 :goto_d

    :pswitch_13
    move v8, v11

    goto/16 :goto_d

    :pswitch_14
    move v8, v12

    goto/16 :goto_10

    :pswitch_15
    const/16 v8, 0x69

    goto/16 :goto_10

    :pswitch_16
    move v8, v13

    goto/16 :goto_10

    :pswitch_17
    move v8, v11

    goto/16 :goto_10

    :pswitch_18
    move v8, v12

    goto/16 :goto_13

    :pswitch_19
    const/16 v8, 0x69

    goto/16 :goto_13

    :pswitch_1a
    move v8, v13

    goto/16 :goto_13

    :pswitch_1b
    move v8, v11

    goto/16 :goto_13

    :pswitch_1c
    move v7, v12

    goto :goto_16

    :pswitch_1d
    const/16 v7, 0x69

    goto :goto_16

    :pswitch_1e
    move v7, v13

    goto/16 :goto_16

    :pswitch_1f
    move v7, v11

    goto/16 :goto_16

    :cond_10
    move v3, v9

    goto :goto_17

    :cond_11
    move v4, v9

    goto/16 :goto_14

    :cond_12
    move v4, v9

    goto/16 :goto_11

    :cond_13
    move v4, v9

    goto/16 :goto_e

    :cond_14
    move v4, v9

    goto/16 :goto_b

    :cond_15
    move v4, v9

    goto/16 :goto_8

    :cond_16
    move v3, v9

    goto/16 :goto_5

    :cond_17
    move v3, v9

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

.method public constructor <init>()V
    .locals 18

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v17}, Lcom/skyhookwireless/wps/WPSLocation;-><init>(DDJIIIDDLcom/skyhookwireless/wps/StreetAddress;Lcom/skyhookwireless/wps/_sdkpb;)V

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skyhookwireless/wps/_sdkdb;->_sdkx:Z

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skyhookwireless/wps/_sdkdb;->_sdkw:Z

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skyhookwireless/wps/_sdkdb;->_sdkv:Z

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skyhookwireless/wps/_sdkdb;->_sdku:Z

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skyhookwireless/wps/_sdkdb;->_sdkt:Z

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skyhookwireless/wps/_sdkdb;->_sdks:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/skyhookwireless/wps/WPSLocation;
    .locals 1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/skyhookwireless/wps/_sdkdb;
    .locals 0

    invoke-super {p0}, Lcom/skyhookwireless/wps/WPSLocation;->clone()Lcom/skyhookwireless/wps/WPSLocation;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v0

    return-object v0
.end method

.method public getAge()Lcom/skyhookwireless/_sdkub;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkr:Lcom/skyhookwireless/_sdkub;

    return-object v0
.end method

.method public getSatellites()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkq:I

    return v0
.end method

.method public hasBearing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdks:Z

    return v0
.end method

.method public hasHPE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkt:Z

    return v0
.end method

.method public hasLatitude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdku:Z

    return v0
.end method

.method public hasLongitude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkv:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkw:Z

    return v0
.end method

.method public hasTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkx:Z

    return v0
.end method

.method public isExtrapolated()Z
    .locals 1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getNAP()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getNCell()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getSatellites()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAge(Lcom/skyhookwireless/_sdkub;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkr:Lcom/skyhookwireless/_sdkub;

    return-void
.end method

.method public setBearing(D)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/skyhookwireless/wps/WPSLocation;->setBearing(D)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdks:Z

    return-void
.end method

.method public setHPE(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/skyhookwireless/wps/WPSLocation;->setHPE(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkt:Z

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/skyhookwireless/wps/WPSLocation;->setLatitude(D)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdku:Z

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/skyhookwireless/wps/WPSLocation;->setLongitude(D)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkv:Z

    return-void
.end method

.method public setNAP(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/skyhookwireless/wps/WPSLocation;->setNAP(I)V

    return-void
.end method

.method public setSatellites(I)V
    .locals 0

    iput p1, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkq:I

    return-void
.end method

.method public setSpeed(D)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/skyhookwireless/wps/WPSLocation;->setSpeed(D)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkw:Z

    return-void
.end method

.method public setTime(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/skyhookwireless/wps/WPSLocation;->setTime(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkx:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/skyhookwireless/wps/WPSLocation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkdb;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkdb;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->hasAltitude()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkdb;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkdb;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkdb;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdku:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkdb;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkdb;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkdb;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkx:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
