.class Lcom/google/googlenav/ui/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/googlenav/ui/bW;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/bW;Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/an;->d:Lcom/google/googlenav/ui/bW;

    iput-object p2, p0, Lcom/google/googlenav/ui/an;->a:Ljava/lang/StringBuilder;

    iput-boolean p3, p0, Lcom/google/googlenav/ui/an;->b:Z

    iput-object p4, p0, Lcom/google/googlenav/ui/an;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/google/googlenav/ui/an;->d:Lcom/google/googlenav/ui/bW;

    invoke-static {v0}, Lcom/google/googlenav/ui/bW;->f(Lcom/google/googlenav/ui/bW;)Lh/eY;

    move-result-object v0

    const/16 v1, 0x220

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/an;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x21e

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/googlenav/ui/an;->b:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x5d

    :goto_0
    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/google/googlenav/ui/an;->b:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    new-instance v7, Lcom/google/googlenav/ui/I;

    invoke-direct {v7, p0}, Lcom/google/googlenav/ui/I;-><init>(Lcom/google/googlenav/ui/an;)V

    invoke-virtual/range {v0 .. v7}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    return-void

    :cond_0
    const/16 v4, 0x21f

    goto :goto_0

    :cond_1
    const/16 v6, 0x21b

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method
