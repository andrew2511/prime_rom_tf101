.class Lh/bB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;


# instance fields
.field final synthetic a:Lh/bg;

.field final synthetic b:Lh/fa;


# direct methods
.method constructor <init>(Lh/fa;Lh/bg;)V
    .locals 0

    iput-object p1, p0, Lh/bB;->b:Lh/fa;

    iput-object p2, p0, Lh/bB;->a:Lh/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Law/e;)V
    .locals 2

    iget-object v0, p0, Lh/bB;->b:Lh/fa;

    iget-object v0, v0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->d(Z)V

    iget-object v1, p0, Lh/bB;->a:Lh/bg;

    invoke-interface {v1, v0}, Lh/bg;->a(Lcom/google/googlenav/c;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/bB;->b:Lh/fa;

    invoke-static {v0}, Lh/fa;->a(Lh/fa;)Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x2f8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
