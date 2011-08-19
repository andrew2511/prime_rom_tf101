.class public Lv/A;
.super Ljava/lang/Object;


# static fields
.field private static a:Lv/A;


# instance fields
.field private b:Lv/f;

.field private c:Lv/r;

.field private d:Lv/r;

.field private e:Lv/B;


# direct methods
.method private constructor <init>(Lh/eY;)V
    .locals 10

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv/f;

    invoke-direct {v0, p1}, Lv/f;-><init>(Lh/eY;)V

    iput-object v0, p0, Lv/A;->b:Lv/f;

    new-instance v0, Lv/B;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lv/B;-><init>(Ln/a;)V

    iput-object v0, p0, Lv/A;->e:Lv/B;

    new-instance v0, Lv/r;

    iget-object v2, p0, Lv/A;->b:Lv/f;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v4

    sget-object v6, Ls/i;->a:Law/f;

    const-string v7, "STARRING"

    iget-object v8, p0, Lv/A;->e:Lv/B;

    move-object v1, p1

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lv/r;-><init>(Lh/eY;Lv/g;Lak/h;Ln/a;ILaw/f;Ljava/lang/String;Lv/B;Z)V

    iput-object v0, p0, Lv/A;->c:Lv/r;

    const/4 v9, 0x0

    new-instance v0, Lv/r;

    iget-object v2, p0, Lv/A;->b:Lv/f;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v4

    const/4 v5, 0x3

    sget-object v6, Ls/u;->a:Law/f;

    const-string v7, "RECENT"

    iget-object v8, p0, Lv/A;->e:Lv/B;

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lv/r;-><init>(Lh/eY;Lv/g;Lak/h;Ln/a;ILaw/f;Ljava/lang/String;Lv/B;Z)V

    iput-object v0, p0, Lv/A;->d:Lv/r;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, p0, Lv/A;->c:Lv/r;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->c(Lcom/google/googlenav/login/h;)V

    iget-object v0, p0, Lv/A;->d:Lv/r;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, p0, Lv/A;->d:Lv/r;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->c(Lcom/google/googlenav/login/h;)V

    :cond_0
    return-void
.end method

.method public static a()Lv/A;
    .locals 1

    sget-object v0, Lv/A;->a:Lv/A;

    return-object v0
.end method

.method public static a(Lh/eY;)Lv/A;
    .locals 1

    sget-object v0, Lv/A;->a:Lv/A;

    if-nez v0, :cond_1

    new-instance v0, Lv/A;

    invoke-direct {v0, p0}, Lv/A;-><init>(Lh/eY;)V

    sput-object v0, Lv/A;->a:Lv/A;

    :cond_0
    :goto_0
    sget-object v0, Lv/A;->a:Lv/A;

    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    sget-object v0, Lv/A;->a:Lv/A;

    invoke-direct {v0, p0}, Lv/A;->b(Lh/eY;)V

    goto :goto_0
.end method

.method private b(Lh/eY;)V
    .locals 1

    iget-object v0, p0, Lv/A;->c:Lv/r;

    invoke-virtual {v0, p1}, Lv/r;->a(Lh/eY;)V

    iget-object v0, p0, Lv/A;->d:Lv/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/A;->d:Lv/r;

    invoke-virtual {v0, p1}, Lv/r;->a(Lh/eY;)V

    :cond_0
    iget-object v0, p0, Lv/A;->b:Lv/f;

    invoke-virtual {v0, p1}, Lv/f;->a(Lh/eY;)V

    return-void
.end method


# virtual methods
.method public b()Lv/m;
    .locals 1

    iget-object v0, p0, Lv/A;->b:Lv/f;

    return-object v0
.end method

.method public c()Lv/t;
    .locals 1

    iget-object v0, p0, Lv/A;->c:Lv/r;

    return-object v0
.end method

.method public d()Lv/t;
    .locals 1

    iget-object v0, p0, Lv/A;->d:Lv/r;

    return-object v0
.end method

.method public e()Lv/B;
    .locals 1

    iget-object v0, p0, Lv/A;->e:Lv/B;

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lv/A;->b:Lv/f;

    invoke-virtual {v0}, Lv/f;->i()V

    iget-object v0, p0, Lv/A;->c:Lv/r;

    invoke-virtual {v0}, Lv/r;->k()V

    iget-object v0, p0, Lv/A;->d:Lv/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/A;->d:Lv/r;

    invoke-virtual {v0}, Lv/r;->k()V

    :cond_0
    return-void
.end method
