.class Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$2;
.super Ljava/lang/Object;
.source "PushMessagingRegistrar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->fetchAuthToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$2;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 401
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$2;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->blockingGetFirstAccountUsername()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, username:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$2;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$700(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$2;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$600(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->blockingFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, authToken:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$2;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$600(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->access$500(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;Z)V

    .line 404
    if-eqz v0, :cond_0

    .line 405
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$2;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-static {v2, v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$800(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;)V

    .line 407
    :cond_0
    return-void
.end method
