.class Lh/bX;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lh/dr;


# direct methods
.method constructor <init>(Lh/dr;)V
    .locals 0

    iput-object p1, p0, Lh/bX;->a:Lh/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/bX;->a:Lh/dr;

    invoke-static {v0}, Lh/dr;->b(Lh/dr;)Lh/eF;

    move-result-object v0

    iget-object v1, p0, Lh/bX;->a:Lh/dr;

    invoke-static {v1}, Lh/dr;->a(Lh/dr;)Lh/af;

    move-result-object v1

    invoke-virtual {v1}, Lh/af;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lh/eF;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lh/bX;->a:Lh/dr;

    invoke-static {v0}, Lh/dr;->b(Lh/dr;)Lh/eF;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lh/eF;->a(Ljava/util/List;)V

    return-void
.end method
