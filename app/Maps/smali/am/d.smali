.class Lam/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cM;


# instance fields
.field final synthetic a:Lam/m;


# direct methods
.method private constructor <init>(Lam/m;)V
    .locals 0

    iput-object p1, p0, Lam/d;->a:Lam/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/m;Lam/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lam/d;-><init>(Lam/m;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/au;Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 4

    check-cast p1, Lcom/google/android/maps/driveabout/vector/bq;

    iget-object v0, p0, Lam/d;->a:Lam/m;

    invoke-static {v0}, Lam/m;->h(Lam/m;)Lam/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lam/n;->a(Lcom/google/android/maps/driveabout/vector/bq;)Li/x;

    move-result-object v0

    check-cast p2, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ae;->g()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/j;->c_()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/bf;->ao()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lam/d;->a:Lam/m;

    invoke-static {v1, v0, v2}, Lam/m;->b(Lam/m;Li/x;I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
