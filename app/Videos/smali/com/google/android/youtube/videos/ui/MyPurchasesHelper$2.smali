.class Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onPurchase(Lcom/google/android/youtube/core/model/Purchase;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$100(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->setPosterArt(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 274
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 268
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "request"
    .parameter "response"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$100(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->setPosterArt(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 271
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 268
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;->onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
