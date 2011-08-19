.class public Lu/f;
.super Ljava/lang/Object;

# interfaces
.implements LA/f;
.implements Lcom/google/googlenav/bf;


# instance fields
.field protected a:Lu/o;

.field private b:Lu/e;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lf/h;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lu/e;IIILf/h;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lu/f;->i:Z

    iput-object p1, p0, Lu/f;->b:Lu/e;

    iput p2, p0, Lu/f;->e:I

    iput p3, p0, Lu/f;->c:I

    iput p4, p0, Lu/f;->d:I

    iput-object p5, p0, Lu/f;->f:Lf/h;

    iput-object p6, p0, Lu/f;->g:Ljava/lang/String;

    iput v0, p0, Lu/f;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lu/f;->a:Lu/o;

    return-void
.end method


# virtual methods
.method public F()B
    .locals 3

    const/4 v2, 0x3

    iget v0, p0, Lu/f;->e:I

    if-nez v0, :cond_0

    iget v0, p0, Lu/f;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lu/f;->c:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public G()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public H()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lu/f;->c:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lu/f;->h:I

    return-void
.end method

.method public a(Lf/h;)V
    .locals 0

    iput-object p1, p0, Lu/f;->f:Lf/h;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lu/f;->i:Z

    return-void
.end method

.method public ao()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public ap()LA/c;
    .locals 3

    iget-object v0, p0, Lu/f;->b:Lu/e;

    invoke-virtual {v0}, Lu/e;->C()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    iget-object v1, p0, Lu/f;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lu/f;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    new-instance v1, LA/c;

    const-string v2, "DirectionsFeature"

    invoke-direct {v1, v2, v0}, LA/c;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lu/f;->d:I

    return v0
.end method

.method public c()Lu/e;
    .locals 1

    iget-object v0, p0, Lu/f;->b:Lu/e;

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lu/f;->b:Lu/e;

    invoke-virtual {v0}, Lu/e;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lu/f;->c:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lu/f;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget v0, p0, Lu/f;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lf/h;
    .locals 1

    iget-object v0, p0, Lu/f;->f:Lf/h;

    return-object v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lu/f;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lu/f;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, Lu/f;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lu/f;->a:Lu/o;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lu/f;->h:I

    return v0
.end method

.method public o()Z
    .locals 1

    iget v0, p0, Lu/f;->h:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lu/f;->e:I

    return v0
.end method

.method public q()Lu/o;
    .locals 1

    iget-object v0, p0, Lu/f;->a:Lu/o;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lu/f;->i:Z

    return v0
.end method
