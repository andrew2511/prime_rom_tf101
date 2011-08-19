.class public abstract Lcom/google/googlenav/ui/br;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private c:I

.field private d:I

.field private final e:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/ui/br;->a:I

    iput p2, p0, Lcom/google/googlenav/ui/br;->b:I

    iput p3, p0, Lcom/google/googlenav/ui/br;->c:I

    iput p4, p0, Lcom/google/googlenav/ui/br;->d:I

    iput p5, p0, Lcom/google/googlenav/ui/br;->e:I

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/br;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/br;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/br;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/br;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/br;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/br;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/br;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/br;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/br;->a:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/br;->b:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/br;->c:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/br;->d:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/br;->e:I

    return v0
.end method
