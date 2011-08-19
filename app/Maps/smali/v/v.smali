.class public Lv/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Law/e;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lv/v;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lv/v;->c:Law/e;

    const/4 v0, -0x1

    iput v0, p0, Lv/v;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/v;->d:Z

    return-void
.end method

.method public constructor <init>(Law/e;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv/v;->a:Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lv/v;->b:I

    invoke-virtual {p1, v2}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lv/v;->c:Law/e;

    :cond_0
    invoke-virtual {p1, v3}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Law/e;->b(I)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lv/v;->d:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Law/e;)Lv/v;
    .locals 3

    new-instance v0, Lv/v;

    invoke-direct {v0}, Lv/v;-><init>()V

    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv/v;->a(Ljava/lang/String;)V

    new-instance v1, Law/e;

    sget-object v2, LaX/a;->b:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Law/e;->b(ILaw/e;)V

    invoke-virtual {v0, v1}, Lv/v;->b(Law/e;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lv/v;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lv/v;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lv/v;->d:Z

    return-void
.end method

.method public b()Law/e;
    .locals 1

    iget-object v0, p0, Lv/v;->c:Law/e;

    return-object v0
.end method

.method public b(Law/e;)V
    .locals 0

    iput-object p1, p0, Lv/v;->c:Law/e;

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lv/v;->d:Z

    return v0
.end method

.method public d()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, LaX/a;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lv/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget v1, p0, Lv/v;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x2

    iget v2, p0, Lv/v;->b:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_0
    iget-object v1, p0, Lv/v;->c:Law/e;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lv/v;->c:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_1
    const/4 v1, 0x4

    iget-boolean v2, p0, Lv/v;->d:Z

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    return-object v0
.end method
