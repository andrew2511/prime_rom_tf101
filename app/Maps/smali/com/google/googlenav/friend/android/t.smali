.class Lcom/google/googlenav/friend/android/t;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/LocationFriendService;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/friend/android/LocationFriendService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/t;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/friend/android/LocationFriendService;Lcom/google/googlenav/friend/android/C;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/t;-><init>(Lcom/google/googlenav/friend/android/LocationFriendService;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/t;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->a(Lcom/google/googlenav/friend/android/LocationFriendService;)Lo/bI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/t;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->a(Lcom/google/googlenav/friend/android/LocationFriendService;)Lo/bI;

    move-result-object v0

    invoke-virtual {v0}, Lo/bI;->d()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/t;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->b(Lcom/google/googlenav/friend/android/LocationFriendService;)Lcom/google/googlenav/friend/android/r;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/t;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->b(Lcom/google/googlenav/friend/android/LocationFriendService;)Lcom/google/googlenav/friend/android/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/r;->k()V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/friend/android/t;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->c(Lcom/google/googlenav/friend/android/LocationFriendService;)Lcom/google/googlenav/friend/android/K;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/t;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->c(Lcom/google/googlenav/friend/android/LocationFriendService;)Lcom/google/googlenav/friend/android/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/K;->a()V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/friend/android/LocationFriendService;->n()LA/p;

    move-result-object v0

    invoke-virtual {v0}, LA/p;->b()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/t;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->stopSelf()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/t;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/t;->a(Ljava/lang/Void;)V

    return-void
.end method
