.class Li/aX;
.super Ljava/lang/Object;

# interfaces
.implements Lx/U;


# instance fields
.field final synthetic a:Li/at;


# direct methods
.method constructor <init>(Li/at;)V
    .locals 0

    iput-object p1, p0, Li/aX;->a:Li/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 4

    iget-object v0, p0, Li/aX;->a:Li/at;

    iget-object v0, v0, Li/at;->a:Li/x;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {}, LaO/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Li/x;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lx/Q;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
