.class public Lcom/google/googlenav/friend/android/E;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/LocationFriendService;

.field private b:Li/br;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/android/LocationFriendService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/E;->a:Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Li/br;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/E;->b:Li/br;

    if-nez v0, :cond_0

    new-instance v0, Li/br;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, v1}, Li/br;-><init>(LT/c;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/E;->b:Li/br;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/E;->b:Li/br;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
