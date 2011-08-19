.class public Lcom/google/android/maps/driveabout/vector/aB;
.super Lcom/google/android/maps/driveabout/vector/S;


# static fields
.field private static final F:[Lcom/google/android/maps/driveabout/vector/bs;

.field private static final G:[Lcom/google/android/maps/driveabout/vector/bs;


# instance fields
.field private A:Lcom/google/android/maps/driveabout/vector/ah;

.field private B:Z

.field private C:F

.field private final D:F

.field private final E:[F

.field protected i:LG/Q;

.field protected j:Lcom/google/android/maps/driveabout/vector/bn;

.field protected k:Lcom/google/android/maps/driveabout/vector/bn;

.field protected l:Lcom/google/android/maps/driveabout/vector/bs;

.field protected m:F

.field protected n:F

.field protected o:F

.field protected p:F

.field private q:LG/Q;

.field private r:LG/v;

.field private s:LG/v;

.field private t:Lcom/google/android/maps/driveabout/vector/br;

.field private final u:Ljava/lang/String;

.field private final v:Z

.field private w:F

.field private x:Z

.field private final y:[Lcom/google/android/maps/driveabout/vector/bs;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    new-array v0, v4, [Lcom/google/android/maps/driveabout/vector/bs;

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aB;->F:[Lcom/google/android/maps/driveabout/vector/bs;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/bs;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/bs;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aN;->d:Lcom/google/android/maps/driveabout/vector/aN;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/F;->a:Lcom/google/android/maps/driveabout/vector/F;

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bs;-><init>(Lcom/google/android/maps/driveabout/vector/aN;Lcom/google/android/maps/driveabout/vector/F;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/maps/driveabout/vector/bs;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/aN;->b:Lcom/google/android/maps/driveabout/vector/aN;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/F;->a:Lcom/google/android/maps/driveabout/vector/F;

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bs;-><init>(Lcom/google/android/maps/driveabout/vector/aN;Lcom/google/android/maps/driveabout/vector/F;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/maps/driveabout/vector/bs;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/aN;->e:Lcom/google/android/maps/driveabout/vector/aN;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/F;->c:Lcom/google/android/maps/driveabout/vector/F;

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bs;-><init>(Lcom/google/android/maps/driveabout/vector/aN;Lcom/google/android/maps/driveabout/vector/F;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/maps/driveabout/vector/bs;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/aN;->c:Lcom/google/android/maps/driveabout/vector/aN;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/F;->b:Lcom/google/android/maps/driveabout/vector/F;

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bs;-><init>(Lcom/google/android/maps/driveabout/vector/aN;Lcom/google/android/maps/driveabout/vector/F;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aB;->G:[Lcom/google/android/maps/driveabout/vector/bs;

    return-void
.end method

.method constructor <init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/Q;LG/Q;FFZZLcom/google/android/maps/driveabout/vector/bn;Lcom/google/android/maps/driveabout/vector/bn;[Lcom/google/android/maps/driveabout/vector/bs;)V
    .locals 10

    invoke-interface {p1}, LG/d;->h()LG/r;

    move-result-object v5

    invoke-interface {p1}, LG/d;->l()I

    move-result v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/google/android/maps/driveabout/vector/S;-><init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;LG/r;FFIZ)V

    const/16 v2, 0x8

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->E:[F

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/aB;->u:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/aB;->i:LG/Q;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/aB;->q:LG/Q;

    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    move/from16 v0, p9

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/aB;->v:Z

    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aB;->y:[Lcom/google/android/maps/driveabout/vector/bs;

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->z:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->y:[Lcom/google/android/maps/driveabout/vector/bs;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->z:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/bs;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/bs;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/vector/bs;->b:Lcom/google/android/maps/driveabout/vector/F;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/bn;->a(Lcom/google/android/maps/driveabout/vector/F;)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->x:Z

    invoke-virtual/range {p10 .. p10}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v2

    invoke-virtual/range {p10 .. p10}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v3

    mul-float/2addr v2, v3

    if-eqz p11, :cond_1

    invoke-virtual/range {p11 .. p11}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v3

    invoke-virtual/range {p11 .. p11}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    :cond_1
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->D:F

    return-void
.end method

.method static a(LG/r;Lcom/google/android/maps/driveabout/vector/ak;F)I
    .locals 3

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/ak;->e:F

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/ak;->f:I

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/ak;->g:I

    invoke-static {p0, v0, v1, v2, p2}, Lcom/google/android/maps/driveabout/vector/S;->a(LG/r;FIIF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a(LG/Y;Lcom/google/android/maps/driveabout/vector/bh;Landroid/graphics/Bitmap;FLG/Q;ZLcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bi;Lcom/google/android/maps/driveabout/vector/bk;Lcom/google/android/maps/driveabout/vector/ak;)Lcom/google/android/maps/driveabout/vector/aB;
    .locals 18

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, LG/Y;->d()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object v2, v6

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bn;->a(Lcom/google/android/maps/driveabout/vector/bk;Lcom/google/android/maps/driveabout/vector/ak;Ljava/lang/String;LG/d;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, LG/Y;->h()LG/r;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v6

    move-object v0, v5

    move-object/from16 v1, p9

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aB;->a(LG/r;Lcom/google/android/maps/driveabout/vector/ak;F)I

    move-result v8

    new-instance v5, Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual/range {p0 .. p0}, LG/Y;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, LG/Y;->h()LG/r;

    move-result-object v9

    move-object/from16 v0, p9

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/ak;->d:Lcom/google/android/maps/driveabout/vector/aw;

    move-object v10, v0

    move-object/from16 v6, p8

    invoke-direct/range {v5 .. v10}, Lcom/google/android/maps/driveabout/vector/bn;-><init>(Lcom/google/android/maps/driveabout/vector/bk;Ljava/lang/String;ILG/r;Lcom/google/android/maps/driveabout/vector/aw;)V

    move-object/from16 p8, v5

    :goto_0
    if-eqz p8, :cond_0

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    :cond_0
    if-nez p2, :cond_1

    const/16 p0, 0x0

    :goto_1
    return-object p0

    :cond_1
    invoke-virtual/range {p0 .. p0}, LG/Y;->d()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz p2, :cond_6

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v5

    invoke-virtual {v5}, Lad/t;->y()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, p3

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_3

    move-object/from16 v0, p9

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/ak;->m:F

    move v5, v0

    mul-float p3, p3, v5

    :goto_2
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result p6

    mul-float p3, p3, p6

    new-instance p6, Lcom/google/android/maps/driveabout/vector/bn;

    move-object/from16 v0, p6

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bn;-><init>(Landroid/graphics/Bitmap;FLcom/google/android/maps/driveabout/vector/bi;)V

    invoke-virtual/range {p0 .. p0}, LG/Y;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, LG/Y;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p0 .. p0}, LG/Y;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual/range {p0 .. p0}, LG/Y;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2

    if-nez p8, :cond_2

    invoke-virtual/range {p0 .. p0}, LG/Y;->a()LG/w;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, LG/w;->b()I

    move-result p3

    const/16 p7, 0xe

    move/from16 v0, p3

    move/from16 v1, p7

    if-lt v0, v1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, LG/Y;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p4 .. p4}, LG/Q;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p0 .. p0}, LG/Y;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    const/16 p3, 0x0

    sget-object p7, Lcom/google/android/maps/driveabout/vector/aB;->G:[Lcom/google/android/maps/driveabout/vector/bs;

    move-object/from16 v16, p8

    move/from16 v14, p3

    move-object/from16 v17, p7

    move-object/from16 v8, p2

    move-object/from16 v15, p6

    :goto_4
    invoke-virtual/range {p0 .. p0}, LG/Y;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual/range {p0 .. p0}, LG/Y;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_7

    move-object/from16 v0, p9

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/ak;->p:Z

    move/from16 p2, v0

    if-eqz p2, :cond_7

    new-instance v5, Lcom/google/android/maps/driveabout/vector/bG;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, LG/Y;->q()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, LG/Y;->r()F

    move-result v12

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p4

    move/from16 v13, p5

    invoke-direct/range {v5 .. v17}, Lcom/google/android/maps/driveabout/vector/bG;-><init>(LG/Y;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/Q;LG/Q;FFZZLcom/google/android/maps/driveabout/vector/bn;Lcom/google/android/maps/driveabout/vector/bn;[Lcom/google/android/maps/driveabout/vector/bs;)V

    move-object/from16 p0, v5

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p9

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/ak;->n:F

    move v5, v0

    mul-float p3, p3, v5

    goto/16 :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, LG/Y;->a()LG/w;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, LG/w;->b()I

    move-result p2

    const/16 p3, 0xd

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, LG/Q;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p0 .. p0}, LG/Y;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, LG/Y;->e()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    :cond_6
    const/16 p2, 0x1

    sget-object p3, Lcom/google/android/maps/driveabout/vector/aB;->F:[Lcom/google/android/maps/driveabout/vector/bs;

    move-object/from16 v16, v6

    move/from16 v14, p2

    move-object/from16 v17, p3

    move-object v8, v5

    move-object/from16 v15, p8

    goto :goto_4

    :cond_7
    new-instance v5, Lcom/google/android/maps/driveabout/vector/aB;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, LG/Y;->q()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, LG/Y;->r()F

    move-result v12

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p4

    move/from16 v13, p5

    invoke-direct/range {v5 .. v17}, Lcom/google/android/maps/driveabout/vector/aB;-><init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/Q;LG/Q;FFZZLcom/google/android/maps/driveabout/vector/bn;Lcom/google/android/maps/driveabout/vector/bn;[Lcom/google/android/maps/driveabout/vector/bs;)V

    move-object/from16 p0, v5

    goto/16 :goto_1

    :cond_8
    move-object/from16 p8, v5

    goto/16 :goto_0
.end method

.method public static a(LG/c;Lcom/google/android/maps/driveabout/vector/bh;LG/Q;ZLcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bk;Lcom/google/android/maps/driveabout/vector/ak;)Lcom/google/android/maps/driveabout/vector/aB;
    .locals 19

    invoke-virtual/range {p0 .. p0}, LG/c;->f()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object v2, v5

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bn;->a(Lcom/google/android/maps/driveabout/vector/bk;Lcom/google/android/maps/driveabout/vector/ak;Ljava/lang/String;LG/d;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual/range {p0 .. p0}, LG/c;->h()LG/r;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result p4

    move-object v0, v5

    move-object/from16 v1, p6

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aB;->a(LG/r;Lcom/google/android/maps/driveabout/vector/ak;F)I

    move-result v8

    new-instance v5, Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual/range {p0 .. p0}, LG/c;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, LG/c;->h()LG/r;

    move-result-object v9

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/ak;->d:Lcom/google/android/maps/driveabout/vector/aw;

    move-object v10, v0

    move-object/from16 v6, p5

    invoke-direct/range {v5 .. v10}, Lcom/google/android/maps/driveabout/vector/bn;-><init>(Lcom/google/android/maps/driveabout/vector/bk;Ljava/lang/String;ILG/r;Lcom/google/android/maps/driveabout/vector/aw;)V

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result p4

    const/16 p5, 0x0

    cmpl-float p4, p4, p5

    if-eqz p4, :cond_1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result p4

    const/16 p5, 0x0

    cmpl-float p4, p4, p5

    if-nez p4, :cond_2

    :cond_1
    const/16 p0, 0x0

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/google/android/maps/driveabout/vector/aB;

    invoke-virtual/range {p0 .. p0}, LG/c;->f()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/high16 v12, -0x4080

    const/high16 v13, -0x4080

    const/4 v15, 0x0

    const/16 v17, 0x0

    sget-object v18, Lcom/google/android/maps/driveabout/vector/aB;->F:[Lcom/google/android/maps/driveabout/vector/bs;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move/from16 v14, p3

    move-object/from16 v16, v5

    invoke-direct/range {v6 .. v18}, Lcom/google/android/maps/driveabout/vector/aB;-><init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/Q;LG/Q;FFZZLcom/google/android/maps/driveabout/vector/bn;Lcom/google/android/maps/driveabout/vector/bn;[Lcom/google/android/maps/driveabout/vector/bs;)V

    move-object/from16 p0, v6

    goto :goto_0
.end method

.method public static a(LG/i;Lcom/google/android/maps/driveabout/vector/bh;Landroid/graphics/Bitmap;Ljava/lang/String;LG/Q;LG/Q;ZLcom/google/android/maps/driveabout/vector/ak;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bi;)Lcom/google/android/maps/driveabout/vector/aB;
    .locals 17

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result p8

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v4

    invoke-virtual {v4}, Lad/t;->y()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lt v5, v4, :cond_0

    move-object/from16 v0, p7

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/ak;->m:F

    move/from16 p7, v0

    mul-float p7, p7, p8

    :goto_0
    new-instance v4, Lcom/google/android/maps/driveabout/vector/aB;

    const/high16 v10, -0x4080

    const/high16 v11, -0x4080

    const/4 v13, 0x0

    new-instance v14, Lcom/google/android/maps/driveabout/vector/bn;

    move-object v0, v14

    move-object/from16 v1, p2

    move/from16 v2, p7

    move-object/from16 v3, p9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bn;-><init>(Landroid/graphics/Bitmap;FLcom/google/android/maps/driveabout/vector/bi;)V

    const/4 v15, 0x0

    sget-object v16, Lcom/google/android/maps/driveabout/vector/aB;->F:[Lcom/google/android/maps/driveabout/vector/bs;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v12, p6

    invoke-direct/range {v4 .. v16}, Lcom/google/android/maps/driveabout/vector/aB;-><init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/Q;LG/Q;FFZZLcom/google/android/maps/driveabout/vector/bn;Lcom/google/android/maps/driveabout/vector/bn;[Lcom/google/android/maps/driveabout/vector/bs;)V

    return-object v4

    :cond_0
    move/from16 p7, p8

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 9

    const/high16 v3, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->i:LG/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->w:F

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->A:Lcom/google/android/maps/driveabout/vector/ah;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->A:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lcom/google/android/maps/driveabout/vector/u;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->A:Lcom/google/android/maps/driveabout/vector/ah;

    :cond_0
    :goto_0
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v1

    div-float/2addr v1, v6

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v2

    div-float/2addr v2, v6

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;)V

    neg-float v3, v1

    neg-float v4, v2

    invoke-interface {v0, v3, v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bn;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/google/android/maps/driveabout/vector/am;->a:[I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/bs;

    iget-object v4, v4, Lcom/google/android/maps/driveabout/vector/bs;->a:Lcom/google/android/maps/driveabout/vector/aN;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aN;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v7

    move v3, v7

    :goto_1
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/bs;

    iget-object v4, v4, Lcom/google/android/maps/driveabout/vector/bs;->a:Lcom/google/android/maps/driveabout/vector/aN;

    sget-object v5, Lcom/google/android/maps/driveabout/vector/aN;->d:Lcom/google/android/maps/driveabout/vector/aN;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/bs;

    iget-object v4, v4, Lcom/google/android/maps/driveabout/vector/bs;->a:Lcom/google/android/maps/driveabout/vector/aN;

    sget-object v5, Lcom/google/android/maps/driveabout/vector/aN;->b:Lcom/google/android/maps/driveabout/vector/aN;

    if-ne v4, v5, :cond_2

    :cond_1
    sget-object v4, Lcom/google/android/maps/driveabout/vector/am;->b:[I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/bs;

    iget-object v5, v5, Lcom/google/android/maps/driveabout/vector/bs;->b:Lcom/google/android/maps/driveabout/vector/F;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/F;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    :cond_2
    move v1, v3

    :goto_2
    invoke-interface {v0, v1, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bn;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    :cond_3
    return-void

    :cond_4
    move v1, v3

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v3

    div-float/2addr v3, v6

    sub-float v3, v1, v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v3

    neg-float v3, v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v2

    neg-float v2, v2

    move v3, v7

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v2

    move v3, v7

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v3

    neg-float v3, v3

    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v3

    neg-float v3, v3

    move v8, v3

    move v3, v2

    move v2, v8

    goto/16 :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    goto/16 :goto_1

    :pswitch_8
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    goto/16 :goto_1

    :pswitch_9
    const/high16 v1, -0x3ee0

    goto/16 :goto_2

    :pswitch_a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v1

    const/high16 v3, 0x4120

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v3

    sub-float/2addr v1, v3

    goto/16 :goto_2

    :pswitch_b
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v1, v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/u;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/aB;->b(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
.end method

.method public a(LG/ab;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->i:LG/Q;

    invoke-virtual {p1, v0}, LG/ab;->a(LG/Q;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 11

    const/high16 v10, 0x3f80

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->i()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->r:LG/v;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->B:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->C:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    move v0, v8

    :goto_1
    return v0

    :cond_0
    move v0, v9

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->B:Z

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->C:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v1

    float-to-int v1, v1

    shr-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    if-nez v2, :cond_2

    neg-int v2, v0

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:F

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->n:F

    neg-int v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->o:F

    int-to-float v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->p:F

    :goto_2
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aa;->a:LG/Q;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->i:LG/Q;

    invoke-static {v1, v2, v0}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->v:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->i:LG/Q;

    invoke-virtual {p1, v0, v8}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;Z)F

    move-result v0

    invoke-virtual {p1, v10, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->w:F

    :goto_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->i:LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->E:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;[F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->E:[F

    aget v0, v0, v9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->E:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->r:LG/v;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->s:LG/v;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->n:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->o:F

    add-float/2addr v3, v1

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aB;->p:F

    add-float/2addr v1, v4

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(FFFF)LG/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->r:LG/v;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->r:LG/v;

    if-eqz v0, :cond_6

    move v0, v8

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bn;->a()F

    move-result v2

    float-to-int v2, v2

    shr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v3

    float-to-int v3, v3

    shr-int/lit8 v3, v3, 0x1

    if-le v0, v2, :cond_3

    move v4, v0

    :goto_4
    if-le v1, v3, :cond_4

    move v5, v1

    :goto_5
    sget-object v6, Lcom/google/android/maps/driveabout/vector/am;->a:[I

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/bs;

    iget-object v7, v7, Lcom/google/android/maps/driveabout/vector/bs;->a:Lcom/google/android/maps/driveabout/vector/aN;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/aN;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    neg-int v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:F

    int-to-float v0, v4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->n:F

    neg-int v0, v5

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->o:F

    int-to-float v0, v5

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->p:F

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_4

    :cond_4
    move v5, v3

    goto :goto_5

    :pswitch_0
    neg-int v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:F

    int-to-float v0, v4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->n:F

    neg-int v0, v1

    mul-int/lit8 v2, v3, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->o:F

    int-to-float v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->p:F

    goto/16 :goto_2

    :pswitch_1
    neg-int v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:F

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->n:F

    neg-int v0, v5

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->o:F

    int-to-float v0, v5

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->p:F

    goto/16 :goto_2

    :pswitch_2
    neg-int v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:F

    int-to-float v0, v4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->n:F

    neg-int v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->o:F

    mul-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->p:F

    goto/16 :goto_2

    :pswitch_3
    neg-int v1, v0

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:F

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->n:F

    neg-int v0, v5

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->o:F

    int-to-float v0, v5

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->p:F

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v0

    invoke-virtual {p1, v10, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(FF)F

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->w:F

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->i:LG/Q;

    invoke-virtual {p1, v1, v8}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;Z)F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->n:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->n:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->o:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->o:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->p:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->p:F

    goto/16 :goto_3

    :cond_6
    move v0, v9

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method a(Lcom/google/android/maps/driveabout/vector/u;I)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ah;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/ah;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->A:Lcom/google/android/maps/driveabout/vector/ah;

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->x:Z

    return v1
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/S;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bn;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bn;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->t:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->t:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_2
    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->D:F

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bn;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bn;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->t:Lcom/google/android/maps/driveabout/vector/br;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->t:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_2
    return-void
.end method

.method public b_(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->z:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->y:[Lcom/google/android/maps/driveabout/vector/bs;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->y:[Lcom/google/android/maps/driveabout/vector/bs;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->z:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/bs;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/bs;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/bs;->b:Lcom/google/android/maps/driveabout/vector/F;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bn;->a(Lcom/google/android/maps/driveabout/vector/F;)V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aB;->r:LG/v;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->q:LG/Q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->q:LG/Q;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->i:LG/Q;

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aB;->q:LG/Q;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->y:[Lcom/google/android/maps/driveabout/vector/bs;

    array-length v0, v0

    if-le v0, v3, :cond_1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->z:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->y:[Lcom/google/android/maps/driveabout/vector/bs;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/bs;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Lcom/google/android/maps/driveabout/vector/bn;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/bs;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/bs;->b:Lcom/google/android/maps/driveabout/vector/F;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bn;->a(Lcom/google/android/maps/driveabout/vector/F;)V

    :cond_1
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aB;->r:LG/v;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public d()LG/z;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->r:LG/v;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->u:Ljava/lang/String;

    return-object v0
.end method
