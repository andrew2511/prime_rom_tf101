.class Lh/bC;
.super Ljava/lang/Object;

# interfaces
.implements Lh/bg;


# instance fields
.field final synthetic a:Lh/fa;


# direct methods
.method constructor <init>(Lh/fa;)V
    .locals 0

    iput-object p1, p0, Lh/bC;->a:Lh/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/c;)V
    .locals 4

    iget-object v0, p0, Lh/bC;->a:Lh/fa;

    iget-object v0, v0, Lh/fa;->g:Lh/eY;

    iget-object v1, p0, Lh/bC;->a:Lh/fa;

    invoke-static {v1}, Lh/fa;->b(Lh/fa;)Li/aE;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "pl"

    invoke-virtual {v0, p1, v1, v2, v3}, Lh/eY;->a(Lcom/google/googlenav/c;Li/aE;ZLjava/lang/String;)V

    return-void
.end method
