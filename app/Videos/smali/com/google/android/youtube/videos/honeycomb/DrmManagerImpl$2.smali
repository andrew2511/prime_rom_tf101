.class Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;
.super Ljava/lang/Object;
.source "DrmManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$drmInfoRequest:Landroid/drm/DrmInfoRequest;

.field final synthetic val$request:Lcom/google/android/youtube/videos/DrmRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/drm/DrmInfoRequest;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iput-object p2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$drmInfoRequest:Landroid/drm/DrmInfoRequest;

    iput-object p3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iput-object p4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 191
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    invoke-static {v1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$100(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    invoke-static {v2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$100(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$drmInfoRequest:Landroid/drm/DrmInfoRequest;

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 193
    .local v0, drmInfo:Landroid/drm/DrmInfo;
    if-eqz v0, :cond_0

    .line 194
    const-string v2, "VideosRequest"

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-virtual {v0, v2, v3}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const-string v2, "VideosCallback"

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-virtual {v0, v2, v3}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    invoke-static {v2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$100(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v2

    if-nez v2, :cond_0

    .line 198
    monitor-exit v1

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "DrmRequester unknown error"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 201
    .end local v0           #drmInfo:Landroid/drm/DrmInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
