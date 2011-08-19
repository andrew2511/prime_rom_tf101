.class public LG/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:LG/A;

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:Lt/x;

.field private e:Z


# direct methods
.method protected constructor <init>(LG/A;Ljava/util/List;IZLt/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/e;->a:LG/A;

    iput-object p2, p0, LG/e;->b:Ljava/util/List;

    iput p3, p0, LG/e;->c:I

    iput-boolean p4, p0, LG/e;->e:Z

    iput-object p5, p0, LG/e;->d:Lt/x;

    return-void
.end method

.method public static a(Law/e;Lt/x;)LG/e;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    new-instance v1, LG/A;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, LG/A;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Law/e;->i(I)I

    move-result v0

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    move v3, v5

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v6, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-static {v4}, LG/B;->a(Law/e;)LG/B;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Law/e;->d(I)I

    move-result v3

    if-ltz v3, :cond_1

    if-lt v3, v0, :cond_2

    :cond_1
    move v3, v5

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, -0x1

    move v3, v0

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Law/e;->b(I)Z

    move-result v4

    new-instance v0, LG/e;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LG/e;-><init>(LG/A;Ljava/util/List;IZLt/x;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    if-ne v2, v5, :cond_2

    array-length v2, v1

    if-eq v2, v5, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    aget-object v0, v0, v4

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(LG/B;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, LG/B;->b()LG/A;

    move-result-object v0

    invoke-virtual {p0, v0}, LG/e;->a(LG/A;)LG/B;

    move-result-object v0

    iget-object v1, p0, LG/e;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public a()LG/A;
    .locals 1

    iget-object v0, p0, LG/e;->a:LG/A;

    return-object v0
.end method

.method public a(I)LG/B;
    .locals 9

    const/4 v3, 0x0

    const/high16 v8, -0x8000

    if-ne p1, v8, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iget-object v2, p0, LG/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/B;

    invoke-virtual {p0}, LG/B;->e()I

    move-result v4

    if-eq v4, v8, :cond_1

    int-to-long v4, p1

    invoke-virtual {p0}, LG/B;->e()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    move-wide v0, v4

    move-object v3, p0

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public a(LG/A;)LG/B;
    .locals 3

    iget-object v0, p0, LG/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/B;

    invoke-virtual {p0}, LG/B;->b()LG/A;

    move-result-object v1

    invoke-virtual {p1, v1}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, LG/A;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, LG/B;->b()LG/A;

    move-result-object v2

    invoke-virtual {v2}, LG/A;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LG/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(LG/Z;)LG/B;
    .locals 1

    invoke-virtual {p1}, LG/Z;->a()LG/A;

    move-result-object v0

    invoke-virtual {p0, v0}, LG/e;->a(LG/A;)LG/B;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, LG/Z;->b()I

    move-result v0

    invoke-virtual {p0, v0}, LG/e;->a(I)LG/B;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(LG/Z;)I
    .locals 1

    invoke-virtual {p1}, LG/Z;->a()LG/A;

    move-result-object v0

    invoke-virtual {p0, v0}, LG/e;->a(LG/A;)LG/B;

    move-result-object v0

    invoke-virtual {p0, v0}, LG/e;->a(LG/B;)I

    move-result v0

    return v0
.end method

.method public b(I)LG/B;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, LG/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, LG/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/B;

    move-object v0, p0

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LG/e;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()LG/B;
    .locals 1

    iget v0, p0, LG/e;->c:I

    invoke-virtual {p0, v0}, LG/e;->b(I)LG/B;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LG/e;->d:Lt/x;

    invoke-virtual {v0}, Lt/x;->a()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Building: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/e;->a:LG/A;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
