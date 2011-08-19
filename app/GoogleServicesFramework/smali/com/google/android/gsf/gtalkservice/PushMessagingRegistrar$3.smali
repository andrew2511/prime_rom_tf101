.class Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$3;
.super Ljava/lang/Object;
.source "PushMessagingRegistrar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->refreshAuthToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

.field final synthetic val$oldToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$3;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$3;->val$oldToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 458
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$3;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->blockingGetFirstAccountUsername()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, username:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$3;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$700(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$3;->val$oldToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$3;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$600(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->blockingRefreshAuthToken(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, authToken:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$3;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$600(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->access$500(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;Z)V

    .line 464
    if-eqz v0, :cond_0

    .line 465
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$3;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-static {v2, v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$800(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;)V

    .line 467
    :cond_0
    return-void
.end method
