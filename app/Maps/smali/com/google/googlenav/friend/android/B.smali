.class Lcom/google/googlenav/friend/android/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/googlenav/friend/android/LocationFriendService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/LocationFriendService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/B;->b:Lcom/google/googlenav/friend/android/LocationFriendService;

    iput-object p2, p0, Lcom/google/googlenav/friend/android/B;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/B;->b:Lcom/google/googlenav/friend/android/LocationFriendService;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/B;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/android/LocationFriendService;->c(Landroid/content/Intent;)V

    return-void
.end method
