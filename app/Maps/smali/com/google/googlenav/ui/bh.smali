.class Lcom/google/googlenav/ui/bh;
.super Lcom/google/googlenav/Q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aV;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aV;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bh;->a:Lcom/google/googlenav/ui/aV;

    invoke-direct {p0}, Lcom/google/googlenav/Q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/bh;->a:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v0

    invoke-interface {v0}, Lk/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    iget-object v0, p0, Lcom/google/googlenav/ui/bh;->a:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->n()Lk/j;

    move-result-object v0

    invoke-interface {v0}, Lk/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    iget-object v0, p0, Lcom/google/googlenav/ui/bh;->a:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->o()Lk/j;

    move-result-object v0

    invoke-interface {v0}, Lk/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    return-void
.end method
