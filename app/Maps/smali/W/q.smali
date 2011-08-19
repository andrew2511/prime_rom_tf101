.class public LW/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LW/q;->a:I

    iput p2, p0, LW/q;->b:I

    iput p3, p0, LW/q;->c:I

    iput p4, p0, LW/q;->d:I

    return-void
.end method


# virtual methods
.method public a(LW/m;)Law/e;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Law/e;

    sget-object v1, Lbd/a;->M:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    iget v2, p0, LW/q;->a:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x1

    iget v2, p0, LW/q;->b:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x5

    iget v2, p0, LW/q;->d:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget v1, p0, LW/q;->c:I

    if-eq v1, v3, :cond_0

    const/16 v1, 0x8

    iget v2, p0, LW/q;->c:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_0
    invoke-virtual {p1}, LW/m;->d()I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    :cond_1
    invoke-virtual {p1}, LW/m;->e()I

    move-result v1

    if-eq v1, v3, :cond_2

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LW/q;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, LW/q;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LW/q;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, LW/q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LW/q;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LW/q;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
