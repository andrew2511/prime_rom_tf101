.class Lcom/android/server/VibratorService$2;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 372
    iget-object v0, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 373
    :try_start_13
    iget-object v1, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    #calls: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)V

    .line 374
    iget-object v1, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 375
    monitor-exit v0

    .line 377
    :cond_22
    return-void

    .line 375
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_23

    throw v1
.end method
