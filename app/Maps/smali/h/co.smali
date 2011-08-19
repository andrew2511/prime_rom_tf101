.class Lh/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/N;


# instance fields
.field final synthetic a:Lh/ay;


# direct methods
.method constructor <init>(Lh/ay;)V
    .locals 0

    iput-object p1, p0, Lh/co;->a:Lh/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/R;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/googlenav/R;->l()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lh/co;->a:Lh/ay;

    invoke-static {v1, v0}, Lh/ay;->a(Lh/ay;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lh/co;->a:Lh/ay;

    invoke-static {v1}, Lh/ay;->b(Lh/ay;)LI/O;

    move-result-object v1

    invoke-virtual {v1, v0}, LI/O;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->a(I)Lcom/google/googlenav/ao;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/ao;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ao;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
