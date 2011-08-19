.class Lh/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lh/bw;


# direct methods
.method constructor <init>(Lh/bw;)V
    .locals 0

    iput-object p1, p0, Lh/c;->a:Lh/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh/c;->a:Lh/bw;

    iget-object v0, v0, Lh/bw;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    invoke-static {}, Lo/ao;->l()Lo/ao;

    move-result-object v0

    invoke-virtual {v0}, Lo/ao;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "google.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/c;->a:Lh/bw;

    iget-object v0, v0, Lh/bw;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x82

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/c;->a:Lh/bw;

    iget-object v0, v0, Lh/bw;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
