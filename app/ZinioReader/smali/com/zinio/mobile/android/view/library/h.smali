.class final Lcom/zinio/mobile/android/view/library/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/b/l;

.field private synthetic b:Lcom/zinio/mobile/android/a/a/j;

.field private synthetic c:Lcom/zinio/mobile/android/view/library/d;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/d;Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/h;->c:Lcom/zinio/mobile/android/view/library/d;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/library/h;->a:Lcom/zinio/mobile/android/a/b/l;

    iput-object p3, p0, Lcom/zinio/mobile/android/view/library/h;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/h;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/h;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;)V
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    .line 570
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/h;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/h;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->i()V

    goto :goto_0

    .line 577
    :cond_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->a()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 578
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/h;->c:Lcom/zinio/mobile/android/view/library/d;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/h;->c:Lcom/zinio/mobile/android/view/library/d;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/t;->b:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->a()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 583
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/h;->c:Lcom/zinio/mobile/android/view/library/d;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/h;->c:Lcom/zinio/mobile/android/view/library/d;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/t;->b:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 586
    :cond_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/h;->c:Lcom/zinio/mobile/android/view/library/d;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/h;->c:Lcom/zinio/mobile/android/view/library/d;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/t;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
