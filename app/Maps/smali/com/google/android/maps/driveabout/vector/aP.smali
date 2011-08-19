.class public Lcom/google/android/maps/driveabout/vector/aP;
.super Lcom/google/android/maps/driveabout/vector/S;


# instance fields
.field private A:I

.field private B:F

.field private final C:I

.field private D:Z

.field private E:I

.field private F:Z

.field private final G:Ljava/lang/String;

.field private final H:F

.field private final I:[F

.field private final i:Ljava/lang/String;

.field private final j:Lcom/google/android/maps/driveabout/vector/aw;

.field private final k:LG/m;

.field private l:LG/m;

.field private final m:F

.field private n:LG/t;

.field private o:[Lcom/google/android/maps/driveabout/vector/aD;

.field private final p:Lcom/google/android/maps/driveabout/vector/bk;

.field private q:Lcom/google/android/maps/driveabout/vector/p;

.field private final r:Lcom/google/android/maps/driveabout/vector/az;

.field private final s:Lcom/google/android/maps/driveabout/vector/az;

.field private t:Lcom/google/android/maps/driveabout/vector/az;

.field private u:Lcom/google/android/maps/driveabout/vector/br;

.field private v:Lcom/google/android/maps/driveabout/vector/ah;

.field private final w:F

.field private final x:F

.field private final y:F

.field private z:I


# direct methods
.method constructor <init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/r;IIZFFFILG/m;FFLcom/google/android/maps/driveabout/vector/aw;FLcom/google/android/maps/driveabout/vector/bk;)V
    .locals 10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move/from16 v6, p8

    move/from16 v7, p9

    move v8, p5

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/google/android/maps/driveabout/vector/S;-><init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;LG/r;FFIZ)V

    const/16 v2, 0x8

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->I:[F

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->G:Ljava/lang/String;

    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    mul-float v2, p16, p10

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    move/from16 v0, p6

    move-object v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->C:I

    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bk;

    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->w:F

    move/from16 v0, p13

    move-object v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->x:F

    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->y:F

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/aw;

    new-instance v2, Lcom/google/android/maps/driveabout/vector/az;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/az;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    new-instance v2, Lcom/google/android/maps/driveabout/vector/az;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/az;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->F:Z

    move/from16 v0, p11

    move-object v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->A:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->E:I

    mul-float v2, p16, p13

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->H:F

    return-void
.end method

.method static a(F[FI)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget v0, p1, p2

    sub-float v0, p0, v0

    cmpg-float v1, v0, v4

    if-gtz v1, :cond_3

    move v0, p2

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    :goto_1
    cmpl-float v2, v0, v4

    if-lez v2, :cond_2

    array-length v2, p1

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget v2, p1, v2

    sub-float v2, p0, v2

    cmpg-float v3, v2, v4

    if-gtz v3, :cond_0

    neg-float v2, v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    array-length v0, p1

    sub-int/2addr v0, v5

    goto :goto_0

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method static a(LG/m;)I
    .locals 3

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aa;->a:LG/Q;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/aa;->b:LG/Q;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, LG/m;->a(ILG/Q;)V

    invoke-virtual {p0, v1}, LG/m;->a(LG/Q;)V

    invoke-static {v0, v1}, LG/H;->b(LG/Q;LG/Q;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a(LG/r;ZI)I
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, LG/r;->c()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, LG/r;->c()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, LG/r;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/maps/driveabout/vector/S;->b(LG/r;I)I

    move-result v0

    goto :goto_0
.end method

.method static a(LG/m;FF)LG/m;
    .locals 11

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aa;->i:LG/Q;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/aa;->j:LG/Q;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/aa;->k:LG/Q;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/vector/aa;->l:LG/Q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, LG/m;->b()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    move v10, v7

    move v7, p1

    move p1, v10

    :goto_0
    if-ge p1, v6, :cond_0

    invoke-virtual {p0, p1}, LG/m;->b(I)F

    move-result v8

    sub-float/2addr v7, v8

    const v9, 0x38d1b717

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_1

    const v9, -0x472e48e9

    cmpg-float v9, v7, v9

    if-gez v9, :cond_0

    const/4 v4, 0x1

    const/high16 v9, 0x3f80

    div-float/2addr v7, v8

    add-float/2addr v7, v9

    invoke-virtual {p0, p1, v3}, LG/m;->a(ILG/Q;)V

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p0, v8, v2}, LG/m;->a(ILG/Q;)V

    invoke-static {v3, v2, v7, v0}, LG/Q;->a(LG/Q;LG/Q;FLG/Q;)V

    :cond_0
    move v7, p2

    move p2, p1

    :goto_1
    if-ge p2, v6, :cond_8

    invoke-virtual {p0, p2}, LG/m;->b(I)F

    move-result v8

    sub-float/2addr v7, v8

    const v9, 0x38d1b717

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_2

    const v6, 0x38d1b717

    cmpg-float v6, v7, v6

    if-gez v6, :cond_8

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {p0, p2, v3}, LG/m;->a(ILG/Q;)V

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {p0, v7, v2}, LG/m;->a(ILG/Q;)V

    invoke-static {v3, v2, v6, v1}, LG/Q;->a(LG/Q;LG/Q;FLG/Q;)V

    move v3, v5

    :goto_2
    add-int/lit8 p1, p1, 0x1

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    if-eqz v4, :cond_3

    const/4 v6, 0x1

    :goto_3
    add-int/2addr v5, v6

    if-eqz v3, :cond_4

    const/4 v6, 0x1

    :goto_4
    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    if-eqz v4, :cond_7

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v0, v5, v6}, LG/Q;->a([II)V

    move v0, v4

    :goto_5
    if-gt p1, p2, :cond_5

    invoke-virtual {p0, p1, v2}, LG/m;->a(ILG/Q;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v5, v0}, LG/Q;->a([II)V

    add-int/lit8 p1, p1, 0x1

    move v0, v4

    goto :goto_5

    :cond_1
    sub-float/2addr p2, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    add-int/lit8 p0, v0, 0x1

    invoke-virtual {v1, v5, v0}, LG/Q;->a([II)V

    :cond_6
    invoke-static {v5}, LG/m;->a([I)LG/m;

    move-result-object p0

    return-object p0

    :cond_7
    move v0, v6

    goto :goto_5

    :cond_8
    move v3, v5

    goto :goto_2
.end method

.method public static a(LG/V;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/m;ZFLcom/google/android/maps/driveabout/vector/aw;FLcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bk;)Lcom/google/android/maps/driveabout/vector/aP;
    .locals 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lcom/google/android/maps/driveabout/vector/aP;->a(LG/d;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/m;IZFFLcom/google/android/maps/driveabout/vector/aw;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bk;)Lcom/google/android/maps/driveabout/vector/aP;

    move-result-object p0

    return-object p0
.end method

.method private static a(LG/d;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/m;IZFFLcom/google/android/maps/driveabout/vector/aw;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bk;)Lcom/google/android/maps/driveabout/vector/aP;
    .locals 22

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v14

    invoke-virtual/range {p3 .. p3}, LG/m;->b()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    mul-float v4, p6, v14

    const v5, 0x3e4ccccd

    mul-float/2addr v4, v5

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, LG/m;->b(F)LG/m;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, LG/m;->b()I

    move-object/from16 v16, p3

    :goto_0
    move-object/from16 v0, p10

    move-object/from16 v1, p2

    move-object/from16 v2, p8

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;F)F

    move-result v20

    const/high16 p3, 0x3f80

    add-float p3, p3, v20

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v4

    move-object/from16 v0, p9

    move/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bF;->a(FF)F

    move-result p3

    const/4 v4, 0x0

    cmpl-float v4, v20, v4

    if-nez v4, :cond_0

    const/16 p0, 0x0

    :goto_1
    return-object p0

    :cond_0
    invoke-virtual/range {v16 .. v16}, LG/m;->d()F

    move-result v4

    cmpl-float p3, p3, v4

    if-lez p3, :cond_1

    const/16 p0, 0x0

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/google/android/maps/driveabout/vector/aP;

    invoke-interface/range {p0 .. p0}, LG/d;->h()LG/r;

    move-result-object v8

    invoke-interface/range {p0 .. p0}, LG/d;->l()I

    move-result v9

    const/high16 v12, -0x4080

    const/high16 v13, -0x4080

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/bF;->i()F

    move-result p3

    move/from16 v0, p3

    float-to-int v0, v0

    move v15, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v21, p10

    invoke-direct/range {v4 .. v21}, Lcom/google/android/maps/driveabout/vector/aP;-><init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/r;IIZFFFILG/m;FFLcom/google/android/maps/driveabout/vector/aw;FLcom/google/android/maps/driveabout/vector/bk;)V

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aP;->n()Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 p0, v4

    goto :goto_1

    :cond_3
    move-object/from16 v16, p3

    goto :goto_0
.end method

.method public static a(LG/i;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/m;IZFFLcom/google/android/maps/driveabout/vector/aw;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bk;)Lcom/google/android/maps/driveabout/vector/aP;
    .locals 1

    invoke-static/range {p0 .. p10}, Lcom/google/android/maps/driveabout/vector/aP;->a(LG/d;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/m;IZFFLcom/google/android/maps/driveabout/vector/aw;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bk;)Lcom/google/android/maps/driveabout/vector/aP;

    move-result-object v0

    return-object v0
.end method

.method private a(F)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aa;->a:LG/Q;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/aa;->b:LG/Q;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/aa;->c:LG/Q;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/vector/aa;->d:LG/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    invoke-virtual {v4}, LG/m;->b()I

    move-result v4

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:F

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, p1

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    mul-int/lit8 v6, v4, 0x2

    new-array v6, v6, [LG/Q;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    invoke-virtual {v7, v11, v3}, LG/m;->a(ILG/Q;)V

    move v7, v10

    :goto_0
    if-ge v7, v4, :cond_1

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    invoke-virtual {v8, v7, v2}, LG/m;->a(ILG/Q;)V

    invoke-static {v2, v3, v0}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    invoke-static {v0, v5, v1}, LG/H;->a(LG/Q;FLG/Q;)V

    invoke-virtual {v2, v1}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object v8

    aput-object v8, v6, v7

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v8, v7

    sub-int/2addr v8, v10

    invoke-virtual {v2, v1}, LG/Q;->e(LG/Q;)LG/Q;

    move-result-object v9

    aput-object v9, v6, v8

    if-ne v7, v10, :cond_0

    invoke-virtual {v3, v1}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object v8

    aput-object v8, v6, v11

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v8, v10

    invoke-virtual {v3, v1}, LG/Q;->e(LG/Q;)LG/Q;

    move-result-object v9

    aput-object v9, v6, v8

    :cond_0
    invoke-virtual {v3, v2}, LG/Q;->b(LG/Q;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, LG/t;

    invoke-direct {v0, v6}, LG/t;-><init>([LG/Q;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:LG/t;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;LG/m;F)V
    .locals 11

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aa;->a:LG/Q;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/aa;->b:LG/Q;

    invoke-virtual {p2}, LG/m;->b()I

    move-result v2

    const/4 v3, 0x1

    sub-int v3, v2, v3

    mul-int/lit8 v4, v3, 0x4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/vector/az;->a(I)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/vector/az;->a(I)V

    new-array v4, v3, [Lcom/google/android/maps/driveabout/vector/aD;

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:[Lcom/google/android/maps/driveabout/vector/aD;

    new-array v4, v2, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v0}, LG/m;->a(ILG/Q;)V

    const/4 v5, 0x0

    move v10, v5

    move-object v5, v0

    move v0, v10

    :goto_0
    if-ge v0, v3, :cond_0

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p2, v6, v1}, LG/m;->a(ILG/Q;)V

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:[Lcom/google/android/maps/driveabout/vector/aD;

    new-instance v7, Lcom/google/android/maps/driveabout/vector/aD;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v1, p3, v8}, Lcom/google/android/maps/driveabout/vector/aD;-><init>(LG/Q;LG/Q;FLcom/google/android/maps/driveabout/vector/bt;)V

    aput-object v7, v6, v0

    invoke-virtual {v5, v1}, LG/Q;->c(LG/Q;)F

    move-result v6

    add-int/lit8 v7, v0, 0x1

    aget v8, v4, v0

    add-float/2addr v6, v8

    aput v6, v4, v7

    add-int/lit8 v0, v0, 0x1

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bk;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/aw;

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:F

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v3, v5, v6}, Lcom/google/android/maps/driveabout/vector/bk;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FZ)[F

    move-result-object v0

    const/high16 v1, 0x3f80

    array-length v3, v0

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    aget v3, v0, v3

    div-float/2addr v1, v3

    const/4 v3, 0x0

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    aget v5, v0, v3

    mul-float/2addr v5, v1

    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f80

    array-length v3, v4

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    aget v3, v4, v3

    div-float/2addr v1, v3

    new-array v3, v2, [F

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_2

    aget v6, v4, v5

    mul-float/2addr v6, v1

    aput v6, v4, v5

    const/4 v6, 0x1

    sub-int v6, v2, v6

    sub-int/2addr v6, v5

    const/high16 v7, 0x3f80

    aget v8, v4, v5

    sub-float/2addr v7, v8

    aput v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v10, v6

    move v6, v1

    move v1, v10

    :goto_3
    if-ge v1, v2, :cond_3

    aget v7, v4, v1

    invoke-static {v7, v0, v6}, Lcom/google/android/maps/driveabout/vector/aP;->a(F[FI)I

    move-result v6

    aget v7, v0, v6

    aput v7, v4, v1

    aget v7, v3, v1

    invoke-static {v7, v0, v5}, Lcom/google/android/maps/driveabout/vector/aP;->a(F[FI)I

    move-result v5

    aget v7, v0, v5

    aput v7, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->a()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->b()F

    move-result v1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v2, :cond_4

    aget v6, v4, v5

    mul-float/2addr v6, v0

    sub-int v7, v2, v5

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aget v7, v3, v7

    mul-float/2addr v7, v0

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v8, v6, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v6, v7, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/aD;F)V
    .locals 7

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/aa;->a:LG/Q;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/aa;->b:LG/Q;

    invoke-virtual {p2, v2}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;)V

    iget-object v3, p3, Lcom/google/android/maps/driveabout/vector/aD;->a:LG/Q;

    invoke-static {v3, v2, v1}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->o()F

    move-result v2

    invoke-virtual {v1}, LG/Q;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v1}, LG/Q;->g()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v1}, LG/Q;->h()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-interface {v0, v3, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v1, 0x42b4

    iget v3, p3, Lcom/google/android/maps/driveabout/vector/aD;->d:F

    sub-float/2addr v1, v3

    invoke-interface {v0, v1, v5, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    cmpl-float v1, p4, v5

    if-eqz v1, :cond_0

    invoke-interface {v0, p4, v6, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    :cond_0
    iget v1, p3, Lcom/google/android/maps/driveabout/vector/aD;->b:F

    mul-float/2addr v1, v2

    iget v3, p3, Lcom/google/android/maps/driveabout/vector/aD;->c:F

    mul-float/2addr v2, v3

    invoke-interface {v0, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method static b(LG/m;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, LG/m;->b()I

    move-result v0

    sub-int/2addr v0, v6

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v5}, LG/m;->c(I)F

    move-result v1

    move v2, v6

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, LG/m;->c(I)F

    move-result v3

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x4270

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    const/high16 v4, 0x4396

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->c()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fc0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    invoke-virtual {v1}, LG/m;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/aa;->a:LG/Q;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/aa;->b:LG/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    invoke-virtual {v3, v7, v1}, LG/m;->a(ILG/Q;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    invoke-virtual {v3, v4, v2}, LG/m;->a(ILG/Q;)V

    new-array v3, v4, [Lcom/google/android/maps/driveabout/vector/aD;

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:[Lcom/google/android/maps/driveabout/vector/aD;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:[Lcom/google/android/maps/driveabout/vector/aD;

    new-instance v4, Lcom/google/android/maps/driveabout/vector/aD;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v0, v5}, Lcom/google/android/maps/driveabout/vector/aD;-><init>(LG/Q;LG/Q;FLcom/google/android/maps/driveabout/vector/bt;)V

    aput-object v4, v3, v7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, v8}, Lcom/google/android/maps/driveabout/vector/az;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, v8}, Lcom/google/android/maps/driveabout/vector/az;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->a()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->b()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v6, v6}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v6, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v0, v6}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v0, v6}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, v6, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, v6, v6}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/maps/driveabout/vector/aP;->a(Lcom/google/android/maps/driveabout/vector/u;LG/m;F)V

    goto :goto_0
.end method

.method private p()LG/m;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aP;->q()LG/m;

    move-result-object v0

    invoke-virtual {v0}, LG/m;->b()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aP;->b(LG/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v3

    goto :goto_0
.end method

.method private q()LG/m;
    .locals 8

    const/4 v5, 0x1

    const/high16 v4, 0x4000

    const/high16 v7, 0x3e80

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    invoke-virtual {v0}, LG/m;->b()I

    move-result v0

    sub-int/2addr v0, v5

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->E:I

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    invoke-virtual {v2, v1}, LG/m;->b(I)F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aa;->a:LG/Q;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/vector/aa;->b:LG/Q;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v4, v4, Lcom/google/android/maps/driveabout/vector/aa;->c:LG/Q;

    sget-object v5, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v5, v5, Lcom/google/android/maps/driveabout/vector/aa;->d:LG/Q;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    invoke-virtual {v6, v1, v4}, LG/m;->a(ILG/Q;)V

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1, v5}, LG/m;->a(ILG/Q;)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    sub-float v1, v2, v1

    div-float/2addr v1, v2

    mul-float v2, v1, v7

    invoke-static {v4, v5, v2, v0}, LG/Q;->a(LG/Q;LG/Q;FLG/Q;)V

    const/high16 v2, 0x3f40

    mul-float/2addr v1, v2

    invoke-static {v5, v4, v1, v3}, LG/Q;->a(LG/Q;LG/Q;FLG/Q;)V

    invoke-static {v0, v3}, LG/m;->a(LG/Q;LG/Q;)LG/m;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/google/android/maps/driveabout/vector/aP;->E:I

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    invoke-virtual {v0}, LG/m;->d()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->E:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v7

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/aP;->a(LG/m;FF)LG/m;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/aP;->a(LG/m;FF)LG/m;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/aP;->a(LG/m;FF)LG/m;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    sub-float/2addr v0, v1

    const v1, 0x3ea8f5c3

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/aP;->a(LG/m;FF)LG/m;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    sub-float/2addr v0, v1

    const v1, 0x3f2b851f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/aP;->a(LG/m;FF)LG/m;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 9

    const/high16 v2, 0x1

    const/4 v8, 0x0

    const/high16 v7, -0x4080

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->F:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/google/android/maps/driveabout/vector/aP;->a(Lcom/google/android/maps/driveabout/vector/u;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:[Lcom/google/android/maps/driveabout/vector/aD;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/br;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/ah;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lcom/google/android/maps/driveabout/vector/u;)I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/ah;

    :cond_2
    :goto_0
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/az;

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v1

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_3

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->i()F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_d

    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/aP;->c(Lcom/google/android/maps/driveabout/vector/bF;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->I:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->I:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_7

    move v1, v6

    :goto_1
    cmpl-float v4, v2, v5

    if-ltz v4, :cond_8

    move v4, v6

    :goto_2
    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float v2, v6, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/az;

    if-nez v2, :cond_4

    cmpl-float v2, v4, v5

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    :goto_3
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/az;

    :cond_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/az;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    if-ne v2, v3, :cond_b

    const v2, 0x3a83126f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_a

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    :goto_4
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/az;

    :goto_5
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->D:Z

    if-nez v2, :cond_d

    const/high16 v2, 0x3f40

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_5

    const/high16 v2, -0x40c0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_d

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v2

    mul-float/2addr v1, v2

    :goto_6
    move v2, v8

    :goto_7
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:[Lcom/google/android/maps/driveabout/vector/aD;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/az;

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, p1, v4}, Lcom/google/android/maps/driveabout/vector/az;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->o:[Lcom/google/android/maps/driveabout/vector/aD;

    aget-object v3, v3, v2

    invoke-direct {p0, p1, p2, v3, v1}, Lcom/google/android/maps/driveabout/vector/aP;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/aD;F)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    move v1, v2

    goto/16 :goto_0

    :cond_7
    move v1, v7

    goto :goto_1

    :cond_8
    move v4, v7

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    goto :goto_4

    :cond_b
    const v2, -0x457ced91

    cmpg-float v2, v1, v2

    if-gez v2, :cond_c

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    :goto_8
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->t:Lcom/google/android/maps/driveabout/vector/az;

    goto :goto_5

    :cond_c
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    goto :goto_8

    :cond_d
    move v1, v5

    goto :goto_6
.end method

.method public a(LG/ab;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    invoke-virtual {v0, v1}, LG/m;->a(I)LG/Q;

    move-result-object v0

    invoke-virtual {p1, v0}, LG/ab;->a(LG/Q;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    invoke-virtual {v0}, LG/m;->c()LG/Q;

    move-result-object v0

    invoke-virtual {p1, v0}, LG/ab;->a(LG/Q;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->w:F

    div-float/2addr v0, v1

    const v1, 0x3f666666

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3fa0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->i()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->A:I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->B:F

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/google/android/maps/driveabout/vector/u;I)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->b:LG/r;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/aP;->a(LG/r;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->b:LG/r;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->a:LG/d;

    move-object v4, v0

    invoke-interface {v4}, LG/d;->k()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object v0, v3

    move v1, v4

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aP;->a(LG/r;ZI)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bk;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->i:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/aw;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->x:F

    move v6, v0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIII)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    move-object v3, v0

    if-nez v3, :cond_2

    const/16 v3, 0x2710

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->p:Lcom/google/android/maps/driveabout/vector/bk;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->i:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->j:Lcom/google/android/maps/driveabout/vector/aw;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->x:F

    move v13, v0

    const/16 v16, 0x0

    move-object/from16 v10, p1

    move v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/maps/driveabout/vector/bk;->a(Lcom/google/android/maps/driveabout/vector/u;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIII)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/google/android/maps/driveabout/vector/aP;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->o:[Lcom/google/android/maps/driveabout/vector/aD;

    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->o:[Lcom/google/android/maps/driveabout/vector/aD;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/google/android/maps/driveabout/vector/aD;->d:F

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->o:[Lcom/google/android/maps/driveabout/vector/aD;

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->o:[Lcom/google/android/maps/driveabout/vector/aD;

    move-object v5, v0

    aget-object v5, v5, v4

    iget v5, v5, Lcom/google/android/maps/driveabout/vector/aD;->d:F

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41f0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_5

    const/high16 v6, 0x43a5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->D:Z

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/aP;->h:Z

    move v3, v0

    if-eqz v3, :cond_4

    new-instance v3, Lcom/google/android/maps/driveabout/vector/ah;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/vector/ah;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->v:Lcom/google/android/maps/driveabout/vector/ah;

    :cond_4
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/aP;->F:Z

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/S;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->q:Lcom/google/android/maps/driveabout/vector/p;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_1
    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->H:F

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->s:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->u:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    return-void
.end method

.method public b_(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->E:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aP;->n()Z

    move-result v0

    return v0
.end method

.method c(Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aa;->a:LG/Q;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/aa;->b:LG/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    invoke-virtual {v2, v4, v0}, LG/m;->a(ILG/Q;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    invoke-virtual {v2, v1}, LG/m;->a(LG/Q;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->I:[F

    invoke-virtual {p1, v0, v2}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;[F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->I:[F

    aget v0, v0, v4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aP;->I:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aP;->I:[F

    invoke-virtual {p1, v1, v3}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;[F)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->I:[F

    aget v3, v1, v4

    sub-float v0, v3, v0

    aput v0, v1, v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->I:[F

    aget v1, v0, v5

    sub-float/2addr v1, v2

    aput v1, v0, v5

    return-void
.end method

.method public d()LG/z;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->n:LG/t;

    return-object v0
.end method

.method public j()I
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->f:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->E:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->B:F

    const/high16 v2, 0x41f0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aP;->o()I

    move-result v1

    goto :goto_1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->G:Ljava/lang/String;

    return-object v0
.end method

.method n()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->E:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->E:I

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    invoke-virtual {v0}, LG/m;->d()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->E:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->k:LG/m;

    invoke-virtual {v0}, LG/m;->d()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->m:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aP;->p()LG/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->y:F

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/aP;->a(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->l:LG/m;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aP;->a(LG/m;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->z:I

    move v0, v4

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->E:I

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method o()I
    .locals 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aP;->A:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->z:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aP;->C:I

    int-to-float v1, v1

    int-to-float v0, v0

    const v2, 0x3c8efa35

    mul-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
