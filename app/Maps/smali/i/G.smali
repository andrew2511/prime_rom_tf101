.class Li/G;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/l;


# instance fields
.field final synthetic a:Li/n;


# direct methods
.method constructor <init>(Li/n;)V
    .locals 0

    iput-object p1, p0, Li/G;->a:Li/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Li/G;->a:Li/n;

    iget-object v0, v0, Li/n;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x210

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Li/G;->a:Li/n;

    invoke-virtual {v2}, Li/n;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
