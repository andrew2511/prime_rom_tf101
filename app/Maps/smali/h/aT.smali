.class Lh/aT;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;


# instance fields
.field final synthetic a:Lak/f;

.field final synthetic b:Lh/bx;


# direct methods
.method constructor <init>(Lh/bx;Lak/f;)V
    .locals 0

    iput-object p1, p0, Lh/aT;->b:Lh/bx;

    iput-object p2, p0, Lh/aT;->a:Lak/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Law/e;)V
    .locals 1

    iget-object v0, p0, Lh/aT;->a:Lak/f;

    invoke-virtual {v0}, Lak/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/aT;->b:Lh/bx;

    iget-object v0, v0, Lh/bx;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/aT;->b:Lh/bx;

    invoke-static {v0, p2}, Lh/bx;->a(Lh/bx;Law/e;)V

    goto :goto_0
.end method
