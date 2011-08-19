.class public Lo/bI;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lo/bU;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/bU;

    const-string v1, "location_history"

    const/16 v2, 0x1e

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lo/bU;-><init>(Ljava/lang/String;IJ)V

    iput-object v0, p0, Lo/bI;->a:Lo/bU;

    return-void
.end method

.method private a(Ljava/util/Vector;II)Ljava/util/Vector;
    .locals 7

    const/4 v6, 0x6

    new-instance v0, Ljava/util/Vector;

    sub-int v1, p3, p2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    invoke-virtual {p0, v6}, Law/e;->i(I)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v6, v3}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private a(Law/e;Law/e;)Z
    .locals 1

    iget-object v0, p0, Lo/bI;->a:Lo/bU;

    invoke-virtual {v0, p1, p2}, Lo/bU;->b(Law/e;Law/e;)Z

    move-result v0

    return v0
.end method

.method private b(Law/e;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Law/e;->d(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private d(I)J
    .locals 2

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lo/bI;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lo/bI;->b()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/bI;->a()J

    move-result-wide v0

    goto :goto_0
.end method

.method private e(I)J
    .locals 2

    invoke-static {p1}, Lo/aX;->d(I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method a()J
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/bI;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method a(Law/e;I)Ljava/util/Vector;
    .locals 5

    const/4 v1, 0x1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1, v1}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Law/e;->d(I)I

    move-result v4

    if-ne v4, p2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Filter location failed"

    invoke-static {v4, v3}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lo/bI;->a:Lo/bU;

    invoke-virtual {v3}, Lo/bU;->d()V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method a(Ljava/util/Vector;J)Ljava/util/Vector;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move-object v4, v7

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p0, v6}, Law/e;->e(I)J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-gtz v4, :cond_0

    move-object v3, p0

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Law/e;->e(I)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v3, v3, -0x1

    move-object v4, p0

    goto :goto_0

    :cond_1
    move-object v0, v7

    goto :goto_2

    :cond_2
    move-object v3, v4

    goto :goto_1
.end method

.method public a(Law/e;)V
    .locals 1

    invoke-direct {p0, p1}, Lo/bI;->b(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/bI;->a:Lo/bU;

    invoke-virtual {v0, p1}, Lo/bU;->a(Law/e;)V

    goto :goto_0
.end method

.method public a(I)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lo/bI;->e()Law/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Law/e;->i(I)I

    move-result v1

    if-nez v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lo/bI;->a(Law/e;I)Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, p1}, Lo/bI;->d(I)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lo/bI;->a(Ljava/util/Vector;J)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p0, p1}, Lo/bI;->b(I)I

    move-result v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v2, v0, :cond_3

    :cond_1
    if-nez v1, :cond_2

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    if-ne p1, v3, :cond_5

    invoke-virtual {p0, v1}, Lo/bI;->a(Ljava/util/Vector;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0, v1}, Lo/bI;->a(Law/e;Ljava/util/Vector;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_0
.end method

.method a(Law/e;Ljava/util/Vector;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    invoke-direct {p0, p1, v0}, Lo/bI;->a(Law/e;Law/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method a(Ljava/util/Vector;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v7, v0}, Lo/bI;->a(Ljava/util/Vector;II)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lo/bI;->a(Ljava/util/Vector;II)Ljava/util/Vector;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-wide v9, v2

    move-wide v3, v9

    move v2, v7

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/high16 v5, 0x3ff0

    add-double/2addr v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {p0, p1, v7, v0}, Lo/bI;->a(Ljava/util/Vector;II)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v3, v0

    invoke-virtual {p0, v8}, Lo/bI;->c(I)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    move v0, v8

    :goto_1
    return v0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method b(I)I
    .locals 1

    invoke-static {p1}, Lo/aX;->c(I)I

    move-result v0

    return v0
.end method

.method b()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/bI;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method c(I)D
    .locals 2

    invoke-static {p1}, Lo/aX;->b(I)D

    move-result-wide v0

    return-wide v0
.end method

.method c()J
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/bI;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lo/bI;->a:Lo/bU;

    invoke-virtual {v0}, Lo/bU;->c()V

    return-void
.end method

.method e()Law/e;
    .locals 1

    iget-object v0, p0, Lo/bI;->a:Lo/bU;

    invoke-virtual {v0}, Lo/bU;->a()Law/e;

    move-result-object v0

    return-object v0
.end method
