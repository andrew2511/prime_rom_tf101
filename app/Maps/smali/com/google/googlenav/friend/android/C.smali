.class Lcom/google/googlenav/friend/android/C;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/LocationFriendService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/LocationFriendService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/C;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/friend/android/C;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/android/LocationFriendService;->a(Lcom/google/googlenav/friend/android/LocationFriendService;I)I

    iget-object v0, p0, Lcom/google/googlenav/friend/android/C;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->f(Lcom/google/googlenav/friend/android/LocationFriendService;)V

    const/4 v0, 0x2

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/friend/android/C;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private b()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/google/googlenav/friend/android/C;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/android/LocationFriendService;->g()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/friend/android/C;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-static {v2, v4}, Lcom/google/googlenav/friend/android/LocationFriendService;->a(Lcom/google/googlenav/friend/android/LocationFriendService;Z)Z

    iget-object v2, p0, Lcom/google/googlenav/friend/android/C;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-static {v2}, Lcom/google/googlenav/friend/android/LocationFriendService;->g(Lcom/google/googlenav/friend/android/LocationFriendService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v2, Lcom/google/googlenav/friend/android/t;

    iget-object v3, p0, Lcom/google/googlenav/friend/android/C;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-direct {v2, v3, v1}, Lcom/google/googlenav/friend/android/t;-><init>(Lcom/google/googlenav/friend/android/LocationFriendService;Lcom/google/googlenav/friend/android/C;)V

    new-array v3, v4, [Ljava/lang/Void;

    const/4 v4, 0x0

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    move-object p0, v0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/googlenav/friend/android/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/C;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->d(Lcom/google/googlenav/friend/android/LocationFriendService;)I

    iget-object v0, p0, Lcom/google/googlenav/friend/android/C;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->e(Lcom/google/googlenav/friend/android/LocationFriendService;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/C;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/C;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/C;->b()V

    goto :goto_0
.end method
