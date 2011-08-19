.class public LW/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Ljava/lang/String;

.field protected final k:J

.field protected l:Ljava/util/List;

.field protected m:I

.field protected n:I


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const v1, 0x7fffffff

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, LW/m;->a:I

    iput v0, p0, LW/m;->b:I

    iput v0, p0, LW/m;->c:I

    iput v0, p0, LW/m;->d:I

    iput v0, p0, LW/m;->e:I

    iput v0, p0, LW/m;->f:I

    iput v0, p0, LW/m;->g:I

    iput v1, p0, LW/m;->h:I

    iput v1, p0, LW/m;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, LW/m;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LW/m;->l:Ljava/util/List;

    iput-wide p1, p0, LW/m;->k:J

    return-void
.end method

.method public static a(Ljava/io/PrintWriter;LW/m;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[cid: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, LW/m;->a:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " lac: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, LW/m;->b:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mcc: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, LW/m;->d:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mnc: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, LW/m;->e:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " radioType: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, LW/m;->m:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " signalStrength: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, LW/m;->n:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " neighbors["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p1, LW/m;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/q;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "]]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuilder;LW/m;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    const-string v0, "[cid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, LW/m;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " lac: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, LW/m;->b:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mcc: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, LW/m;->d:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mnc: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, LW/m;->e:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " radioType: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, LW/m;->m:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " signalStrength: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, LW/m;->n:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " neighbors["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-object v1, p1, LW/m;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/q;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(Law/e;III)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Law/e;->d(I)I

    move-result v0

    if-ne v0, p3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-ne p3, p4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private a(Law/e;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, LW/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p3, p4}, LW/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()LW/m;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, LW/m;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/m;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)Law/e;
    .locals 12

    const-wide v10, 0x4085b38e38e38e39L

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    new-instance v0, Law/e;

    sget-object v1, Lbd/a;->M:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget v1, p0, LW/m;->b:I

    invoke-virtual {v0, v7, v1}, Law/e;->h(II)V

    iget v1, p0, LW/m;->a:I

    invoke-virtual {v0, v8, v1}, Law/e;->h(II)V

    iget v1, p0, LW/m;->e:I

    if-eq v1, v6, :cond_0

    invoke-virtual {v0, v9, v1}, Law/e;->h(II)V

    :cond_0
    iget v1, p0, LW/m;->d:I

    if-eq v1, v6, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    :cond_1
    iget v1, p0, LW/m;->n:I

    const/16 v2, -0x270f

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    :cond_2
    iget v1, p0, LW/m;->c:I

    if-eq v1, v6, :cond_3

    const/16 v1, 0x8

    iget v2, p0, LW/m;->c:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_3
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    long-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_4
    iget v1, p0, LW/m;->h:I

    iget v2, p0, LW/m;->i:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_5

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_5

    new-instance v3, Law/e;

    sget-object v4, Lbd/a;->q:Law/f;

    invoke-direct {v3, v4}, Law/e;-><init>(Law/f;)V

    int-to-double v4, v1

    mul-double/2addr v4, v10

    double-to-int v1, v4

    invoke-virtual {v3, v7, v1}, Law/e;->h(II)V

    int-to-double v1, v2

    mul-double/2addr v1, v10

    double-to-int v1, v1

    invoke-virtual {v3, v8, v1}, Law/e;->h(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Law/e;->a(ILaw/e;)V

    :cond_5
    iget v1, p0, LW/m;->m:I

    if-ne v1, v7, :cond_6

    move v1, v9

    :goto_0
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    return-object v0

    :cond_6
    iget v1, p0, LW/m;->m:I

    if-ne v1, v8, :cond_7

    const/4 v1, 0x4

    goto :goto_0

    :cond_7
    iget v1, p0, LW/m;->m:I

    if-ne v1, v9, :cond_8

    const/4 v1, 0x5

    goto :goto_0

    :cond_8
    move v1, v6

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, LW/m;->n:I

    return-void
.end method

.method public a(LW/m;)Z
    .locals 2

    iget v0, p0, LW/m;->a:I

    iget v1, p1, LW/m;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LW/m;->b:I

    iget v1, p1, LW/m;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Law/e;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0}, LW/m;->j()I

    move-result v0

    invoke-direct {p0, p1, v4, v0, v3}, LW/m;->a(Law/e;III)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, LW/m;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, LW/m;->a(Law/e;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget v1, p0, LW/m;->f:I

    if-ne v1, v3, :cond_0

    move v1, v3

    :goto_0
    invoke-direct {p0, p1, v0, v1, v3}, LW/m;->a(Law/e;III)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    iget v1, p0, LW/m;->g:I

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    invoke-direct {p0, p1, v0, v1, v3}, LW/m;->a(Law/e;III)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_2
    return v0

    :cond_0
    iget v1, p0, LW/m;->g:I

    goto :goto_0

    :cond_1
    iget v1, p0, LW/m;->f:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public b()I
    .locals 1

    iget v0, p0, LW/m;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LW/m;->b:I

    return v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/m;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, LW/m;->l:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, LW/m;->l:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LW/m;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LW/m;->e:I

    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, LW/m;->k:J

    return-wide v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LW/m;->l:Ljava/util/List;

    return-object v0
.end method

.method public h()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, LW/m;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, LW/m;->b:I

    if-eq v0, v1, :cond_0

    iget v0, p0, LW/m;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, LW/m;->e:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Law/e;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Law/e;

    sget-object v1, Lbd/a;->Q:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p0}, LW/m;->j()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    iget v1, p0, LW/m;->f:I

    if-eq v1, v3, :cond_0

    iget v1, p0, LW/m;->g:I

    if-eq v1, v3, :cond_0

    const/4 v1, 0x5

    iget v2, p0, LW/m;->f:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x4

    iget v2, p0, LW/m;->g:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_0
    iget-object v1, p0, LW/m;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, LW/m;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public j()I
    .locals 4

    const/4 v3, 0x3

    const/4 v0, -0x1

    iget v1, p0, LW/m;->m:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, LW/m;->m:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    iget v1, p0, LW/m;->m:I

    if-ne v1, v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, LW/m;->a(Ljava/lang/StringBuilder;LW/m;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
