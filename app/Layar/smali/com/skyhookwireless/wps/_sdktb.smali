.class abstract Lcom/skyhookwireless/wps/_sdktb;
.super Ljava/lang/Object;


# direct methods
.method static _sdka(Lcom/skyhookwireless/wps/_sdkkb;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkd;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/wps/_sdkdb;
    .locals 20

    sget v4, Lcom/skyhookwireless/wps/Location;->_sdki:I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/16 p0, 0x0

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkkb;->_sdkc()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v5

    if-nez v5, :cond_2

    move-object/from16 p0, p2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v6

    invoke-virtual {v5}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/skyhookwireless/wps/_sdktb;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;)Z

    move-result v7

    invoke-virtual {v6, v5}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v8

    const-wide/16 v10, 0x4e20

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    move-object/from16 p0, p2

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v6}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v8

    const-wide/16 v10, 0x4e20

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    const/16 p0, 0x0

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    sget-object v9, Lcom/skyhookwireless/wps/_sdkub;->_sdka:[I

    invoke-virtual/range {p3 .. p3}, Lcom/skyhookwireless/wps/_sdkd;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :cond_5
    :goto_1
    invoke-virtual {v6, v5}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v5

    int-to-long v9, v8

    cmp-long v5, v5, v9

    if-lez v5, :cond_7

    move-object/from16 p0, p2

    goto :goto_0

    :pswitch_0
    if-eqz v7, :cond_6

    const/16 v8, 0x2710

    if-eqz v4, :cond_5

    :cond_6
    const/16 v8, 0x1f40

    if-eqz v4, :cond_5

    :pswitch_1
    const/16 v8, 0x2710

    if-eqz v4, :cond_5

    :pswitch_2
    const/16 v8, 0x1770

    goto :goto_1

    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v9, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/skyhookwireless/wps/_sdkkb;->_sdkb(Lcom/skyhookwireless/_sdkub;J)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    sget-object v9, Lcom/skyhookwireless/wps/_sdkd;->BEARING:Lcom/skyhookwireless/wps/_sdkd;

    if-nez v4, :cond_25

    move-object/from16 v0, p3

    move-object v1, v9

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getBearing()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-eqz v9, :cond_8

    :cond_9
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_8

    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v6, 0x2

    move/from16 v0, p0

    move v1, v6

    if-ge v0, v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object p0

    goto/16 :goto_0

    :cond_b
    sget-object p0, Lcom/skyhookwireless/wps/_sdkd;->BEARING:Lcom/skyhookwireless/wps/_sdkd;

    move-object/from16 p1, p3

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_f

    const/16 p0, 0x0

    const/16 p1, 0x0

    move/from16 v6, p0

    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    move/from16 v0, p1

    move/from16 v1, p0

    if-ge v0, v1, :cond_24

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getBearing()D

    move-result-wide v9

    const-wide v11, 0x4056800000000000L

    cmpg-double p0, v9, v11

    if-nez v4, :cond_d

    if-ltz p0, :cond_c

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getBearing()D

    move-result-wide v9

    const-wide v11, 0x4070e00000000000L

    cmpl-double p0, v9, v11

    if-lez p0, :cond_23

    :cond_c
    add-int/lit8 p0, v6, 0x1

    :goto_4
    add-int/lit8 p1, p1, 0x1

    if-eqz v4, :cond_22

    :cond_d
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    move/from16 v0, p0

    move/from16 v1, p1

    if-lt v0, v1, :cond_f

    const/16 p0, 0x0

    move/from16 p1, p0

    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    move/from16 v0, p1

    move/from16 v1, p0

    if-ge v0, v1, :cond_f

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/WPSLocation;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/WPSLocation;->getBearing()D

    move-result-wide v9

    if-nez v4, :cond_21

    const-wide v11, 0x4066800000000000L

    cmpl-double v6, v9, v11

    if-lez v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/WPSLocation;->getBearing()D

    move-result-wide v9

    const-wide v11, 0x4076800000000000L

    sub-double/2addr v9, v11

    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/wps/WPSLocation;->setBearing(D)V

    :cond_e
    add-int/lit8 p0, p1, 0x1

    if-eqz v4, :cond_20

    :cond_f
    const-wide/16 p0, 0x0

    :goto_7
    sget-object v6, Lcom/skyhookwireless/wps/_sdkub;->_sdka:[I

    invoke-virtual/range {p3 .. p3}, Lcom/skyhookwireless/wps/_sdkd;->ordinal()I

    move-result p3

    aget p3, v6, p3

    packed-switch p3, :pswitch_data_1

    :cond_10
    :goto_8
    :pswitch_3
    move-object/from16 p0, p2

    goto/16 :goto_0

    :pswitch_4
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    if-eqz v7, :cond_1f

    const/16 p3, 0x0

    move-wide v6, v11

    move-wide/from16 v11, p0

    move/from16 p1, p3

    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    move/from16 v0, p1

    move/from16 v1, p0

    if-ge v0, v1, :cond_11

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v13

    add-double/2addr v9, v13

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLongitude()D

    move-result-wide v13

    add-double/2addr v6, v13

    const-wide/high16 v13, 0x3ff0

    add-double/2addr v11, v13

    add-int/lit8 p0, p1, 0x1

    if-nez v4, :cond_14

    if-eqz v4, :cond_1e

    :cond_11
    move-wide/from16 p0, v6

    move-wide v6, v9

    move-wide v9, v11

    if-eqz v4, :cond_15

    :goto_a
    const/16 p3, 0x0

    move-wide v11, v9

    move-wide v9, v6

    move-wide/from16 v6, p0

    move/from16 p1, p3

    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    move/from16 v0, p1

    move/from16 v1, p0

    if-ge v0, v1, :cond_14

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object p0

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v13

    div-int/lit8 p0, v8, 0x2

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v15, v0

    cmp-long p0, v13, v15

    if-nez v4, :cond_16

    if-gtz p0, :cond_12

    const-wide v15, 0x3fa47ae147ae147bL

    move-wide v0, v13

    long-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    const-wide v17, 0x408f400000000000L

    div-double v15, v15, v17

    const-wide v17, 0x3fb47ae147ae147bL

    add-double v15, v15, v17

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v17

    mul-double v17, v17, v15

    add-double v9, v9, v17

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLongitude()D

    move-result-wide v17

    mul-double v17, v17, v15

    add-double v6, v6, v17

    add-double/2addr v11, v15

    if-eqz v4, :cond_13

    :cond_12
    div-int/lit8 p0, v8, 0x2

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v15, v0

    cmp-long p0, v13, v15

    if-lez p0, :cond_14

    int-to-long v15, v8

    cmp-long p0, v13, v15

    if-gez p0, :cond_14

    const-wide v15, -0x405b851eb851eb85L

    long-to-double v13, v13

    mul-double/2addr v13, v15

    const-wide v15, 0x3fd999999999999aL

    add-double/2addr v13, v15

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v9, v15

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLongitude()D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v6, v15

    add-double/2addr v11, v13

    :cond_13
    add-int/lit8 p0, p1, 0x1

    if-eqz v4, :cond_1d

    :cond_14
    move-wide/from16 p0, v6

    move-wide v6, v9

    move-wide v9, v11

    :cond_15
    const-wide/16 v11, 0x0

    cmpl-double p3, v9, v11

    move-wide v11, v9

    move-wide v9, v6

    move-wide/from16 v6, p0

    move/from16 p0, p3

    :cond_16
    if-eqz p0, :cond_10

    div-double p0, v9, v11

    div-double/2addr v6, v11

    move-object/from16 v0, p2

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkdb;->setLatitude(D)V

    move-object/from16 v0, p2

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkdb;->setLongitude(D)V

    if-eqz v4, :cond_10

    move-wide/from16 p0, v11

    :pswitch_5
    const-wide/16 v6, 0x0

    const/16 p3, 0x0

    move-wide/from16 v9, p0

    move/from16 p1, p3

    :goto_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    move/from16 v0, p1

    move/from16 v1, p0

    if-ge v0, v1, :cond_19

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object p0

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v11

    div-int/lit8 p0, v8, 0x2

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v13, v0

    cmp-long p0, v11, v13

    if-nez v4, :cond_1c

    if-gtz p0, :cond_17

    const-wide v13, 0x3fbc28f5c28f5c29L

    long-to-double v15, v11

    mul-double/2addr v13, v15

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getBearing()D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v6, v15

    add-double/2addr v9, v13

    if-eqz v4, :cond_18

    :cond_17
    div-int/lit8 p0, v8, 0x2

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v13, v0

    cmp-long p0, v11, v13

    if-lez p0, :cond_19

    int-to-long v13, v8

    cmp-long p0, v11, v13

    if-gez p0, :cond_19

    const-wide v13, -0x4043d70a3d70a3d7L

    long-to-double v11, v11

    mul-double/2addr v11, v13

    const-wide v13, 0x408f400000000000L

    div-double/2addr v11, v13

    const-wide v13, 0x3fe51eb851eb851fL

    add-double/2addr v11, v13

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkdb;->getBearing()D

    move-result-wide v13

    mul-double/2addr v13, v11

    add-double/2addr v6, v13

    add-double/2addr v9, v11

    :cond_18
    add-int/lit8 p0, p1, 0x1

    if-eqz v4, :cond_1b

    :cond_19
    move-wide/from16 p0, v6

    move-wide/from16 p3, v9

    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    move/from16 v19, v4

    move-wide/from16 v4, p3

    move-wide/from16 p3, p0

    move/from16 p0, v19

    :goto_d
    if-eqz p0, :cond_10

    div-double p0, p3, v4

    const-wide/16 p3, 0x0

    cmpg-double p3, p0, p3

    if-gez p3, :cond_1a

    const-wide p3, 0x40768028f5c28f5cL

    add-double p0, p0, p3

    :cond_1a
    move-object/from16 v0, p2

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkdb;->setBearing(D)V

    goto/16 :goto_8

    :cond_1b
    move/from16 p1, p0

    goto/16 :goto_c

    :cond_1c
    move-wide/from16 p3, v6

    move-wide v4, v9

    goto :goto_d

    :cond_1d
    move/from16 p1, p0

    goto/16 :goto_b

    :cond_1e
    move/from16 p1, p0

    goto/16 :goto_9

    :cond_1f
    move-wide v6, v9

    move-wide/from16 v9, p0

    move-wide/from16 p0, v11

    goto/16 :goto_a

    :cond_20
    move/from16 p1, p0

    goto/16 :goto_6

    :cond_21
    move-wide/from16 p0, v9

    goto/16 :goto_7

    :cond_22
    move/from16 v6, p0

    goto/16 :goto_3

    :cond_23
    move/from16 p0, v6

    goto/16 :goto_4

    :cond_24
    move/from16 p0, v6

    goto/16 :goto_5

    :cond_25
    move-object/from16 p0, v9

    move-object/from16 p1, p3

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method static _sdka(Lcom/skyhookwireless/wps/_sdkdb;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getSpeed()D

    move-result-wide v0

    const-wide v2, 0x4001c71c71c71c72L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
