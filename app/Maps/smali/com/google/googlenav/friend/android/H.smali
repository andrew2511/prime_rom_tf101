.class Lcom/google/googlenav/friend/android/H;
.super Lo/br;


# instance fields
.field final synthetic c:Lcom/google/googlenav/friend/android/BackgroundFriendService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/BackgroundFriendService;ILo/r;LaU/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/H;->c:Lcom/google/googlenav/friend/android/BackgroundFriendService;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/br;-><init>(ILo/r;LaU/a;Z)V

    return-void
.end method


# virtual methods
.method public i_()V
    .locals 7

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/H;->c:Lcom/google/googlenav/friend/android/BackgroundFriendService;

    invoke-static {v0, v4}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->b(Lcom/google/googlenav/friend/android/BackgroundFriendService;Z)Z

    invoke-super {p0}, Lo/br;->i_()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/H;->c:Lcom/google/googlenav/friend/android/BackgroundFriendService;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;J)V

    invoke-static {}, Lo/ce;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, v4}, Lo/aX;->a(ZZ)J

    move-result-wide v0

    invoke-static {v4, v4}, Lo/aX;->a(ZZ)J

    move-result-wide v2

    cmp-long v0, v5, v0

    if-eqz v0, :cond_0

    cmp-long v0, v5, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/H;->c:Lcom/google/googlenav/friend/android/BackgroundFriendService;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/A;->q(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/H;->c:Lcom/google/googlenav/friend/android/BackgroundFriendService;

    invoke-static {v0, v4}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a(Lcom/google/googlenav/friend/android/BackgroundFriendService;Z)V

    return-void
.end method
