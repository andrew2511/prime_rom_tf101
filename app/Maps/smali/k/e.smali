.class public Lk/e;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([IIIII)I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-gez p3, :cond_0

    move v0, v1

    :goto_0
    if-gez p4, :cond_1

    :goto_1
    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    aget v0, p0, v0

    return v0

    :cond_0
    if-lt p3, p1, :cond_3

    sub-int v0, p1, v2

    goto :goto_0

    :cond_1
    if-lt p4, p2, :cond_2

    sub-int v1, p2, v2

    goto :goto_1

    :cond_2
    move v1, p4

    goto :goto_1

    :cond_3
    move v0, p3

    goto :goto_0
.end method

.method public static a(Lk/l;)Lk/l;
    .locals 10

    const/4 v2, 0x0

    invoke-interface {p0}, Lk/l;->f()I

    move-result v6

    invoke-interface {p0}, Lk/l;->e()I

    move-result v7

    shl-int/lit8 v0, v6, 0x1

    shl-int/lit8 v1, v7, 0x1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    shl-int/lit8 v3, v6, 0x2

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v7}, Lk/l;->a([IIIIIII)V

    shl-int/lit8 v0, v6, 0x1

    shl-int/lit8 v3, v7, 0x1

    move v4, v2

    move v5, v2

    :goto_0
    if-ge v4, v3, :cond_1

    const/4 v6, 0x1

    sub-int v6, v0, v6

    :goto_1
    if-ltz v6, :cond_0

    add-int v7, v5, v6

    shr-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v5

    aget v8, v1, v8

    add-int/lit8 v9, v7, -0x1

    aput v8, v1, v7

    aput v8, v1, v9

    add-int/lit8 v6, v6, -0x2

    goto :goto_1

    :cond_0
    add-int v6, v5, v0

    invoke-static {v1, v5, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v4

    invoke-virtual {v4}, Lac/m;->w()Lk/i;

    move-result-object v4

    invoke-interface {v4, v1, v0, v3, v2}, Lk/i;->a([IIIZ)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lk/l;IIIIIII)Lk/l;
    .locals 17

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    invoke-interface/range {p0 .. p0}, Lk/l;->e()I

    move-result v5

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_1

    invoke-interface/range {p0 .. p0}, Lk/l;->f()I

    move-result v5

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_1

    mul-int/lit8 v5, p5, 0x2

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_0

    mul-int/lit8 v5, p5, 0x2

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_0

    const/4 v5, 0x1

    move/from16 v0, p7

    move v1, v5

    if-ne v0, v1, :cond_0

    invoke-static/range {p0 .. p0}, Lk/e;->b(Lk/l;)Lk/l;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    mul-int/lit8 v5, p3, 0x2

    move v0, v5

    move/from16 v1, p5

    if-ne v0, v1, :cond_1

    mul-int/lit8 v5, p4, 0x2

    move v0, v5

    move/from16 v1, p6

    if-ne v0, v1, :cond_1

    if-nez p7, :cond_1

    invoke-static/range {p0 .. p0}, Lk/e;->a(Lk/l;)Lk/l;

    move-result-object p0

    goto :goto_0

    :cond_1
    mul-int v5, p5, p6

    new-array v13, v5, [I

    mul-int v5, p3, p4

    new-array v6, v5, [I

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move/from16 v8, p3

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-interface/range {v5 .. v12}, Lk/l;->a([IIIIIII)V

    const/16 p0, 0x0

    shl-int/lit8 p1, p3, 0x10

    div-int v11, p1, p5

    shl-int/lit8 p1, p4, 0x10

    div-int p1, p1, p6

    const/16 p2, 0x0

    move/from16 v10, p0

    move/from16 p0, p2

    :goto_1
    move/from16 v0, p0

    move/from16 v1, p6

    if-ge v0, v1, :cond_2

    const/4 v9, 0x0

    const/4 v12, 0x0

    mul-int v14, p0, p5

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v15, p5

    move/from16 v16, p7

    invoke-static/range {v6 .. v16}, Lk/e;->a([IIIIIII[IIII)V

    add-int p2, v10, p1

    add-int/lit8 p0, p0, 0x1

    move/from16 v10, p2

    goto :goto_1

    :cond_2
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lac/m;->w()Lk/i;

    move-result-object p0

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_3

    const/16 p1, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lk/i;->a([IIIZ)Lk/l;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/16 p1, 0x0

    goto :goto_2
.end method

.method public static a([IIIIIII[IIII)V
    .locals 40

    and-int/lit8 v5, p10, 0x2

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    and-int/lit8 p10, p10, 0x1

    if-eqz p10, :cond_7

    shr-int/lit8 p10, p5, 0x10

    add-int/lit8 p10, p10, 0x1

    shr-int/lit8 v6, p6, 0x10

    add-int/lit8 v6, v6, 0x1

    div-int v7, p5, p10

    div-int v8, p6, v6

    mul-int v9, p10, v6

    move/from16 v38, p9

    move/from16 p9, p3

    move/from16 p3, v38

    move/from16 v39, p4

    move/from16 p4, p8

    move/from16 p8, v39

    :goto_1
    add-int/lit8 v10, p3, -0x1

    if-lez p3, :cond_5

    const/16 p3, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v15, p9

    move/from16 p9, v13

    move/from16 v13, p3

    move/from16 p3, v14

    move/from16 v14, p8

    move/from16 v38, v12

    move v12, v11

    move/from16 v11, v38

    :goto_2
    move/from16 v0, p3

    move v1, v6

    if-ge v0, v1, :cond_3

    const/16 v16, 0x0

    move/from16 v17, v15

    move/from16 v38, p9

    move/from16 p9, v16

    move/from16 v16, v13

    move v13, v12

    move v12, v11

    move/from16 v11, v38

    :goto_3
    move/from16 v0, p9

    move/from16 v1, p10

    if-ge v0, v1, :cond_2

    shr-int/lit8 v18, v17, 0x10

    shr-int/lit8 v19, v14, 0x10

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lk/e;->a([IIIII)I

    move-result v20

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lk/e;->a([IIIII)I

    move-result v21

    add-int/lit8 v22, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lk/e;->a([IIIII)I

    move-result v22

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lk/e;->a([IIIII)I

    move-result v18

    const v19, 0xffff

    and-int v19, v19, v17

    shr-int/lit8 v19, v19, 0x8

    const v23, 0xffff

    and-int v23, v23, v14

    shr-int/lit8 v23, v23, 0x8

    const/16 v24, 0x100

    sub-int v24, v24, v19

    const/16 v25, 0x100

    sub-int v25, v25, v23

    mul-int v24, v24, v25

    const/16 v25, 0x100

    sub-int v25, v25, v23

    mul-int v25, v25, v19

    const/16 v26, 0x100

    sub-int v26, v26, v19

    mul-int v26, v26, v23

    mul-int v19, v19, v23

    shr-int/lit8 v23, v20, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shr-int/lit8 v27, v20, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    shr-int/lit8 v29, v21, 0x10

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    shr-int/lit8 v30, v21, 0x8

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    shr-int/lit8 v32, v22, 0x10

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    shr-int/lit8 v33, v22, 0x8

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    shr-int/lit8 v35, v18, 0x10

    move/from16 v0, v35

    and-int/lit16 v0, v0, 0xff

    move/from16 v35, v0

    shr-int/lit8 v36, v18, 0x8

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    mul-int v23, v23, v24

    mul-int v32, v32, v26

    add-int v23, v23, v32

    mul-int v29, v29, v25

    add-int v23, v23, v29

    mul-int v29, v35, v19

    add-int v23, v23, v29

    add-int v13, v13, v23

    mul-int v23, v27, v24

    mul-int v27, v33, v26

    add-int v23, v23, v27

    mul-int v27, v30, v25

    add-int v23, v23, v27

    mul-int v27, v36, v19

    add-int v23, v23, v27

    add-int v12, v12, v23

    mul-int v23, v28, v24

    mul-int v27, v34, v26

    add-int v23, v23, v27

    mul-int v27, v31, v25

    add-int v23, v23, v27

    mul-int v27, v37, v19

    add-int v23, v23, v27

    add-int v11, v11, v23

    if-eqz v5, :cond_0

    shr-int/lit8 v16, v20, 0x18

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shr-int/lit8 v20, v21, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shr-int/lit8 v21, v22, 0x18

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shr-int/lit8 v18, v18, 0x18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    mul-int v16, v16, v24

    mul-int v21, v21, v26

    add-int v16, v16, v21

    mul-int v20, v20, v25

    add-int v16, v16, v20

    mul-int v18, v18, v19

    add-int v16, v16, v18

    :cond_0
    add-int v17, v17, v7

    add-int/lit8 p9, p9, 0x1

    goto/16 :goto_3

    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_2
    add-int p9, v14, v8

    add-int/lit8 p3, p3, 0x1

    move/from16 v14, p9

    move/from16 p9, v11

    move v11, v12

    move v12, v13

    move/from16 v13, v16

    goto/16 :goto_2

    :cond_3
    div-int p3, v12, v9

    const/high16 v12, 0xff

    and-int p3, p3, v12

    div-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x8

    const v12, 0xff00

    and-int/2addr v11, v12

    or-int p3, p3, v11

    div-int p9, p9, v9

    shr-int/lit8 p9, p9, 0x10

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0xff

    move/from16 p9, v0

    or-int p3, p3, p9

    add-int/lit8 p9, p4, 0x1

    if-eqz v5, :cond_4

    div-int v11, v13, v9

    shl-int/lit8 v11, v11, 0x8

    const/high16 v12, -0x100

    and-int/2addr v11, v12

    :goto_4
    or-int p3, p3, v11

    aput p3, p7, p4

    add-int p3, v15, p5

    add-int p4, p8, p6

    move/from16 p8, p4

    move/from16 p4, p9

    move/from16 p9, p3

    move/from16 p3, v10

    goto/16 :goto_1

    :cond_4
    const/high16 v11, -0x100

    goto :goto_4

    :goto_5
    add-int/lit8 p10, p3, -0x1

    if-lez p3, :cond_5

    shr-int/lit8 p3, p9, 0x10

    shr-int/lit8 v5, p8, 0x10

    if-ltz p3, :cond_6

    if-ltz v5, :cond_6

    move/from16 v0, p3

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    move v0, v5

    move/from16 v1, p2

    if-ge v0, v1, :cond_6

    add-int/lit8 v6, p4, 0x1

    mul-int v5, v5, p1

    add-int p3, p3, v5

    aget p3, p0, p3

    aput p3, p7, p4

    move/from16 p3, v6

    :goto_6
    add-int p4, p9, p5

    add-int p8, p8, p6

    move/from16 p9, p4

    move/from16 p4, p3

    move/from16 p3, p10

    goto :goto_5

    :cond_5
    return-void

    :cond_6
    move/from16 p3, p4

    goto :goto_6

    :cond_7
    move/from16 v38, p9

    move/from16 p9, p3

    move/from16 p3, v38

    move/from16 v39, p4

    move/from16 p4, p8

    move/from16 p8, v39

    goto :goto_5
.end method

.method public static b(Lk/l;)Lk/l;
    .locals 24

    invoke-interface/range {p0 .. p0}, Lk/l;->f()I

    move-result v10

    invoke-interface/range {p0 .. p0}, Lk/l;->e()I

    move-result v14

    mul-int v8, v10, v14

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    invoke-interface/range {v0 .. v7}, Lk/l;->a([IIIIIII)V

    shr-int/lit8 p0, v10, 0x1

    shr-int/lit8 v9, v14, 0x1

    mul-int v11, p0, v9

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v23, v14

    move v14, v12

    move/from16 v12, v23

    :goto_0
    if-ge v12, v9, :cond_1

    const/4 v15, 0x0

    :goto_1
    move v0, v15

    move/from16 v1, p0

    if-ge v0, v1, :cond_0

    add-int v16, v13, v15

    aget v17, v8, v16

    add-int/lit8 v18, v16, 0x1

    aget v18, v8, v18

    add-int v19, v16, v10

    aget v19, v8, v19

    add-int v16, v16, v10

    add-int/lit8 v16, v16, 0x1

    aget v16, v8, v16

    const/high16 v20, 0xff

    and-int v20, v20, v17

    const/high16 v21, 0xff

    and-int v21, v21, v18

    add-int v20, v20, v21

    const/high16 v21, 0xff

    and-int v21, v21, v19

    add-int v20, v20, v21

    const/high16 v21, 0xff

    and-int v21, v21, v16

    add-int v20, v20, v21

    shr-int/lit8 v20, v20, 0x2

    const v21, 0xff00

    and-int v21, v21, v17

    const v22, 0xff00

    and-int v22, v22, v18

    add-int v21, v21, v22

    const v22, 0xff00

    and-int v22, v22, v19

    add-int v21, v21, v22

    const v22, 0xff00

    and-int v22, v22, v16

    add-int v21, v21, v22

    shr-int/lit8 v21, v21, 0x2

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int v16, v16, v17

    shr-int/lit8 v16, v16, 0x2

    add-int v17, v14, v15

    const/high16 v18, 0xff

    and-int v18, v18, v20

    const v19, 0xff00

    and-int v19, v19, v21

    or-int v18, v18, v19

    or-int v16, v16, v18

    aput v16, v11, v17

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_0
    add-int v14, v14, p0

    shl-int/lit8 v15, v10, 0x1

    add-int/2addr v13, v15

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v8

    invoke-virtual {v8}, Lac/m;->w()Lk/i;

    move-result-object v8

    const/4 v10, 0x0

    move-object v0, v8

    move-object v1, v11

    move/from16 v2, p0

    move v3, v9

    move v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Lk/i;->a([IIIZ)Lk/l;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lk/l;)[B
    .locals 12

    const/4 v9, 0x4

    const/4 v2, 0x0

    invoke-interface {p0}, Lk/l;->f()I

    move-result v3

    invoke-interface {p0}, Lk/l;->e()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-interface/range {v0 .. v7}, Lk/l;->a([IIIIIII)V

    mul-int v0, v3, v7

    new-array v0, v0, [I

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_1

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_0

    mul-int v6, v4, v3

    add-int/2addr v6, v5

    const/4 v8, 0x1

    sub-int v8, v7, v8

    sub-int/2addr v8, v4

    mul-int/2addr v8, v3

    add-int/2addr v8, v5

    aget v6, v1, v6

    aput v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const/16 v4, 0x15

    shr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x14

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x13

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x12

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x19

    shr-int/lit8 v5, v7, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x18

    shr-int/lit8 v5, v7, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x17

    shr-int/lit8 v5, v7, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x16

    and-int/lit16 v5, v7, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    mul-int/lit8 v4, v3, 0x3

    rem-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_2

    move v4, v2

    :goto_2
    array-length v5, v1

    mul-int/lit8 v6, v3, 0x3

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    mul-int v6, v4, v7

    add-int/2addr v5, v6

    const/4 v6, 0x5

    shr-int/lit8 v7, v5, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    const/4 v6, 0x3

    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    const/4 v6, 0x2

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    new-array v5, v5, [B

    array-length v6, v1

    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    move v6, v2

    move v7, v1

    move v1, v2

    :goto_3
    array-length v8, v0

    if-ge v1, v8, :cond_4

    aget v8, v0, v1

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aget v9, v0, v1

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aget v10, v0, v1

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    add-int/lit8 v11, v7, 0x1

    aput-byte v10, v5, v7

    add-int/lit8 v7, v11, 0x1

    aput-byte v9, v5, v11

    add-int/lit8 v9, v7, 0x1

    aput-byte v8, v5, v7

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v3, :cond_5

    if-eqz v4, :cond_5

    move v6, v2

    move v7, v9

    :goto_4
    if-ge v6, v4, :cond_3

    add-int/lit8 v8, v7, 0x1

    aput-byte v2, v5, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_4

    :cond_2
    rem-int/lit8 v4, v4, 0x4

    sub-int v4, v9, v4

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object v5

    :cond_5
    move v7, v9

    goto :goto_5

    nop

    :array_0
    .array-data 0x1
        0x42t
        0x4dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x36t
        0x0t
        0x0t
        0x0t
        0x28t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x18t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static d(Lk/l;)Lk/l;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->w()Lk/i;

    move-result-object v0

    invoke-interface {p0}, Lk/l;->f()I

    move-result v1

    invoke-interface {p0}, Lk/l;->e()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lk/i;->a(II)Lk/l;

    move-result-object v0

    invoke-interface {v0}, Lk/l;->d()Lk/m;

    move-result-object v1

    invoke-interface {v1, p0, v3, v3}, Lk/m;->a(Lk/l;II)V

    return-object v0
.end method
