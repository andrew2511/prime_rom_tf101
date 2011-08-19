.class public Lcom/google/googlenav/ui/Y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aU;


# instance fields
.field private final a:Lu/d;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I


# direct methods
.method public constructor <init>(Lu/d;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Y;->e:I

    iput-object p1, p0, Lcom/google/googlenav/ui/Y;->a:Lu/d;

    iput p2, p0, Lcom/google/googlenav/ui/Y;->b:I

    iput p3, p0, Lcom/google/googlenav/ui/Y;->c:I

    iput p4, p0, Lcom/google/googlenav/ui/Y;->d:I

    return-void
.end method

.method public static a(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const v0, -0x57f0f0f1

    :goto_0
    return v0

    :cond_0
    const v0, -0x57ffaf01

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/Y;->a:Lu/d;

    invoke-virtual {v0}, Lu/d;->J()I

    move-result v0

    return v0
.end method

.method public a(Lf/l;)I
    .locals 1

    invoke-static {p1}, Lcom/google/googlenav/ui/bp;->b(Lf/l;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/Y;->e:I

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Y;->g()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/Y;->b:I

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/Y;->e:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/Y;->a:Lu/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/Y;->a:Lu/d;

    invoke-virtual {v0}, Lu/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/Y;->a:Lu/d;

    invoke-virtual {v0}, Lu/d;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()[Lf/h;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/Y;->a:Lu/d;

    iget v1, p0, Lcom/google/googlenav/ui/Y;->c:I

    iget v2, p0, Lcom/google/googlenav/ui/Y;->d:I

    invoke-virtual {v0, v1, v2}, Lu/d;->a(II)[Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public i()[[Lf/h;
    .locals 0

    const/4 p0, 0x0

    check-cast p0, [[Lf/h;

    return-object p0
.end method
