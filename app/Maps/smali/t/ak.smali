.class Lt/ak;
.super Ljava/lang/Object;


# instance fields
.field public a:LG/i;

.field public b:Z


# direct methods
.method public constructor <init>(LG/i;F)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/ak;->a:LG/i;

    iget-object v0, p0, Lt/ak;->a:LG/i;

    invoke-virtual {v0}, LG/i;->c()LG/m;

    move-result-object v0

    invoke-virtual {v0, v2}, LG/m;->c(I)F

    move-result v0

    invoke-static {v0, p2}, LG/H;->a(FF)F

    move-result v0

    const/high16 v1, 0x42b4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lt/ak;->b:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()LG/Q;
    .locals 2

    iget-object v0, p0, Lt/ak;->a:LG/i;

    invoke-virtual {v0}, LG/i;->c()LG/m;

    move-result-object v0

    iget-boolean v1, p0, Lt/ak;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LG/m;->c()LG/Q;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LG/m;->a(I)LG/Q;

    move-result-object v0

    goto :goto_0
.end method

.method public a(LG/i;)Z
    .locals 5

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    iget-object v1, p0, Lt/ak;->a:LG/i;

    invoke-virtual {v1}, LG/i;->d()I

    move-result v1

    if-ge v0, v1, :cond_2

    move v1, v4

    :goto_1
    invoke-virtual {p1}, LG/i;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lt/ak;->a:LG/i;

    invoke-virtual {v2, v0}, LG/i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, LG/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_2
.end method

.method public b()F
    .locals 3

    iget-object v0, p0, Lt/ak;->a:LG/i;

    invoke-virtual {v0}, LG/i;->c()LG/m;

    move-result-object v0

    iget-boolean v1, p0, Lt/ak;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LG/m;->b()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, LG/m;->c(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LG/m;->c(I)F

    move-result v0

    invoke-static {v0}, Lt/n;->a(F)F

    move-result v0

    goto :goto_0
.end method
