.class Lh/Y;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cd;


# instance fields
.field final synthetic a:Lh/dR;


# direct methods
.method constructor <init>(Lh/dR;)V
    .locals 0

    iput-object p1, p0, Lh/Y;->a:Lh/dR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lh/Y;->a:Lh/dR;

    iget-object v0, v0, Lh/dR;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/Y;->a:Lh/dR;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Lh/dR;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/Y;->a:Lh/dR;

    invoke-virtual {v0}, Lh/dR;->h()V

    return-void
.end method

.method public a(Law/e;Ljava/util/List;Law/e;J)V
    .locals 2

    iget-object v0, p0, Lh/Y;->a:Lh/dR;

    iget-object v0, v0, Lh/dR;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lh/Y;->a:Lh/dR;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Lh/dR;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/Y;->a:Lh/dR;

    invoke-virtual {v0}, Lh/dR;->h()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/Y;->a:Lh/dR;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Lh/dR;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/Y;->a:Lh/dR;

    invoke-static {v0}, Lh/dR;->a(Lh/dR;)Lh/dw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lh/dw;->a(Ljava/util/List;)V

    goto :goto_0
.end method
