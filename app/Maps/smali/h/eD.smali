.class public Lh/eD;
.super Lh/eR;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lh/dm;

.field private c:Lh/af;

.field private d:Lh/dr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lh/eD;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lh/eD;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lh/eY;LaU/a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/eD;->b:Lh/dm;

    return-void
.end method

.method static synthetic a(Lh/eD;)Lh/dm;
    .locals 1

    iget-object v0, p0, Lh/eD;->b:Lh/dm;

    return-object v0
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lh/eD;->b:Lh/dm;

    const/4 v1, 0x0

    iput-object v1, p0, Lh/eD;->b:Lh/dm;

    invoke-virtual {p0}, Lh/eD;->v()V

    iput-object v0, p0, Lh/eD;->b:Lh/dm;

    invoke-virtual {p0}, Lh/eD;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/eD;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eD;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    :cond_0
    iget v0, p0, Lh/eD;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/eD;->d()V

    iget v0, p0, Lh/eD;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/eD;->j:Lx/J;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/eD;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    :cond_1
    iget v0, p0, Lh/eD;->k:I

    goto :goto_0
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lh/eD;->k:I

    new-instance v0, Lh/dr;

    iget-object v1, p0, Lh/eD;->b:Lh/dm;

    iget-object v1, v1, Lh/dm;->a:Ljava/util/List;

    new-instance v2, Lh/L;

    invoke-direct {v2, p0}, Lh/L;-><init>(Lh/eD;)V

    invoke-direct {v0, v1, v2}, Lh/dr;-><init>(Ljava/util/List;Lh/eF;)V

    iput-object v0, p0, Lh/eD;->d:Lh/dr;

    new-instance v0, Lh/af;

    iget-object v1, p0, Lh/eD;->b:Lh/dm;

    iget-boolean v1, v1, Lh/dm;->b:Z

    invoke-direct {v0, v1}, Lh/af;-><init>(Z)V

    iput-object v0, p0, Lh/eD;->c:Lh/af;

    iget-object v0, p0, Lh/eD;->c:Lh/af;

    iget-object v1, p0, Lh/eD;->d:Lh/dr;

    invoke-virtual {v1}, Lh/dr;->a()Lh/bX;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/af;->a(Lh/bX;)V

    iget-object v0, p0, Lh/eD;->d:Lh/dr;

    iget-object v1, p0, Lh/eD;->c:Lh/af;

    invoke-virtual {v0, v1}, Lh/dr;->a(Lh/af;)V

    new-instance v0, Lx/z;

    iget-object v1, p0, Lh/eD;->c:Lh/af;

    invoke-direct {v0, v1}, Lx/z;-><init>(LI/n;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/eD;->j:Lx/J;

    iget-object v0, p0, Lh/eD;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    iget-object v0, p0, Lh/eD;->d:Lh/dr;

    invoke-virtual {v0}, Lh/dr;->b()V

    return-void
.end method

.method protected a(Ljava/util/List;ZLh/M;)V
    .locals 2

    const-string v0, "o"

    invoke-static {v0}, Lo/A;->g(Ljava/lang/String;)V

    sget-boolean v0, Lh/eD;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lh/dm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh/dm;-><init>(Lh/L;)V

    iput-object p1, v0, Lh/dm;->a:Ljava/util/List;

    iput-boolean p2, v0, Lh/dm;->b:Z

    iput-object p3, v0, Lh/dm;->c:Lh/M;

    iput-object v0, p0, Lh/eD;->b:Lh/dm;

    invoke-super {p0}, Lh/eR;->u()V

    return-void
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lh/eD;->d:Lh/dr;

    invoke-virtual {v0, v1}, Lh/dr;->a(Lh/af;)V

    iget-object v0, p0, Lh/eD;->c:Lh/af;

    invoke-virtual {v0, v1}, Lh/af;->a(Lh/bX;)V

    iput-object v1, p0, Lh/eD;->c:Lh/af;

    iput-object v1, p0, Lh/eD;->d:Lh/dr;

    iput-object v1, p0, Lh/eD;->b:Lh/dm;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lh/eD;->b:Lh/dm;

    iget-object v0, v0, Lh/dm;->c:Lh/M;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eD;->b:Lh/dm;

    iget-object v0, v0, Lh/dm;->c:Lh/M;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lh/M;->a(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lh/eD;->v()V

    const-string v0, "d"

    invoke-static {v0}, Lo/A;->g(Ljava/lang/String;)V

    return-void
.end method
