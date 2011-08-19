.class Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;
.super Ljava/lang/Object;
.source "DrmManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->invokePendingCallback(Landroid/drm/DrmEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

.field final synthetic val$assetUri:Landroid/net/Uri;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

.field final synthetic val$request:Lcom/google/android/youtube/videos/DrmRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iput-object p2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$assetUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    iput-object p4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iput-object p5, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 246
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    invoke-static {v2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$100(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$assetUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v1

    .line 247
    .local v1, result:I
    if-nez v1, :cond_1

    .line 248
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$assetUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getLicense(Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;

    move-result-object v0

    .line 249
    .local v0, license:Lcom/google/android/youtube/videos/DrmResponse;
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-boolean v2, v2, Lcom/google/android/youtube/videos/DrmRequest;->offline:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/google/android/youtube/videos/DrmResponse;->allowsOffline:Z

    if-nez v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iget-object v5, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$assetUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$200(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;)Lcom/google/android/youtube/videos/DrmException;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 257
    .end local v0           #license:Lcom/google/android/youtube/videos/DrmResponse;
    :goto_0
    return-void

    .line 252
    .restart local v0       #license:Lcom/google/android/youtube/videos/DrmResponse;
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-interface {v2, v3, v0}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 255
    .end local v0           #license:Lcom/google/android/youtube/videos/DrmResponse;
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iget-object v5, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$assetUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$200(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;)Lcom/google/android/youtube/videos/DrmException;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
