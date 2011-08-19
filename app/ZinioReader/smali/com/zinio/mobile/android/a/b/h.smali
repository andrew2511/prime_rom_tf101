.class final Lcom/zinio/mobile/android/a/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/b/l;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/a/b/l;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/h;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 315
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v1

    .line 317
    if-nez v1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/h;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v0, v0, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/h;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, v1, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 330
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/h;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-static {v1}, Lcom/zinio/mobile/android/a/b/l;->e(Lcom/zinio/mobile/android/a/b/l;)Lcom/zinio/mobile/android/a/b/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;Lcom/zinio/mobile/android/a/b/q;)Lcom/zinio/mobile/android/b/a/i;
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 343
    if-eqz v0, :cond_4

    const-string v1, "APP_VERSION_NOT_SUPPORTED"

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 346
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/h;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v0, v0, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/h;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, v1, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->printStackTrace()V

    .line 336
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    goto :goto_0

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/h;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v0, v0, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/h;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, v1, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 350
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "SYSTEM_NOT_AVAILABLE"

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/i;->a()I

    move-result v0

    if-nez v0, :cond_5

    .line 353
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/h;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v0, v0, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/h;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, v1, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 357
    :cond_5
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/h;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v0, v0, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b/h;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, v1, Lcom/zinio/mobile/android/a/b/l;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
