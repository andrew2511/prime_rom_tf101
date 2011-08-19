.class public Lt/a;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lt/ap;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lt/al;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lt/a;->b:I

    iput p3, p0, Lt/a;->c:I

    invoke-direct {p0, p1}, Lt/a;->a(Lt/al;)V

    return-void
.end method

.method private a(Lt/al;)V
    .locals 1

    invoke-direct {p0, p1}, Lt/a;->b(Lt/al;)[Lt/ap;

    move-result-object v0

    iput-object v0, p0, Lt/a;->a:[Lt/ap;

    invoke-direct {p0}, Lt/a;->b()V

    return-void
.end method

.method private a(Lt/ap;Lt/ap;LG/Q;)V
    .locals 4

    invoke-static {p1}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v0

    invoke-static {p1}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v1

    invoke-static {v0, v1, p3}, LG/Q;->d(LG/Q;LG/Q;LG/Q;)F

    move-result v0

    invoke-static {p2}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v1

    invoke-static {p2}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v2

    invoke-static {v1, v2, p3}, LG/Q;->d(LG/Q;LG/Q;LG/Q;)F

    move-result v1

    invoke-static {p1}, Lt/ap;->h(Lt/ap;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lt/h;

    invoke-direct {v3, p2, v0, v1}, Lt/h;-><init>(Lt/ap;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lt/ap;->h(Lt/ap;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lt/h;

    invoke-direct {v3, p1, v1, v0}, Lt/h;-><init>(Lt/ap;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static a(LG/Q;LG/Q;LG/Q;LG/Q;LG/Q;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0, p1, p2, p3, p4}, LG/H;->a(LG/Q;LG/Q;LG/Q;LG/Q;LG/Q;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p4}, LG/Q;->d(LG/Q;LG/Q;LG/Q;)F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method static a(LG/i;I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, LG/i;->e()I

    move-result v0

    const/16 v1, 0x70

    if-gt v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LG/i;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, LG/i;->e()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method static a(Lt/ap;Lt/ap;ILG/Q;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {p0}, Lt/ap;->f(Lt/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v0

    invoke-static {p1}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v1

    invoke-static {p0}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v2

    invoke-static {v0, v1, v2, p3}, LG/Q;->a(LG/Q;LG/Q;LG/Q;LG/Q;)F

    move-result v0

    int-to-float v1, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lt/ap;->g(Lt/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v0

    invoke-static {p1}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v1

    invoke-static {p0}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v2

    invoke-static {v0, v1, v2, p3}, LG/Q;->a(LG/Q;LG/Q;LG/Q;LG/Q;)F

    move-result v0

    int-to-float v1, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lt/ap;->f(Lt/ap;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v0

    invoke-static {p0}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v1

    invoke-static {p1}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v2

    invoke-static {v0, v1, v2, p3}, LG/Q;->a(LG/Q;LG/Q;LG/Q;LG/Q;)F

    move-result v0

    int-to-float v1, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lt/ap;->g(Lt/ap;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v0

    invoke-static {p0}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v1

    invoke-static {p1}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v2

    invoke-static {v0, v1, v2, p3}, LG/Q;->a(LG/Q;LG/Q;LG/Q;LG/Q;)F

    move-result v0

    int-to-float v1, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 11

    iget-object v0, p0, Lt/a;->a:[Lt/ap;

    array-length v0, v0

    new-instance v1, LG/Q;

    invoke-direct {v1}, LG/Q;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lt/a;->a:[Lt/ap;

    aget-object v3, v3, v2

    invoke-static {v3}, Lt/ap;->e(Lt/ap;)LG/S;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    :goto_1
    if-ge v5, v0, :cond_2

    iget-object v6, p0, Lt/a;->a:[Lt/ap;

    aget-object v6, v6, v5

    invoke-static {v6}, Lt/ap;->e(Lt/ap;)LG/S;

    move-result-object v7

    invoke-virtual {v4, v7}, LG/S;->b(LG/z;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v3, v6}, Lt/ap;->a(Lt/ap;Lt/ap;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v3}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v7

    invoke-static {v3}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v8

    invoke-static {v6}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v9

    invoke-static {v6}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v10

    invoke-static {v7, v8, v9, v10, v1}, Lt/a;->a(LG/Q;LG/Q;LG/Q;LG/Q;LG/Q;)Z

    move-result v7

    if-nez v7, :cond_0

    iget v7, p0, Lt/a;->b:I

    invoke-static {v3, v6, v7, v1}, Lt/a;->a(Lt/ap;Lt/ap;ILG/Q;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-direct {p0, v3, v6, v1}, Lt/a;->a(Lt/ap;Lt/ap;LG/Q;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private b(Lt/al;)[Lt/ap;
    .locals 21

    invoke-virtual/range {p1 .. p1}, Lt/al;->a()I

    move-result v15

    new-instance v16, Ljava/util/ArrayList;

    mul-int/lit8 v2, v15, 0x2

    move-object/from16 v0, v16

    move v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_0
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lt/al;->a(I)LG/i;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lt/a;->c:I

    move v2, v0

    invoke-static {v3, v2}, Lt/a;->a(LG/i;I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lt/al;->b(I)LG/m;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, LG/m;->b()I

    move-result v19

    const/4 v2, 0x0

    move-object/from16 v0, v18

    move v1, v2

    invoke-virtual {v0, v1}, LG/m;->a(I)LG/Q;

    move-result-object v2

    const/4 v4, 0x1

    move/from16 v20, v4

    move-object v4, v2

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, LG/m;->a(I)LG/Q;

    move-result-object v5

    const/4 v2, 0x1

    move/from16 v0, v20

    move v1, v2

    if-ne v0, v1, :cond_6

    const/4 v2, 0x1

    move v6, v2

    :goto_2
    const/4 v2, 0x1

    sub-int v2, v19, v2

    move/from16 v0, v20

    move v1, v2

    if-ne v0, v1, :cond_7

    const/4 v2, 0x1

    move v7, v2

    :goto_3
    invoke-direct/range {p0 .. p0}, Lt/a;->c()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, LG/i;->d(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Lt/ap;

    move-object/from16 v0, p0

    iget v0, v0, Lt/a;->b:I

    move v8, v0

    invoke-direct/range {v2 .. v8}, Lt/ap;-><init>(LG/i;LG/Q;LG/Q;ZZI)V

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct/range {p0 .. p0}, Lt/a;->c()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, LG/i;->d(I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    new-instance v8, Lt/ap;

    move-object/from16 v0, p0

    iget v0, v0, Lt/a;->b:I

    move v14, v0

    move-object v9, v3

    move-object v10, v5

    move-object v11, v4

    move v12, v7

    move v13, v6

    invoke-direct/range {v8 .. v14}, Lt/ap;-><init>(LG/i;LG/Q;LG/Q;ZZI)V

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    move-object v4, v5

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    move v6, v2

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    move v7, v2

    goto :goto_3

    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lt/ap;

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lt/ap;

    return-object p0
.end method

.method private c()Z
    .locals 2

    iget v0, p0, Lt/a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lt/a;->a:[Lt/ap;

    array-length v0, v0

    return v0
.end method

.method public a(I)Lt/ap;
    .locals 1

    iget-object v0, p0, Lt/a;->a:[Lt/ap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Lt/ap;)Lt/ap;
    .locals 8

    iget-object v0, p0, Lt/a;->a:[Lt/ap;

    array-length v0, v0

    new-instance v1, LG/Q;

    invoke-direct {v1}, LG/Q;-><init>()V

    invoke-static {p1}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v2

    invoke-static {p1}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v3

    const v4, 0x3dcccccd

    invoke-virtual {v2, v3, v4}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v2

    invoke-static {p1}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v3

    invoke-static {p1}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v4

    const v5, 0x3f666666

    invoke-virtual {v3, v4, v5}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v5, p0, Lt/a;->a:[Lt/ap;

    aget-object v5, v5, v4

    invoke-static {p1}, Lt/ap;->c(Lt/ap;)LG/i;

    move-result-object v6

    invoke-static {v5}, Lt/ap;->c(Lt/ap;)LG/i;

    move-result-object v7

    if-ne v6, v7, :cond_1

    invoke-static {p1}, Lt/ap;->d(Lt/ap;)F

    move-result v6

    invoke-static {v5}, Lt/ap;->d(Lt/ap;)F

    move-result v7

    invoke-static {v6, v7}, LG/H;->a(FF)F

    move-result v6

    const/high16 v7, 0x40a0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    invoke-static {v5}, Lt/ap;->e(Lt/ap;)LG/S;

    move-result-object v6

    invoke-virtual {v6, v2}, LG/S;->a(LG/Q;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v6

    invoke-static {v5}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v7

    invoke-static {v6, v7, v2, v1}, LG/Q;->a(LG/Q;LG/Q;LG/Q;LG/Q;)F

    move-result v6

    iget v7, p0, Lt/a;->b:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_0
    invoke-static {v5}, Lt/ap;->e(Lt/ap;)LG/S;

    move-result-object v6

    invoke-virtual {v6, v3}, LG/S;->a(LG/Q;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Lt/ap;->b(Lt/ap;)LG/Q;

    move-result-object v6

    invoke-static {v5}, Lt/ap;->a(Lt/ap;)LG/Q;

    move-result-object v7

    invoke-static {v6, v7, v3, v1}, LG/Q;->a(LG/Q;LG/Q;LG/Q;LG/Q;)F

    move-result v6

    iget v7, p0, Lt/a;->b:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    move-object v0, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
