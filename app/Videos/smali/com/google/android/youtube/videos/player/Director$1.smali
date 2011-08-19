.class Lcom/google/android/youtube/videos/player/Director$1;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/Director;->initCallbacks()V
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
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/player/Director;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$1;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$1;->this$0:Lcom/google/android/youtube/videos/player/Director;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/player/Director;->access$100(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/core/model/Purchase;)V

    .line 573
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 559
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$1;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .locals 4
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;"
    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Purchase;

    .line 562
    .local v1, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v2, v1, Lcom/google/android/youtube/core/model/Purchase;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    sget-object v3, Lcom/google/android/youtube/core/model/Purchase$ItemType;->MOVIE:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    sget-object v3, Lcom/google/android/youtube/core/model/Purchase$Status;->ACTIVE:Lcom/google/android/youtube/core/model/Purchase$Status;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director$1;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v3}, Lcom/google/android/youtube/videos/player/Director;->access$000(Lcom/google/android/youtube/videos/player/Director;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$1;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v2, v1}, Lcom/google/android/youtube/videos/player/Director;->access$100(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/core/model/Purchase;)V

    .line 570
    .end local v1           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$1;->this$0:Lcom/google/android/youtube/videos/player/Director;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/youtube/videos/player/Director;->access$100(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/core/model/Purchase;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 559
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$1;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method
