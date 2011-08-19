.class public Lcom/google/googlenav/ui/x;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcom/google/googlenav/ui/x;


# instance fields
.field private a:Lk/m;

.field private b:Lk/m;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lk/m;II)Lcom/google/googlenav/ui/x;
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/googlenav/ui/x;->a(Lk/m;IIIIII)Lcom/google/googlenav/ui/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lk/m;IIIIII)Lcom/google/googlenav/ui/x;
    .locals 8

    sget-object v0, Lcom/google/googlenav/ui/x;->i:Lcom/google/googlenav/ui/x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/x;

    invoke-direct {v0}, Lcom/google/googlenav/ui/x;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/x;->i:Lcom/google/googlenav/ui/x;

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/x;->i:Lcom/google/googlenav/ui/x;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/x;->b(Lk/m;IIIIII)V

    sget-object v0, Lcom/google/googlenav/ui/x;->i:Lcom/google/googlenav/ui/x;

    return-object v0
.end method

.method public static b(Lk/m;II)Lcom/google/googlenav/ui/x;
    .locals 8

    const/4 v4, 0x0

    new-instance v0, Lcom/google/googlenav/ui/x;

    invoke-direct {v0}, Lcom/google/googlenav/ui/x;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, v4

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/x;->b(Lk/m;IIIIII)V

    return-object v0
.end method

.method private b(Lk/m;IIIIII)V
    .locals 6

    iput p2, p0, Lcom/google/googlenav/ui/x;->c:I

    iput p3, p0, Lcom/google/googlenav/ui/x;->d:I

    iput p4, p0, Lcom/google/googlenav/ui/x;->e:I

    iput p5, p0, Lcom/google/googlenav/ui/x;->f:I

    iput p6, p0, Lcom/google/googlenav/ui/x;->g:I

    iput p7, p0, Lcom/google/googlenav/ui/x;->h:I

    iput-object p1, p0, Lcom/google/googlenav/ui/x;->a:Lk/m;

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    if-ne p6, p2, :cond_0

    if-ne p7, p3, :cond_0

    iput-object p1, p0, Lcom/google/googlenav/ui/x;->b:Lk/m;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/x;->b:Lk/m;

    instance-of v0, v0, Lk/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/x;->b:Lk/m;

    check-cast v0, Lk/n;

    iget-object v1, p0, Lcom/google/googlenav/ui/x;->a:Lk/m;

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lk/n;->a(Lk/m;IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Lk/n;

    iget-object v1, p0, Lcom/google/googlenav/ui/x;->a:Lk/m;

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lk/n;-><init>(Lk/m;IIII)V

    iput-object v0, p0, Lcom/google/googlenav/ui/x;->b:Lk/m;

    goto :goto_0
.end method


# virtual methods
.method public a()Lk/m;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/x;->a:Lk/m;

    return-object v0
.end method

.method public b()Lk/m;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/x;->b:Lk/m;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/x;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/x;->f:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/x;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/x;->h:I

    return v0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/x;->b:Lk/m;

    iget-object v1, p0, Lcom/google/googlenav/ui/x;->a:Lk/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/x;->a:Lk/m;

    const/high16 v1, -0x100

    invoke-interface {v0, v1}, Lk/m;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/x;->a:Lk/m;

    iget v1, p0, Lcom/google/googlenav/ui/x;->e:I

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/google/googlenav/ui/x;->f:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/googlenav/ui/x;->g:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/google/googlenav/ui/x;->h:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lk/m;->c(IIII)V

    return-void
.end method
