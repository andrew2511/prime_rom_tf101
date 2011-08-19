.class public Lcom/google/googlenav/layer/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/googlenav/layer/s;

.field private final f:I


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/b;->a:Ljava/lang/String;

    invoke-static {p1, v1, v1}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/b;->b:I

    const/4 v0, 0x3

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/b;->c:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/b;->d:Ljava/lang/String;

    const/4 v0, 0x6

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/b;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/layer/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/googlenav/layer/b;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/b;->d:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/googlenav/layer/b;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/layer/b;->f:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/layer/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/layer/b;->e:Lcom/google/googlenav/layer/s;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/layer/b;->f:I

    return v0
.end method

.method public e()Lcom/google/googlenav/layer/s;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/b;->e:Lcom/google/googlenav/layer/s;

    return-object v0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/layer/b;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/layer/b;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/googlenav/layer/b;->b:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/a;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/layer/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlenav/layer/b;->b:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget-object v1, p0, Lcom/google/googlenav/layer/b;->c:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/layer/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/layer/b;->d:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlenav/layer/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/google/googlenav/layer/b;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/googlenav/layer/b;->f:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "categoryId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/layer/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
