.class public LG/M;
.super LG/E;


# direct methods
.method public constructor <init>(LG/d;II)V
    .locals 2

    const/4 v0, 0x0

    or-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, p1, v1, p3}, LG/E;-><init>(LG/ac;LG/d;II)V

    return-void
.end method


# virtual methods
.method public a()LG/d;
    .locals 1

    iget-object v0, p0, LG/M;->b:LG/d;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, LG/M;->c:I

    invoke-static {v0}, LG/E;->a(I)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LG/M;->d:I

    return v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, LG/M;->c:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method
