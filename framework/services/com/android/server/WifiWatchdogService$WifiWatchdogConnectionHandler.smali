.class Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiWatchdogConnectionHandler"
.end annotation


# static fields
.field static final ACTION_BACKGROUND_CHECK_CONNECTION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiWatchdogService;


# direct methods
.method private constructor <init>(Lcom/android/server/WifiWatchdogService;)V
    .registers 2
    .parameter

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1052
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;-><init>(Lcom/android/server/WifiWatchdogService;)V

    return-void
.end method

.method private removeAllActions()V
    .registers 2

    .prologue
    .line 1062
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;->removeMessages(I)V

    .line 1063
    return-void
.end method


# virtual methods
.method backgroundCheckConnection(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 5
    .parameter "ap"

    .prologue
    .line 1057
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;->removeAllActions()V

    .line 1058
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1059
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1067
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 1072
    .end local p0
    :goto_5
    return-void

    .line 1069
    .restart local p0
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/server/WifiWatchdogService$AccessPoint;

    #calls: Lcom/android/server/WifiWatchdogService;->handleBackgroundCheckConnection(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$700(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_5

    .line 1067
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
