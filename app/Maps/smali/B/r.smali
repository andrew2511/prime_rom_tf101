.class public LB/r;
.super Lj/ad;

# interfaces
.implements Lj/n;


# instance fields
.field private final a:LB/c;

.field private final b:LB/o;

.field private c:Z


# direct methods
.method public constructor <init>(LB/c;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lj/ad;-><init>()V

    iput-object p1, p0, LB/r;->a:LB/c;

    new-instance v0, LB/o;

    invoke-direct {v0, v1, v1}, LB/o;-><init>(II)V

    iput-object v0, p0, LB/r;->b:LB/o;

    iput-boolean v1, p0, LB/r;->c:Z

    return-void
.end method

.method private a(II)LB/l;
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, LB/r;->a:LB/c;

    invoke-virtual {v0, p1, p2}, LB/c;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LB/r;->a:LB/c;

    invoke-virtual {v0, p2}, LB/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sub-int v0, p1, v2

    iget-object v1, p0, LB/r;->a:LB/c;

    invoke-virtual {v1, v0}, LB/c;->b(I)I

    move-result v1

    sub-int/2addr v1, v2

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_1
    new-instance v2, LB/l;

    invoke-direct {v2, v1, v0}, LB/l;-><init>(II)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    sub-int v0, p2, v2

    move v1, p1

    goto :goto_1
.end method


# virtual methods
.method public a()LB/l;
    .locals 3

    iget-boolean v0, p0, LB/r;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LB/r;->c:Z

    :goto_0
    new-instance v0, LB/l;

    iget-object v1, p0, LB/r;->b:LB/o;

    iget v1, v1, LB/o;->a:I

    iget-object v2, p0, LB/r;->b:LB/o;

    iget v2, v2, LB/o;->b:I

    invoke-direct {v0, v1, v2}, LB/l;-><init>(II)V

    return-object v0

    :cond_0
    iget-object v0, p0, LB/r;->a:LB/c;

    iget-object v1, p0, LB/r;->b:LB/o;

    iget v1, v1, LB/o;->a:I

    iget-object v2, p0, LB/r;->b:LB/o;

    iget v2, v2, LB/o;->b:I

    invoke-virtual {v0, v1, v2}, LB/c;->d(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LB/r;->b:LB/o;

    iget v1, v0, LB/o;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LB/o;->b:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, LB/r;->a:LB/c;

    iget-object v1, p0, LB/r;->b:LB/o;

    iget v1, v1, LB/o;->a:I

    invoke-virtual {v0, v1}, LB/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot increment from the last segment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, LB/r;->b:LB/o;

    iget v1, v0, LB/o;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LB/o;->a:I

    iget-object v0, p0, LB/r;->b:LB/o;

    const/4 v1, 0x0

    iput v1, v0, LB/o;->b:I

    goto :goto_0
.end method

.method public a(LB/l;)LB/r;
    .locals 2

    iget-object v0, p0, LB/r;->a:LB/c;

    invoke-virtual {v0, p1}, LB/c;->b(LB/l;)Z

    move-result v0

    const-string v1, "Index out of range."

    invoke-static {v0, v1}, Lae/k;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, LB/r;->b:LB/o;

    iget v1, p1, LB/l;->a:I

    iput v1, v0, LB/o;->a:I

    iget-object v0, p0, LB/r;->b:LB/o;

    iget v1, p1, LB/l;->b:I

    iput v1, v0, LB/o;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LB/r;->c:Z

    return-object p0
.end method

.method public b(LB/l;)LB/l;
    .locals 2

    iget v0, p1, LB/l;->a:I

    iget v1, p1, LB/l;->b:I

    invoke-direct {p0, v0, v1}, LB/r;->a(II)LB/l;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, LB/r;->b:LB/o;

    iget v0, v0, LB/o;->b:I

    iget-object v1, p0, LB/r;->a:LB/c;

    iget-object v2, p0, LB/r;->b:LB/o;

    iget v2, v2, LB/o;->a:I

    invoke-virtual {v1, v2}, LB/c;->b(I)I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, LB/r;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LB/r;->a:LB/c;

    invoke-virtual {v0}, LB/c;->a()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, LB/r;->a:LB/c;

    iget-object v1, p0, LB/r;->b:LB/o;

    iget v1, v1, LB/o;->a:I

    iget-object v2, p0, LB/r;->b:LB/o;

    iget v2, v2, LB/o;->b:I

    invoke-virtual {v0, v1, v2}, LB/c;->c(II)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LB/r;->a()LB/l;

    move-result-object v0

    return-object v0
.end method
