.class Lcom/google/googlenav/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aD;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/b;->a:Lcom/google/googlenav/ui/aD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/b;->a:Lcom/google/googlenav/ui/aD;

    iget-object v0, v0, Lcom/google/googlenav/ui/aD;->b:Lcom/google/googlenav/ui/at;

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/at;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x292

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/b;->a:Lcom/google/googlenav/ui/aD;

    iget-object v0, v0, Lcom/google/googlenav/ui/aD;->b:Lcom/google/googlenav/ui/at;

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/at;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->f()V

    return-void
.end method
