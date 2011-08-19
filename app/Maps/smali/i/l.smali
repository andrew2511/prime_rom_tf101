.class Li/l;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Li/w;


# direct methods
.method constructor <init>(Li/w;)V
    .locals 0

    iput-object p1, p0, Li/l;->a:Li/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    const/16 v0, 0x61

    const-string v1, "e"

    const-string v2, "do"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Li/l;->a:Li/w;

    invoke-virtual {v0}, Li/w;->B()V

    return-void
.end method

.method public b(Z)V
    .locals 3

    const/16 v0, 0x61

    const-string v1, "e"

    const-string v2, "dc"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method
