.class Lh/L;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eF;


# instance fields
.field final synthetic a:Lh/eD;


# direct methods
.method constructor <init>(Lh/eD;)V
    .locals 0

    iput-object p1, p0, Lh/L;->a:Lh/eD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lh/L;->a:Lh/eD;

    invoke-static {v0}, Lh/eD;->a(Lh/eD;)Lh/dm;

    move-result-object v0

    iget-object v0, v0, Lh/dm;->c:Lh/M;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/L;->a:Lh/eD;

    invoke-static {v0}, Lh/eD;->a(Lh/eD;)Lh/dm;

    move-result-object v0

    iget-object v0, v0, Lh/dm;->c:Lh/M;

    invoke-interface {v0, p1}, Lh/M;->a(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lh/L;->a:Lh/eD;

    invoke-virtual {v0}, Lh/eD;->v()V

    return-void
.end method
