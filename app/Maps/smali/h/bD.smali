.class Lh/bD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/a;


# instance fields
.field final synthetic a:Lh/fa;


# direct methods
.method constructor <init>(Lh/fa;)V
    .locals 0

    iput-object p1, p0, Lh/bD;->a:Lh/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/z;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/z;Z)V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/googlenav/z;)V
    .locals 2

    iget-object v0, p0, Lh/bD;->a:Lh/fa;

    iget-object v0, v0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->c()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh/bD;->a:Lh/fa;

    iget-object v0, v0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    :cond_0
    iget-object v0, p0, Lh/bD;->a:Lh/fa;

    const/4 v1, 0x3

    iput v1, v0, Lh/fa;->k:I

    return-void
.end method
