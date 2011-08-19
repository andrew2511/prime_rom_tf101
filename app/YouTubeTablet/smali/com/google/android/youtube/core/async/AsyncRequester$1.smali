.class Lcom/google/android/youtube/core/async/AsyncRequester$1;
.super Ljava/lang/Object;
.source "AsyncRequester.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/async/AsyncRequester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/async/AsyncRequester;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$request:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/AsyncRequester;Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    .local p0, this:Lcom/google/android/youtube/core/async/AsyncRequester$1;,"Lcom/google/android/youtube/core/async/AsyncRequester.1;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/AsyncRequester$1;->this$0:Lcom/google/android/youtube/core/async/AsyncRequester;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/AsyncRequester$1;->val$request:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/youtube/core/async/AsyncRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 35
    .local p0, this:Lcom/google/android/youtube/core/async/AsyncRequester$1;,"Lcom/google/android/youtube/core/async/AsyncRequester.1;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/AsyncRequester$1;->this$0:Lcom/google/android/youtube/core/async/AsyncRequester;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/AsyncRequester;->access$000(Lcom/google/android/youtube/core/async/AsyncRequester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/AsyncRequester$1;->val$request:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/AsyncRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 36
    return-void
.end method
