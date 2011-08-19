.class Lh/ea;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/N;


# instance fields
.field final synthetic a:Lh/aB;


# direct methods
.method constructor <init>(Lh/aB;)V
    .locals 0

    iput-object p1, p0, Lh/ea;->a:Lh/aB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/R;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/R;->l()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->a(I)Lcom/google/googlenav/ao;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lh/ea;->a:Lh/aB;

    invoke-static {v1}, Lh/aB;->a(Lh/aB;)Lh/bd;

    move-result-object v1

    invoke-interface {v1, v0}, Lh/bd;->a(Lcom/google/googlenav/ao;)V

    return-void
.end method
