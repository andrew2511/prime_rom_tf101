.class public Lcom/google/googlenav/aG;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lk/l;

.field private final b:I

.field private final c:I

.field private d:Z


# direct methods
.method private constructor <init>(Lk/l;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/aG;->d:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/googlenav/aG;->a:Lk/l;

    iput p2, p0, Lcom/google/googlenav/aG;->b:I

    iput p3, p0, Lcom/google/googlenav/aG;->c:I

    return-void
.end method

.method public static a(Lk/l;)Lcom/google/googlenav/aG;
    .locals 3

    new-instance v0, Lcom/google/googlenav/aG;

    invoke-interface {p0}, Lk/l;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {p0}, Lk/l;->e()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/aG;-><init>(Lk/l;II)V

    return-object v0
.end method

.method public static a(Lk/l;II)Lcom/google/googlenav/aG;
    .locals 1

    new-instance v0, Lcom/google/googlenav/aG;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/aG;-><init>(Lk/l;II)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/aG;Lcom/google/googlenav/ui/x;II)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/aG;->b()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/google/googlenav/aG;->c()I

    move-result v3

    sub-int v3, p3, v3

    invoke-interface {v0, v1, v2, v3}, Lk/m;->a(Lk/l;II)V

    :cond_0
    return-void
.end method

.method public static b(Lk/l;)Lcom/google/googlenav/aG;
    .locals 3

    new-instance v0, Lcom/google/googlenav/aG;

    invoke-interface {p0}, Lk/l;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {p0}, Lk/l;->e()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/aG;-><init>(Lk/l;II)V

    return-object v0
.end method

.method public static c(Lk/l;)Lcom/google/googlenav/aG;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/googlenav/aG;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/googlenav/aG;-><init>(Lk/l;II)V

    return-object v0
.end method


# virtual methods
.method public a()Lk/l;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aG;->a:Lk/l;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/aG;->d:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/aG;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/aG;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/aG;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aG;->a:Lk/l;

    invoke-interface {v0}, Lk/l;->f()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aG;->a:Lk/l;

    invoke-interface {v0}, Lk/l;->e()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aG;->a:Lk/l;

    invoke-interface {v0}, Lk/l;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method
