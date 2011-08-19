.class public Lay/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:Ljava/util/ArrayList;

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/Paint;

.field private final f:[Landroid/graphics/Bitmap;

.field private final g:[Landroid/graphics/Bitmap;

.field private final h:Landroid/graphics/Bitmap;

.field private final i:LU/c;

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(FII[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;LU/c;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v2, 0x32

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lay/f;->j:I

    iput v0, p0, Lay/f;->k:I

    const/16 v0, 0x1e

    iput v0, p0, Lay/f;->l:I

    iput p1, p0, Lay/f;->a:F

    iput-object p4, p0, Lay/f;->f:[Landroid/graphics/Bitmap;

    iput-object p5, p0, Lay/f;->g:[Landroid/graphics/Bitmap;

    iput-object p6, p0, Lay/f;->i:LU/c;

    iput-object p7, p0, Lay/f;->h:Landroid/graphics/Bitmap;

    iput p2, p0, Lay/f;->c:I

    iput p3, p0, Lay/f;->d:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lay/f;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lay/f;->e:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lay/f;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lay/f;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lay/f;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lay/f;->k:I

    iput v0, p0, Lay/f;->j:I

    iget-object v0, p0, Lay/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lay/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/b;

    invoke-virtual {v0}, Lay/b;->b()V

    iget v0, p0, Lay/f;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lay/f;->j:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(LU/c;Lay/a;Lay/d;Z)V
    .locals 19

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lay/f;->j:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lay/f;->k:I

    invoke-virtual/range {p2 .. p2}, Lay/a;->a()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->b:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v16, v5, v6

    if-lez v16, :cond_0

    const/4 v5, 0x0

    move/from16 v17, v5

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->f:[Landroid/graphics/Bitmap;

    move-object v7, v0

    array-length v7, v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-int v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->g:[Landroid/graphics/Bitmap;

    move-object v5, v0

    array-length v5, v5

    int-to-double v9, v5

    mul-double/2addr v7, v9

    double-to-int v11, v7

    new-instance v5, Lay/b;

    move-object/from16 v0, p0

    iget v0, v0, Lay/f;->c:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lay/f;->d:I

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->e:Landroid/graphics/Paint;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->f:[Landroid/graphics/Bitmap;

    move-object v10, v0

    aget-object v10, v10, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->g:[Landroid/graphics/Bitmap;

    move-object v6, v0

    aget-object v11, v6, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->i:LU/c;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->h:Landroid/graphics/Bitmap;

    move-object v14, v0

    move-object/from16 v6, p0

    move-object/from16 v12, p2

    move/from16 v15, p4

    invoke-direct/range {v5 .. v15}, Lay/b;-><init>(Lay/f;IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lay/a;LU/c;Landroid/graphics/Bitmap;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->b:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    goto :goto_0

    :cond_0
    if-gez v16, :cond_2

    const/4 v5, 0x0

    :goto_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v5, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->b:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lay/f;->j:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lay/f;->j:I

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v16

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->b:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->b:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v6, v5

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lay/b;

    add-int/lit8 v18, v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lay/f;->j:I

    move v7, v0

    if-le v6, v7, :cond_4

    invoke-virtual {v5}, Lay/b;->a()Lay/a;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lay/a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lay/b;->a(LU/c;Lay/a;Lay/d;Z)V

    :goto_3
    move/from16 v6, v18

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lay/b;->b()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->f:[Landroid/graphics/Bitmap;

    move-object v7, v0

    array-length v7, v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-int v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->g:[Landroid/graphics/Bitmap;

    move-object v5, v0

    array-length v5, v5

    int-to-double v9, v5

    mul-double/2addr v7, v9

    double-to-int v11, v7

    new-instance v5, Lay/b;

    move-object/from16 v0, p0

    iget v0, v0, Lay/f;->c:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lay/f;->d:I

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->e:Landroid/graphics/Paint;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->f:[Landroid/graphics/Bitmap;

    move-object v10, v0

    aget-object v10, v10, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->g:[Landroid/graphics/Bitmap;

    move-object v6, v0

    aget-object v11, v6, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->i:LU/c;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->h:Landroid/graphics/Bitmap;

    move-object v14, v0

    move-object/from16 v6, p0

    move-object/from16 v12, p2

    move/from16 v15, p4

    invoke-direct/range {v5 .. v15}, Lay/b;-><init>(Lay/f;IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lay/a;LU/c;Landroid/graphics/Bitmap;Z)V

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lay/b;->a(LU/c;Lay/a;Lay/d;Z)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lay/f;->j:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lay/f;->j:I

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lay/b;->b()V

    goto :goto_3

    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lay/f;->b:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lay/f;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lay/f;->k:I

    iget v1, p0, Lay/f;->l:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lay/f;->j:I

    if-lez v0, :cond_2

    move v0, v2

    :goto_0
    iget v1, p0, Lay/f;->j:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lay/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lay/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lay/f;->j:I

    :cond_2
    iget-object v0, p0, Lay/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lay/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lay/b;

    invoke-virtual {p0, p1, p2}, Lay/b;->a(Landroid/graphics/Canvas;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lay/f;->a:F

    return v0
.end method
