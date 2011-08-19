.class Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "XT9TextKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/XT9TextKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/XT9TextKeyListener;


# direct methods
.method public constructor <init>(Lcom/nuance/xt9/input/XT9TextKeyListener;)V
    .locals 1
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;->this$0:Lcom/nuance/xt9/input/XT9TextKeyListener;

    .line 289
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 290
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;->this$0:Lcom/nuance/xt9/input/XT9TextKeyListener;

    invoke-static {v1}, Lcom/nuance/xt9/input/XT9TextKeyListener;->access$000(Lcom/nuance/xt9/input/XT9TextKeyListener;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;->this$0:Lcom/nuance/xt9/input/XT9TextKeyListener;

    invoke-static {v1}, Lcom/nuance/xt9/input/XT9TextKeyListener;->access$000(Lcom/nuance/xt9/input/XT9TextKeyListener;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 296
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;->this$0:Lcom/nuance/xt9/input/XT9TextKeyListener;

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/XT9TextKeyListener;->access$102(Lcom/nuance/xt9/input/XT9TextKeyListener;Z)Z

    .line 304
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 299
    .restart local v0       #contentResolver:Landroid/content/ContentResolver;
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;->this$0:Lcom/nuance/xt9/input/XT9TextKeyListener;

    invoke-static {v1, v0}, Lcom/nuance/xt9/input/XT9TextKeyListener;->access$200(Lcom/nuance/xt9/input/XT9TextKeyListener;Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 302
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;->this$0:Lcom/nuance/xt9/input/XT9TextKeyListener;

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/XT9TextKeyListener;->access$102(Lcom/nuance/xt9/input/XT9TextKeyListener;Z)Z

    goto :goto_0
.end method
