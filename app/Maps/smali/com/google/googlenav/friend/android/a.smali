.class public Lcom/google/googlenav/friend/android/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/h;


# instance fields
.field private final a:Landroid/app/Service;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/friend/android/a;->a:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/a;->a:Landroid/app/Service;

    const-class v2, Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/googlenav/friend/android/a;->a:Landroid/app/Service;

    invoke-virtual {v1, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public W_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public an_()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/a;->a:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public ao_()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
