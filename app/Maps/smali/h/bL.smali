.class Lh/bL;
.super Lcom/google/googlenav/bw;


# instance fields
.field final synthetic a:Lh/k;


# direct methods
.method constructor <init>(Lh/k;Law/e;Lcom/google/googlenav/bv;)V
    .locals 0

    iput-object p1, p0, Lh/bL;->a:Lh/k;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/bw;-><init>(Law/e;Lcom/google/googlenav/bv;)V

    return-void
.end method


# virtual methods
.method public i_()V
    .locals 2

    invoke-super {p0}, Lcom/google/googlenav/bw;->i_()V

    iget-object v0, p0, Lh/bL;->a:Lh/k;

    invoke-static {v0}, Lh/k;->a(Lh/k;)Lo/bj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/bj;->b(Lo/am;)V

    return-void
.end method
