.class Lcom/google/android/youtube/core/async/SingleItemListRequester$1;
.super Ljava/lang/Object;
.source "SingleItemListRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/async/SingleItemListRequester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
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
        "Ljava/util/List",
        "<TR;>;",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/async/SingleItemListRequester;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/SingleItemListRequester;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    .local p0, this:Lcom/google/android/youtube/core/async/SingleItemListRequester$1;,"Lcom/google/android/youtube/core/async/SingleItemListRequester.1;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/SingleItemListRequester$1;->this$0:Lcom/google/android/youtube/core/async/SingleItemListRequester;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/SingleItemListRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    .local p0, this:Lcom/google/android/youtube/core/async/SingleItemListRequester$1;,"Lcom/google/android/youtube/core/async/SingleItemListRequester.1;"
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/SingleItemListRequester$1;->onError(Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/youtube/core/async/SingleItemListRequester$1;,"Lcom/google/android/youtube/core/async/SingleItemListRequester.1;"
    .local p1, request:Ljava/util/List;,"Ljava/util/List<TR;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SingleItemListRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 45
    return-void

    :cond_0
    move v0, v1

    .line 43
    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    .local p0, this:Lcom/google/android/youtube/core/async/SingleItemListRequester$1;,"Lcom/google/android/youtube/core/async/SingleItemListRequester.1;"
    check-cast p1, Ljava/util/List;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/SingleItemListRequester$1;->onResponse(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/youtube/core/async/SingleItemListRequester$1;,"Lcom/google/android/youtube/core/async/SingleItemListRequester.1;"
    .local p1, request:Ljava/util/List;,"Ljava/util/List<TR;>;"
    .local p2, response:Ljava/util/List;,"Ljava/util/List<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SingleItemListRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/google/android/youtube/core/async/Optional$Null;->instance()Lcom/google/android/youtube/core/async/Optional;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SingleItemListRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
