.class public Li/b;
.super Li/L;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, Li/L;-><init>(Li/x;)V

    return-void
.end method


# virtual methods
.method public a()Lx/S;
    .locals 1

    iget-object v0, p0, Li/b;->a:Li/x;

    check-cast v0, Li/Z;

    invoke-virtual {v0}, Li/Z;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Li/L;->a()Lx/S;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
