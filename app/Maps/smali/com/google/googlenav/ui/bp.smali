.class public Lcom/google/googlenav/ui/bp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aU;


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private final c:Lu/v;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lu/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/bp;->d:I

    const v0, -0x3fbf5701

    iput v0, p0, Lcom/google/googlenav/ui/bp;->e:I

    iput-object p1, p0, Lcom/google/googlenav/ui/bp;->c:Lu/v;

    return-void
.end method

.method public static b(Lf/l;)I
    .locals 2

    invoke-virtual {p0}, Lf/l;->a()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/bp;->j()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/bp;->k()I

    move-result v0

    goto :goto_0
.end method

.method private static j()I
    .locals 2

    sget v0, Lcom/google/googlenav/ui/bp;->a:I

    if-nez v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/bp;->a:I

    :cond_0
    sget v0, Lcom/google/googlenav/ui/bp;->a:I

    return v0
.end method

.method private static k()I
    .locals 2

    sget v0, Lcom/google/googlenav/ui/bp;->b:I

    if-nez v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/bp;->b:I

    :cond_0
    sget v0, Lcom/google/googlenav/ui/bp;->b:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bp;->c:Lu/v;

    invoke-virtual {v0}, Lu/v;->J()I

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

    iput p1, p0, Lcom/google/googlenav/ui/bp;->d:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/bp;->e:I

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bp;->h()[Lf/h;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/bp;->e:I

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

    iget v0, p0, Lcom/google/googlenav/ui/bp;->d:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bp;->c:Lu/v;

    invoke-virtual {v0}, Lu/v;->v()Z

    move-result v0

    return v0
.end method

.method public h()[Lf/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bp;->c:Lu/v;

    invoke-virtual {v0}, Lu/v;->b_()[Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public i()[[Lf/h;
    .locals 0

    const/4 p0, 0x0

    check-cast p0, [[Lf/h;

    return-object p0
.end method
