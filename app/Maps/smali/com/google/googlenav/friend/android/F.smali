.class public Lcom/google/googlenav/friend/android/F;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/k;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/friend/android/F;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/friend/android/F;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/F;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.friend.android.FriendServiceHelper.SIGNED_IN_OUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public an_()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/friend/android/F;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.friend.android.FriendServiceHelper.SIGNED_IN_OUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/F;->a:Landroid/content/Context;

    invoke-static {}, Lo/aF;->p()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/F;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/A;->c(Landroid/content/Context;)V

    return-void
.end method

.method public ao_()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
