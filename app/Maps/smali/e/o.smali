.class public Le/o;
.super Ljava/lang/Object;


# instance fields
.field private a:LS/b;

.field private final b:Lad/o;


# direct methods
.method public constructor <init>(LS/b;Lad/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/o;->a:LS/b;

    iput-object p2, p0, Le/o;->b:Lad/o;

    return-void
.end method

.method private static a(LG/m;I)D
    .locals 2

    invoke-virtual {p0, p1}, LG/m;->a(I)LG/Q;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, LG/m;->a(I)LG/Q;

    move-result-object v1

    invoke-static {v0, v1}, LG/Q;->a(LG/Q;LG/Q;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(LS/c;I)D
    .locals 2

    invoke-virtual {p0, p1}, LS/c;->c(I)LG/Q;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, LS/c;->c(I)LG/Q;

    move-result-object v1

    invoke-static {v0, v1}, LG/Q;->a(LG/Q;LG/Q;)D

    move-result-wide v0

    return-wide v0
.end method

.method static a(LG/Q;LF/M;II)LF/i;
    .locals 11

    const/4 v9, 0x0

    int-to-double v0, p3

    invoke-virtual {p1, p0, v0, v1, v9}, LF/M;->a(LG/Q;DZ)[LF/i;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x7fefffffffffffffL

    array-length v4, v0

    move-object v5, v1

    move v1, v9

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v6, v0, v1

    invoke-virtual {v6}, LF/i;->d()D

    move-result-wide v7

    cmpg-double v7, v7, v2

    if-gez v7, :cond_0

    invoke-virtual {v6}, LF/i;->d()D

    move-result-wide v2

    move-object v5, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, LF/i;->d()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Search radius: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " min: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/o;->a(Ljava/lang/String;)V

    array-length v2, v0

    move v3, v9

    move v4, v9

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v6, v0, v3

    invoke-virtual {v6}, LF/i;->e()I

    move-result v7

    if-lt v7, v4, :cond_2

    invoke-virtual {v6}, LF/i;->d()D

    move-result-wide v7

    int-to-double v9, v1

    cmpg-double v7, v7, v9

    if-gez v7, :cond_2

    invoke-virtual {v6}, LF/i;->e()I

    move-result v4

    move-object v5, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v5

    return-object v0
.end method

.method static a(LF/M;DDDDD)Ljava/util/List;
    .locals 20

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    sub-double p3, p1, p3

    move-wide v0, v4

    move-wide/from16 v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    add-double p1, p1, p5

    move-wide/from16 v0, p7

    neg-double v0, v0

    move-wide/from16 p5, v0

    invoke-virtual/range {p0 .. p0}, LF/M;->m()LG/m;

    move-result-object v12

    invoke-virtual {v12}, LG/m;->b()I

    move-result v13

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, LF/M;->a(D)I

    move-result v4

    invoke-virtual/range {p0 .. p2}, LF/M;->a(D)I

    move-result v5

    const/4 v6, 0x2

    sub-int v6, v13, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, LF/M;->b(I)D

    move-result-wide v5

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, LF/M;->b(D)I

    move-result v15

    new-instance v16, LG/Q;

    invoke-direct/range {v16 .. v16}, LG/Q;-><init>()V

    new-instance v17, LG/Q;

    invoke-direct/range {v17 .. v17}, LG/Q;-><init>()V

    move v6, v4

    :goto_0
    if-gt v6, v14, :cond_4

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, LF/M;->b(I)D

    move-result-wide v18

    cmpl-double v4, v18, p3

    if-ltz v4, :cond_1

    cmpg-double v4, v18, p1

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    sub-double v7, v18, p5

    cmpg-double v5, v7, p7

    if-gez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v12, v6}, LG/m;->b(I)F

    move-result v7

    float-to-double v7, v7

    cmpg-double v7, v7, p9

    if-gez v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    if-eqz v4, :cond_0

    if-nez v5, :cond_0

    if-nez v7, :cond_0

    move-object v0, v12

    move v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    add-int/lit8 p5, v6, 0x1

    move-object v0, v12

    move/from16 v1, p5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, LF/M;->b(D)I

    move-result p5

    sub-int v10, p5, v15

    new-instance v4, Le/p;

    const/high16 p5, 0x3f00

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v5

    invoke-static {v12, v6}, Le/o;->a(LG/m;I)D

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v10}, Le/p;-><init>(LG/Q;IDZI)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 p5, v18

    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    const/16 p0, 0x2

    sub-int p0, v13, p0

    move v0, v14

    move/from16 v1, p0

    if-ne v0, v1, :cond_5

    new-instance v4, Le/p;

    invoke-virtual {v12}, LG/m;->c()LG/Q;

    move-result-object v5

    const/16 p0, 0x1

    sub-int v6, v13, p0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Le/p;-><init>(LG/Q;IDZI)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v11
.end method

.method static a(ZLG/Q;Ljava/util/Iterator;DIIDI)Ljava/util/List;
    .locals 17

    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    mul-double p7, p7, p7

    new-instance v16, Le/z;

    invoke-direct/range {v16 .. v16}, Le/z;-><init>()V

    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LS/c;

    move-object/from16 v0, p1

    move-object v1, v8

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Le/o;->a(LG/Q;LS/c;Le/z;)V

    const/16 v5, 0x168

    move/from16 v0, p5

    move v1, v5

    if-eq v0, v1, :cond_1

    move-object/from16 v0, v16

    iget v0, v0, Le/z;->b:I

    move v5, v0

    move-wide/from16 v0, p3

    move-object v2, v8

    move v3, v5

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Le/o;->a(DLS/c;II)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    move-object/from16 v0, v16

    iget v0, v0, Le/z;->c:F

    move v5, v0

    float-to-double v5, v5

    cmpg-double v5, v5, p7

    if-gez v5, :cond_0

    new-instance v5, Le/A;

    move-object/from16 v0, v16

    iget-object v0, v0, Le/z;->a:LG/Q;

    move-object v6, v0

    invoke-static {v6}, LG/Q;->a(LG/Q;)LG/Q;

    move-result-object v7

    move-object/from16 v0, v16

    iget v0, v0, Le/z;->b:I

    move v9, v0

    move-object/from16 v0, v16

    iget v0, v0, Le/z;->c:F

    move v6, v0

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move/from16 v6, p0

    move/from16 v10, p9

    move-object/from16 v11, p1

    move/from16 v14, p6

    invoke-direct/range {v5 .. v14}, Le/A;-><init>(ZLG/Q;LS/c;IILG/Q;DI)V

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v15
.end method

.method static a(LG/Q;LS/c;Le/z;)V
    .locals 7

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    new-instance v1, LG/Q;

    invoke-direct {v1}, LG/Q;-><init>()V

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    const v3, 0x7f7fffff

    iput v3, p2, Le/z;->c:F

    invoke-virtual {p1}, LS/c;->e()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    sub-int v5, v3, v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p1, v4, v0}, LS/c;->a(ILG/Q;)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5, v1}, LS/c;->a(ILG/Q;)V

    invoke-static {v0, v1, p0, v2}, LG/Q;->b(LG/Q;LG/Q;LG/Q;LG/Q;)F

    move-result v5

    iget v6, p2, Le/z;->c:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    iput v5, p2, Le/z;->c:F

    iput v4, p2, Le/z;->b:I

    iget-object v5, p2, Le/z;->a:LG/Q;

    invoke-virtual {v5, v2}, LG/Q;->b(LG/Q;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static a(Ljava/util/List;)V
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/A;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/A;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "More than 2 endpoints. Dropping all."

    invoke-static {v0}, Le/o;->a(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    iget-object v3, v0, Le/A;->c:LS/c;

    invoke-virtual {v3}, LS/c;->d()LG/Q;

    move-result-object v3

    iget-object v4, v1, Le/A;->c:LS/c;

    invoke-virtual {v4, v5}, LS/c;->c(I)LG/Q;

    move-result-object v4

    invoke-virtual {v3, v4}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Le/A;->c:LS/c;

    invoke-virtual {v0, v5}, LS/c;->c(I)LG/Q;

    move-result-object v0

    iget-object v1, v1, Le/A;->c:LS/c;

    invoke-virtual {v1}, LS/c;->d()LG/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_4
    const-string v0, "Endpoints don\'t line up. Dropping all."

    invoke-static {v0}, Le/o;->a(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method static a(Ljava/util/List;D)V
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/A;

    iget-boolean v1, p0, Le/A;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/A;->b:LG/Q;

    iget-object v2, p0, Le/A;->c:LS/c;

    invoke-virtual {v2}, LS/c;->d()LG/Q;

    move-result-object v2

    invoke-virtual {v1, v2}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Le/A;->a:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Le/A;->b:LG/Q;

    iget-object v2, p0, Le/A;->c:LS/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LS/c;->c(I)LG/Q;

    move-result-object v2

    invoke-virtual {v1, v2}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_3
    iget-wide v1, p0, Le/A;->g:D

    cmpl-double v1, v1, p1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method static a(DLS/c;II)Z
    .locals 4

    invoke-static {p2, p3}, Le/o;->a(LS/c;I)D

    move-result-wide v0

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const-wide v2, 0x4076800000000000L

    sub-double v0, v2, v0

    :cond_0
    int-to-double v2, p4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Laa/E;)Ljava/util/Collection;
    .locals 14

    invoke-virtual {p1}, Laa/E;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Laa/E;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, LG/Q;->a(DD)LG/Q;

    move-result-object v2

    invoke-virtual {v2}, LG/Q;->e()D

    move-result-wide v3

    iget-object v1, p0, Le/o;->b:Lad/o;

    invoke-virtual {v1}, Lad/o;->f()I

    move-result v1

    int-to-double v5, v1

    mul-double v8, v3, v5

    iget-object v1, p0, Le/o;->a:LS/b;

    invoke-virtual {v1, v2, v8, v9}, LS/b;->a(LG/Q;D)Ljava/util/Iterator;

    move-result-object v3

    const/16 v1, 0x168

    const/4 v4, 0x0

    invoke-virtual {p1}, Laa/E;->hasBearing()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Laa/E;->e()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Laa/E;->getBearing()F

    move-result v1

    iget-object v4, p0, Le/o;->b:Lad/o;

    invoke-virtual {v4}, Lad/o;->d()I

    move-result v4

    move v6, v4

    move v4, v1

    :goto_0
    const/4 v1, 0x1

    float-to-double v4, v4

    const/4 v7, 0x0

    const/4 v10, -0x1

    invoke-static/range {v1 .. v10}, Le/o;->a(ZLG/Q;Ljava/util/Iterator;DIIDI)Ljava/util/List;

    move-result-object v11

    const-wide v3, 0x7fefffffffffffffL

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/A;

    iget-wide v6, v1, Le/A;->g:D

    cmpg-double v6, v6, v3

    if-gez v6, :cond_0

    iget-wide v3, v1, Le/A;->g:D

    goto :goto_1

    :cond_1
    const-wide/high16 v5, 0x4000

    mul-double/2addr v3, v5

    invoke-virtual {v2}, LG/Q;->e()D

    move-result-wide v1

    iget-object v5, p0, Le/o;->b:Lad/o;

    invoke-virtual {v5}, Lad/o;->g()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v11, v1, v2}, Le/o;->a(Ljava/util/List;D)V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Le/A;

    move-object v10, v0

    iget-object v1, v10, Le/A;->c:LS/c;

    invoke-virtual {v1}, LS/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/o;->a:LS/b;

    iget-object v2, v10, Le/A;->c:LS/c;

    invoke-virtual {v1, v2}, LS/b;->a(LS/c;)LS/c;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v1, Le/A;

    iget-boolean v2, v10, Le/A;->a:Z

    iget-object v3, v10, Le/A;->b:LG/Q;

    iget v5, v10, Le/A;->d:I

    iget v6, v10, Le/A;->e:I

    iget-object v7, v10, Le/A;->f:LG/Q;

    iget-wide v8, v10, Le/A;->g:D

    iget v10, v10, Le/A;->h:I

    invoke-direct/range {v1 .. v10}, Le/A;-><init>(ZLG/Q;LS/c;IILG/Q;DI)V

    invoke-interface {v13, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v11

    :cond_5
    move v6, v1

    goto/16 :goto_0
.end method

.method public a(Laa/E;LF/M;)Ljava/util/Collection;
    .locals 20

    invoke-virtual/range {p1 .. p1}, Laa/E;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Laa/E;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, LG/Q;->a(DD)LG/Q;

    move-result-object v4

    invoke-virtual {v4}, LG/Q;->e()D

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Le/o;->b:Lad/o;

    move-object v5, v0

    invoke-virtual {v5}, Lad/o;->b()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Le/o;->b:Lad/o;

    move-object v7, v0

    invoke-virtual {v7}, Lad/o;->c()I

    move-result v7

    int-to-double v7, v7

    mul-double v17, v15, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Le/o;->b:Lad/o;

    move-object v7, v0

    invoke-virtual {v7}, Lad/o;->h()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v7, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Le/o;->b:Lad/o;

    move-object v9, v0

    invoke-virtual {v9}, Lad/o;->i()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Le/o;->b:Lad/o;

    move-object v11, v0

    invoke-virtual {v11}, Lad/o;->j()I

    move-result v11

    int-to-double v11, v11

    mul-double/2addr v11, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Le/o;->b:Lad/o;

    move-object v13, v0

    invoke-virtual {v13}, Lad/o;->k()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v13, v15

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    double-to-int v5, v5

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move v6, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move v2, v5

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Le/o;->a(LG/Q;LF/M;II)LF/i;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Projection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, LF/i;->b()LG/Q;

    move-result-object v6

    invoke-virtual {v6}, LG/Q;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/o;->a(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, LF/M;->a(LF/i;)D

    move-result-wide v5

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v14}, Le/o;->a(LF/M;DDDDD)Ljava/util/List;

    move-result-object v4

    const-wide/high16 v5, 0x4024

    mul-double v11, v15, v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/p;

    move-object/from16 v0, p0

    iget-object v0, v0, Le/o;->a:LS/b;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Le/p;->a:LG/Q;

    move-object v5, v0

    invoke-virtual {v4, v5, v11, v12}, LS/b;->a(LG/Q;D)Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v0, p1

    iget-boolean v0, v0, Le/p;->d:Z

    move v4, v0

    if-eqz v4, :cond_0

    const/16 v4, 0x168

    move v9, v4

    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Le/p;->a:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Le/p;->c:D

    move-wide v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Le/p;->e:I

    move v10, v0

    move-object/from16 v0, p1

    iget v0, v0, Le/p;->b:I

    move v13, v0

    invoke-static/range {v4 .. v13}, Le/o;->a(ZLG/Q;Ljava/util/Iterator;DIIDI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p1

    iget-boolean v0, v0, Le/p;->d:Z

    move v5, v0

    if-eqz v5, :cond_1

    invoke-static {v4, v11, v12}, Le/o;->a(Ljava/util/List;D)V

    :goto_2
    move-object/from16 v0, v19

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Le/o;->b:Lad/o;

    move-object v4, v0

    invoke-virtual {v4}, Lad/o;->e()I

    move-result v4

    move v9, v4

    goto :goto_1

    :cond_1
    invoke-static {v4}, Le/o;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    return-object v19
.end method
