.class Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;
.super Ljava/lang/Object;
.source "WatchInfoHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/WatchInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserProfileCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;->this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/WatchInfoHelper;Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;-><init>(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 235
    const-string v0, "Error retrieving user profile"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;->this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->access$700(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)V

    .line 237
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;)V
    .locals 5
    .parameter "request"
    .parameter "response"

    .prologue
    .line 228
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;->this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->access$600(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;->this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->access$300(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;->this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-static {v4}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->access$500(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Lcom/google/android/youtube/app/ui/WatchInfoHelper$ThumbnailCallback;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 232
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/WatchInfoHelper$UserProfileCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;)V

    return-void
.end method
