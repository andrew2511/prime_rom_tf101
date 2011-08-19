.class Li/S;
.super Ljava/lang/Object;

# interfaces
.implements Lx/x;


# instance fields
.field final synthetic a:Li/aw;


# direct methods
.method constructor <init>(Li/aw;)V
    .locals 0

    iput-object p1, p0, Li/S;->a:Li/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 4

    iget-object v0, p0, Li/S;->a:Li/aw;

    iget-boolean v0, v0, Li/aw;->a:Z

    if-nez v0, :cond_0

    check-cast p1, Lx/q;

    iget-object v0, p0, Li/S;->a:Li/aw;

    invoke-virtual {p1}, Lx/q;->a()I

    move-result v1

    invoke-virtual {p1}, Lx/q;->b()I

    move-result v2

    invoke-virtual {p1}, Lx/q;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Li/aw;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
