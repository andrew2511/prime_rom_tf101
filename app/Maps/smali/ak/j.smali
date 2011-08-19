.class public Lak/j;
.super Lak/m;


# instance fields
.field private final a:Law/e;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lak/j;->a:Law/e;

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lak/j;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v0}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private l()Ljava/lang/String;
    .locals 1

    const-string v0, "Cohort"

    invoke-static {v0}, Lac/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lak/j;->a:Law/e;

    invoke-static {p1, v0}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Ls/A;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lak/j;->a:Law/e;

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILjava/lang/String;)V

    const-string v1, "Cohort"

    invoke-static {v1, v0}, Lac/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2
.end method

.method public e_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
