.class Lam/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/be;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/googlenav/j;

.field final synthetic c:Li/x;

.field final synthetic d:Lam/m;


# direct methods
.method constructor <init>(Lam/m;Ljava/util/Map;Lcom/google/googlenav/j;Li/x;)V
    .locals 0

    iput-object p1, p0, Lam/e;->d:Lam/m;

    iput-object p2, p0, Lam/e;->a:Ljava/util/Map;

    iput-object p3, p0, Lam/e;->b:Lcom/google/googlenav/j;

    iput-object p4, p0, Lam/e;->c:Li/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/ae;)Z
    .locals 3

    iget-object v0, p0, Lam/e;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ae;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lam/e;->b:Lcom/google/googlenav/j;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    iget-object v1, p0, Lam/e;->d:Lam/m;

    iget-object v2, p0, Lam/e;->c:Li/x;

    invoke-static {v1, v2, v0}, Lam/m;->a(Lam/m;Li/x;Lcom/google/googlenav/bf;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/ae;->a(Z)V

    const/4 v0, 0x0

    goto :goto_0
.end method
