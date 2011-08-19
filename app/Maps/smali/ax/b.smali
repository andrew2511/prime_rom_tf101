.class public Lax/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:J

.field private final f:LaF/a;


# direct methods
.method public constructor <init>(IIIIJLaF/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lax/b;->a:I

    iput p2, p0, Lax/b;->b:I

    iput p3, p0, Lax/b;->c:I

    iput p4, p0, Lax/b;->d:I

    iput-wide p5, p0, Lax/b;->e:J

    iput-object p7, p0, Lax/b;->f:LaF/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget v0, p0, Lax/b;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lax/b;->a:I

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lax/b;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lax/b;->a()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lax/b;->b()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lax/b;->b:I

    if-eq v2, v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lax/b;->b:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lax/b;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lax/b;->f()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lax/b;->g()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    const/4 v0, 0x7

    iget v1, p0, Lax/b;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lax/b;->c:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lax/b;->d:I

    return v0
.end method

.method public m()LaF/a;
    .locals 1

    iget-object v0, p0, Lax/b;->f:LaF/a;

    return-object v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lax/b;->e:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
