.class final Lcom/zinio/mobile/android/view/bb;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/b/l;

.field private synthetic b:Lcom/zinio/mobile/android/a/a/j;

.field private synthetic c:Lcom/zinio/mobile/android/view/ShopActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ShopActivity;Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bb;->c:Lcom/zinio/mobile/android/view/ShopActivity;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/bb;->a:Lcom/zinio/mobile/android/a/b/l;

    iput-object p3, p0, Lcom/zinio/mobile/android/view/bb;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bb;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/bb;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;)V
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    .line 384
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bb;->c:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/ShopActivity;->a(Lcom/zinio/mobile/android/view/ShopActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bb;->c:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/ShopActivity;->f(Lcom/zinio/mobile/android/view/ShopActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/bb;->c:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/ShopActivity;->f(Lcom/zinio/mobile/android/view/ShopActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
