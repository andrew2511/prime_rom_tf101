.class Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;
.super Ljava/lang/Object;
.source "PromotedAppViewSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/PromotedAppViewSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CycleAssets"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Lcom/android/vending/PromotedAppViewSwitcher;


# direct methods
.method private constructor <init>(Lcom/android/vending/PromotedAppViewSwitcher;)V
    .locals 1
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;->this$0:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;->stopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/PromotedAppViewSwitcher;Lcom/android/vending/PromotedAppViewSwitcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;-><init>(Lcom/android/vending/PromotedAppViewSwitcher;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;->this$0:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-static {v2}, Lcom/android/vending/PromotedAppViewSwitcher;->access$100(Lcom/android/vending/PromotedAppViewSwitcher;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;->stopped:Z

    if-nez v2, :cond_1

    .line 253
    invoke-static {}, Lcom/android/vending/PromotedAppViewSwitcher;->access$200()J

    move-result-wide v0

    .line 254
    .local v0, nextRefresh:J
    iget-object v2, p0, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;->this$0:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-virtual {v2}, Lcom/android/vending/PromotedAppViewSwitcher;->changeAsset()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    const-wide/16 v0, 0x3e8

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;->this$0:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-static {v2}, Lcom/android/vending/PromotedAppViewSwitcher;->access$100(Lcom/android/vending/PromotedAppViewSwitcher;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v0           #nextRefresh:J
    :cond_1
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 262
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;->stopped:Z

    .line 263
    iget-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;->this$0:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-static {v0}, Lcom/android/vending/PromotedAppViewSwitcher;->access$100(Lcom/android/vending/PromotedAppViewSwitcher;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;->this$0:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-static {v0}, Lcom/android/vending/PromotedAppViewSwitcher;->access$100(Lcom/android/vending/PromotedAppViewSwitcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_0
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
