.class Lcom/google/googlenav/friend/android/G;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/BackgroundFriendService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/BackgroundFriendService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/G;->a:Lcom/google/googlenav/friend/android/BackgroundFriendService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/G;->a:Lcom/google/googlenav/friend/android/BackgroundFriendService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a(Lcom/google/googlenav/friend/android/BackgroundFriendService;Z)V

    return-void
.end method
