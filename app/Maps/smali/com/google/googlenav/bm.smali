.class public Lcom/google/googlenav/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/j;


# instance fields
.field private a:B

.field private b:Lcom/google/googlenav/j;

.field private c:Lcom/google/googlenav/j;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/j;Lcom/google/googlenav/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    iput-object p2, p0, Lcom/google/googlenav/bm;->c:Lcom/google/googlenav/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/j;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    return-object v0
.end method

.method public a(B)V
    .locals 1

    iput-byte p1, p0, Lcom/google/googlenav/bm;->a:B

    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->a(B)V

    iget-object v0, p0, Lcom/google/googlenav/bm;->c:Lcom/google/googlenav/j;

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->a(B)V

    return-void
.end method

.method public b()Lcom/google/googlenav/bf;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/bm;->c:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    const/4 v1, -0x1

    if-gez p1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->b(I)V

    iget-object v0, p0, Lcom/google/googlenav/bm;->c:Lcom/google/googlenav/j;

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->b(I)V

    :goto_0
    if-gez p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bm;->a(B)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->b(I)V

    iget-object v0, p0, Lcom/google/googlenav/bm;->c:Lcom/google/googlenav/j;

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->b(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->b(I)V

    iget-object v0, p0, Lcom/google/googlenav/bm;->c:Lcom/google/googlenav/j;

    iget-object v1, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->b(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/googlenav/bm;->d_()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bm;->a(B)V

    goto :goto_1
.end method

.method public c()I
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/bm;->c:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public c(I)Lcom/google/googlenav/bf;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/bm;->c:Lcom/google/googlenav/j;

    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c_()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/bm;->c:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public d(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/bm;->c:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/bm;->c:Lcom/google/googlenav/j;

    invoke-interface {v1, p1}, Lcom/google/googlenav/j;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/bm;->b:Lcom/google/googlenav/j;

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->d(I)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public d_()B
    .locals 1

    iget-byte v0, p0, Lcom/google/googlenav/bm;->a:B

    return v0
.end method

.method public f()Lcom/google/googlenav/j;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bm;->c:Lcom/google/googlenav/j;

    return-object v0
.end method
