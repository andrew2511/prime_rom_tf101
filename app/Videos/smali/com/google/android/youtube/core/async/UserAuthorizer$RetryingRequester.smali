.class Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;
.super Ljava/lang/Object;
.source "UserAuthorizer.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryingRequester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final target:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "TE;>;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, this:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;,"Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester<TE;>;"
    .local p2, requester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;TE;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    .line 485
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method


# virtual methods
.method public request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 2
    .parameter "originalRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "TE;>;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, this:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;,"Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester<TE;>;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;TE;>;"
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    const-string v1, "attempted a retrying request with an empty userAuth"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    new-instance v1, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/async/GDataRequest;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 525
    return-void
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 479
    .local p0, this:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;,"Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester<TE;>;"
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;->request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method
