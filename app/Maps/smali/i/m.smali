.class Li/m;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Li/w;


# direct methods
.method constructor <init>(Li/w;)V
    .locals 0

    iput-object p1, p0, Li/m;->a:Li/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    iget-object v0, p0, Li/m;->a:Li/w;

    const-string v1, "o"

    invoke-static {v0, v1}, Li/w;->a(Li/w;Ljava/lang/String;)V

    iget-object v0, p0, Li/m;->a:Li/w;

    const/16 v1, 0xb54

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Li/w;->a(IILjava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Li/m;->a:Li/w;

    const-string v1, "c"

    invoke-static {v0, v1}, Li/w;->a(Li/w;Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Li/m;->a:Li/w;

    const-string v1, "b"

    invoke-static {v0, v1}, Li/w;->a(Li/w;Ljava/lang/String;)V

    return-void
.end method
