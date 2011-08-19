.class Lcom/android/camera/ui/HeadUpDisplay$1;
.super Landroid/os/Handler;
.source "HeadUpDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/HeadUpDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HeadUpDisplay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HeadUpDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/HeadUpDisplay$1;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private handleMessageLocked(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$1;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v0, v0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setSelectedIndex(I)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$1;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v0, v0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$1;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v0, v0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setActivated(Z)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay$1;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v1}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 83
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    if-eqz v0, :cond_0

    .line 84
    monitor-enter v0

    .line 85
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay$1;->handleMessageLocked(Landroid/os/Message;)V

    .line 86
    monitor-exit v0

    .line 90
    :goto_0
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay$1;->handleMessageLocked(Landroid/os/Message;)V

    goto :goto_0
.end method
