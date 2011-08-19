.class Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;
.super Ljava/lang/Object;
.source "FallbackRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/FallbackRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FallbackCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final originalCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/youtube/core/async/FallbackRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/FallbackRequester;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;,"Lcom/google/android/youtube/core/async/FallbackRequester<TR;TE;>.FallbackCallback;"
    .local p2, originalCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;->this$0:Lcom/google/android/youtube/core/async/FallbackRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;)Lcom/google/android/youtube/core/async/Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter "firstException"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;,"Lcom/google/android/youtube/core/async/FallbackRequester<TR;TE;>.FallbackCallback;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;->this$0:Lcom/google/android/youtube/core/async/FallbackRequester;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/FallbackRequester;->access$000(Lcom/google/android/youtube/core/async/FallbackRequester;)Lcom/google/android/youtube/core/utils/Predicate;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/youtube/core/utils/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;->this$0:Lcom/google/android/youtube/core/async/FallbackRequester;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/FallbackRequester;->access$200(Lcom/google/android/youtube/core/async/FallbackRequester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback$1;-><init>(Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;Ljava/lang/Exception;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TE;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;,"Lcom/google/android/youtube/core/async/FallbackRequester<TR;TE;>.FallbackCallback;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method
