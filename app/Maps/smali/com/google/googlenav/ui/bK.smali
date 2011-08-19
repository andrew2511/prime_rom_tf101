.class Lcom/google/googlenav/ui/bK;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/google/googlenav/ui/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bK;->c:Lcom/google/googlenav/ui/aT;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/bK;->a:Z

    iput p3, p0, Lcom/google/googlenav/ui/bK;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Law/e;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/bK;->c:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->C()V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/bK;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->d(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/bK;->c:Lcom/google/googlenav/ui/aT;

    iget v2, p0, Lcom/google/googlenav/ui/bK;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/c;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bK;->c:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x2f8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
