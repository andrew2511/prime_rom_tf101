.class Lh/fp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/k;


# instance fields
.field final synthetic a:Lh/v;


# direct methods
.method constructor <init>(Lh/v;)V
    .locals 0

    iput-object p1, p0, Lh/fp;->a:Lh/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 2

    iget-object v0, p0, Lh/fp;->a:Lh/v;

    iget-object v0, v0, Lh/v;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/fp;->a:Lh/v;

    iget-object v1, p0, Lh/fp;->a:Lh/v;

    invoke-static {v1}, Lh/v;->c(Lh/v;)Lcom/google/googlenav/c;

    move-result-object v1

    invoke-static {v0, v1}, Lh/v;->b(Lh/v;Lcom/google/googlenav/c;)V

    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public an_()V
    .locals 0

    return-void
.end method

.method public ao_()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lh/fp;->a:Lh/v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lh/v;->a(Lh/v;Z)Z

    return-void
.end method
