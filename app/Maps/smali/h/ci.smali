.class Lh/ci;
.super Ljava/lang/Object;

# interfaces
.implements LaD/n;


# instance fields
.field final synthetic a:Lh/eB;


# direct methods
.method constructor <init>(Lh/eB;)V
    .locals 0

    iput-object p1, p0, Lh/ci;->a:Lh/eB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ar_()V
    .locals 2

    iget-object v0, p0, Lh/ci;->a:Lh/eB;

    iget-object v0, v0, Lh/eB;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ci;->a:Lh/eB;

    invoke-static {v0}, Lh/eB;->a(Lh/eB;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh/ci;->a:Lh/eB;

    iget-object v0, v0, Lh/eB;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    sget-object v1, Lx/f;->a:Lx/f;

    invoke-virtual {v0, v1}, Lx/z;->a(Lx/f;)V

    iget-object v0, p0, Lh/ci;->a:Lh/eB;

    iget-object v0, v0, Lh/eB;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    :cond_0
    return-void
.end method
