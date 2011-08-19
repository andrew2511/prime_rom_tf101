.class Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;
.super Ljava/lang/Object;
.source "DrmManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->requestOfflineRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$request:Lcom/google/android/youtube/videos/DrmRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iput-object p2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iput-object p3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 81
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v3, v3, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$000(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    .local v0, assetUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getLicense(Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;

    move-result-object v1

    .line 83
    .local v1, license:Lcom/google/android/youtube/videos/DrmResponse;
    if-eqz v1, :cond_0

    .line 84
    iget-boolean v2, v1, Lcom/google/android/youtube/videos/DrmResponse;->allowsOffline:Z

    if-nez v2, :cond_1

    .line 85
    const/4 v1, 0x0

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-boolean v2, v2, Lcom/google/android/youtube/videos/DrmRequest;->unpin:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-boolean v2, v2, Lcom/google/android/youtube/videos/DrmRequest;->sendTimeSinceStarted:Z

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/google/android/youtube/videos/DrmResponse;->secondsSinceActivation:I

    if-gtz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    invoke-static {v2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$100(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-interface {v2, v3, v1}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
