.class Lam/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cM;


# instance fields
.field final synthetic a:Lam/m;


# direct methods
.method private constructor <init>(Lam/m;)V
    .locals 0

    iput-object p1, p0, Lam/c;->a:Lam/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/m;Lam/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lam/c;-><init>(Lam/m;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/au;Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    instance-of v0, p2, Lcom/google/android/maps/driveabout/vector/bG;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/c;->a:Lam/m;

    invoke-static {v0}, Lam/m;->i(Lam/m;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lam/c;->a:Lam/m;

    invoke-static {v0, p2}, Lam/m;->a(Lam/m;Lcom/google/android/maps/driveabout/vector/cA;)Lcom/google/android/maps/driveabout/vector/cA;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/bG;

    new-instance v1, Lcom/google/googlenav/bF;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bG;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bG;->p()LG/Y;

    move-result-object v2

    invoke-virtual {v2}, LG/Y;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bG;->p()LG/Y;

    move-result-object v3

    invoke-virtual {v3}, LG/Y;->c()LG/Q;

    move-result-object v3

    invoke-static {v3}, Lad/m;->b(LG/Q;)Lf/h;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bG;->p()LG/Y;

    move-result-object v4

    invoke-virtual {v4}, LG/Y;->d()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v7, 0x20

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/googlenav/bF;-><init>(Ljava/lang/String;Ljava/lang/String;Lf/h;Ljava/lang/String;)V

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bF;->a(B)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bG;->p()LG/Y;

    move-result-object v0

    invoke-virtual {v0}, LG/Y;->o()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bF;->n(I)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lam/c;->a:Lam/m;

    invoke-virtual {v0}, Lam/m;->I()Li/x;

    move-result-object v0

    invoke-virtual {v0}, Li/x;->aJ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v9

    :goto_0
    iget-object v0, p0, Lam/c;->a:Lam/m;

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lam/m;->a(Lcom/google/googlenav/c;ZBZZ)Li/Z;

    monitor-exit v6

    :cond_0
    return-void

    :cond_1
    move v3, v8

    goto :goto_0

    :cond_2
    move v3, v9

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
