.class Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;
.super Ljava/lang/Object;
.source "NetworkDispatcher.java"

# interfaces
.implements Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequesterCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;Lcom/google/android/apps/analytics/NetworkDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;-><init>(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)V

    return-void
.end method


# virtual methods
.method public pipelineModeChanged(Z)V
    .locals 2
    .parameter "requesterCanPipeline"

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$902(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;I)I

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$902(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;I)I

    goto :goto_0
.end method

.method public requestSent()V
    .locals 4

    .prologue
    .line 245
    iget-object v1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$400(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    move-result-object v1

    if-nez v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$400(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->removeNextEvent()Lcom/google/android/apps/analytics/Event;

    move-result-object v0

    .line 249
    .local v0, first:Lcom/google/android/apps/analytics/Event;
    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$800(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/Dispatcher$Callbacks;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/apps/analytics/Event;->eventId:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/analytics/Dispatcher$Callbacks;->eventDispatched(J)V

    goto :goto_0
.end method

.method public serverError(I)V
    .locals 1
    .parameter "statusCode"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v0, p1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$502(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;I)I

    .line 257
    return-void
.end method
