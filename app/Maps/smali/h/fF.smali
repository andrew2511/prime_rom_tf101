.class Lh/fF;
.super Ljava/lang/Object;

# interfaces
.implements Lh/bv;


# instance fields
.field final synthetic a:Lh/v;


# direct methods
.method constructor <init>(Lh/v;)V
    .locals 0

    iput-object p1, p0, Lh/fF;->a:Lh/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lh/fF;->a:Lh/v;

    iget-object v0, v0, Lh/v;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    return-void
.end method

.method public a(Lh/fP;)V
    .locals 4

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lh/fF;->a:Lh/v;

    invoke-static {v1}, Lh/v;->c(Lh/v;)Lcom/google/googlenav/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/s;

    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, LaY/a;->a(Lh/fP;IZ)Lk/l;

    move-result-object v0

    iget-object v3, p1, Lh/fP;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/googlenav/s;-><init>(Lk/l;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bH;->a(Lcom/google/googlenav/s;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lh/fF;->a:Lh/v;

    invoke-static {v0}, Lh/v;->d(Lh/v;)Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x306

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
