.class public Lcom/google/googlenav/networkinitiated/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/k;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/k;->a:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "app"

    iget-object v2, p0, Lcom/google/googlenav/networkinitiated/k;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/k;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private h()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "app"

    iget-object v2, p0, Lcom/google/googlenav/networkinitiated/k;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "sender"

    const-string v2, "gmobilemaps@gmail.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/k;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/k;->h()V

    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/k;->a:Landroid/content/Context;

    const-string v1, "network_initiated_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "registration_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lo/aF;->p()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/networkinitiated/k;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/k;->h()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/networkinitiated/b;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/googlenav/networkinitiated/l;

    iget-object v4, p0, Lcom/google/googlenav/networkinitiated/k;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/googlenav/networkinitiated/l;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/google/googlenav/networkinitiated/b;-><init>(Ljava/lang/String;ILcom/google/googlenav/networkinitiated/a;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public an_()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/k;->a:Landroid/content/Context;

    const-string v1, "network_initiated_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/j;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "registration_id"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/networkinitiated/b;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4, v5}, Lcom/google/googlenav/networkinitiated/b;-><init>(Ljava/lang/String;ILcom/google/googlenav/networkinitiated/a;)V

    invoke-virtual {v2, v3}, Lak/h;->c(Lak/d;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/k;->b()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "registration_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

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
