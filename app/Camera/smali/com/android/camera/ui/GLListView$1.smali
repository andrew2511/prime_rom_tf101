.class Lcom/android/camera/ui/GLListView$1;
.super Landroid/os/Handler;
.source "GLListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/GLListView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GLListView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/GLListView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/ui/GLListView$1;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleMessageLocked(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$1;->this$0:Lcom/android/camera/ui/GLListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/GLListView;->access$000(Lcom/android/camera/ui/GLListView;Z)V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/camera/ui/GLListView$1;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLListView;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 84
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    if-eqz v0, :cond_0

    .line 85
    monitor-enter v0

    .line 86
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GLListView$1;->handleMessageLocked(Landroid/os/Message;)V

    .line 87
    monitor-exit v0

    .line 91
    :goto_0
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GLListView$1;->handleMessageLocked(Landroid/os/Message;)V

    goto :goto_0
.end method
