.class Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$UserProfileCallback;
.super Ljava/lang/Object;
.source "SubscriptionPagedViewHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;
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
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$UserProfileCallback;->this$0:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$UserProfileCallback;-><init>(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 119
    const-string v0, "Error retrieving user profile "

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$UserProfileCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;)V
    .locals 3
    .parameter "request"
    .parameter "response"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$UserProfileCallback;->this$0:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->access$200(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->setUserProfile(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserProfile;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$UserProfileCallback;->this$0:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->access$400(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$UserProfileCallback;->this$0:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->access$300(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)Lcom/google/android/youtube/core/async/ActivityCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 116
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$UserProfileCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;)V

    return-void
.end method
