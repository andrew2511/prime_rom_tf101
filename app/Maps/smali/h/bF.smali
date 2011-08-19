.class Lh/bF;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;


# instance fields
.field final synthetic a:Lh/fa;


# direct methods
.method constructor <init>(Lh/fa;)V
    .locals 0

    iput-object p1, p0, Lh/bF;->a:Lh/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Law/e;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lh/bF;->a:Lh/fa;

    invoke-static {v0}, Lh/fa;->c(Lh/fa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->d(Z)V

    iget-object v1, p0, Lh/bF;->a:Lh/fa;

    invoke-static {v1, v0}, Lh/fa;->b(Lh/fa;Lcom/google/googlenav/c;)Lcom/google/googlenav/c;

    :cond_0
    return-void
.end method
