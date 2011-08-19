.class Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;
.super Ljava/lang/Object;
.source "WatchInfoHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/ui/WatchInfoHelper;->onBranding(Lcom/google/android/youtube/core/model/Branding;)V
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
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

.field final synthetic val$branding:Lcom/google/android/youtube/core/model/Branding;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/WatchInfoHelper;Lcom/google/android/youtube/core/model/Branding;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;->this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;->val$branding:Lcom/google/android/youtube/core/model/Branding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "e"

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t retrieve branding image from [uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;->this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->access$200(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;->this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->access$200(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;->this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->access$200(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1$1;-><init>(Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;->this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->access$400(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Lcom/google/android/youtube/app/player/Director;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/player/Director;->setAutoPlay(Z)V

    .line 184
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;->onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
