.class public Lo/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:Law/e;

.field private c:J

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Law/e;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/i;->b:Law/e;

    iget-object v0, p0, Lo/i;->b:Law/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    iput v0, p0, Lo/i;->d:I

    iput-wide p2, p0, Lo/i;->c:J

    invoke-static {p1, p0}, Lo/i;->a(Law/e;Lo/i;)V

    return-void
.end method

.method public static a(Ljava/io/DataInput;)Lo/i;
    .locals 4

    sget-object v0, Ls/T;->y:Law/f;

    invoke-static {v0, p0}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    new-instance v1, Lo/i;

    invoke-direct {v1}, Lo/i;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Law/e;->e(I)J

    move-result-wide v2

    iput-wide v2, v1, Lo/i;->c:J

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v2

    iput v2, v1, Lo/i;->d:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, v1, Lo/i;->b:Law/e;

    iget-object v0, v1, Lo/i;->b:Law/e;

    invoke-static {v0, v1}, Lo/i;->a(Law/e;Lo/i;)V

    return-object v1
.end method

.method private static a(Law/e;Lo/i;)V
    .locals 7

    const/4 v6, 0x3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lo/i;->a:Ljava/util/List;

    invoke-virtual {p0, v6}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v6, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    iget-object v3, p1, Lo/i;->a:Ljava/util/List;

    new-instance v4, Lo/o;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lo/o;-><init>(Law/e;Lo/ba;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lo/i;->b:Law/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Law/e;->g(II)V

    iget-object v0, p0, Lo/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Lo/o;
    .locals 1

    iget-object v0, p0, Lo/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/o;

    return-object p0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lo/i;->b()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lo/i;->a(I)Lo/o;

    move-result-object v2

    invoke-virtual {v2}, Lo/o;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lo/i;->b(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lo/aH;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lo/i;->b()I

    move-result v1

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lo/i;->a(I)Lo/o;

    move-result-object v2

    invoke-virtual {v2}, Lo/o;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/aH;->a(Ljava/lang/Long;)Lo/U;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lo/i;->b(I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lo/i;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    move v0, v5

    :goto_0
    invoke-virtual {p0}, Lo/i;->b()I

    move-result v1

    iget v2, p0, Lo/i;->d:I

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v5

    :goto_1
    return v0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lo/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c()Law/e;
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->y:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-wide v2, p0, Lo/i;->c:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    const/4 v1, 0x2

    iget v2, p0, Lo/i;->d:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x3

    iget-object v2, p0, Lo/i;->b:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lo/i;->b()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lo/i;->a(I)Lo/o;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lo/o;->a()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lo/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lo/o;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lo/o;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    sub-int v3, v2, v3

    if-eq v1, v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
