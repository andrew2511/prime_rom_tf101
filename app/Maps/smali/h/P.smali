.class Lh/P;
.super Ljava/lang/Object;

# interfaces
.implements Lh/dV;


# instance fields
.field final synthetic a:Lh/aA;


# direct methods
.method constructor <init>(Lh/aA;)V
    .locals 0

    iput-object p1, p0, Lh/P;->a:Lh/aA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lh/P;->a:Lh/aA;

    invoke-virtual {v0}, Lh/aA;->v()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lh/P;->a:Lh/aA;

    iget-object v0, v0, Lh/aA;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lh/P;->a:Lh/aA;

    iget-object v0, v0, Lh/aA;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method
