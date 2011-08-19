.class Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$ThumbnailCallback;
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
    name = "ThumbnailCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
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
    .line 124
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 131
    const-string v0, "Error retrieving thumbnail "

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$ThumbnailCallback;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "request"
    .parameter "response"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->access$200(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->setThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 128
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$ThumbnailCallback;->onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
