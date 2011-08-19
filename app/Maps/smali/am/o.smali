.class Lam/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bm;


# instance fields
.field final synthetic a:Lam/a;


# direct methods
.method constructor <init>(Lam/a;)V
    .locals 0

    iput-object p1, p0, Lam/o;->a:Lam/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 2

    iget-object v0, p0, Lam/o;->a:Lam/a;

    invoke-static {v0}, Lam/a;->a(Lam/a;)Lf/Y;

    move-result-object v0

    invoke-virtual {v0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    invoke-virtual {v0}, Lf/l;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lam/o;->a:Lam/a;

    invoke-static {v0}, Lam/a;->b(Lam/a;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x27f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
