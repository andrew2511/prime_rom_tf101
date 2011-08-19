.class public Lcom/google/android/youtube/core/async/SingleItemListRequester;
.super Ljava/lang/Object;
.source "SingleItemListRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/android/youtube/core/async/Optional",
        "<TE;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<TR;",
        "Lcom/google/android/youtube/core/async/Optional",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final listRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/util/List",
            "<TR;>;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/Requester;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/util/List",
            "<TR;>;",
            "Ljava/util/List",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/google/android/youtube/core/async/SingleItemListRequester;,"Lcom/google/android/youtube/core/async/SingleItemListRequester<TR;TE;>;"
    .local p1, listRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/util/List<TR;>;Ljava/util/List<TE;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/SingleItemListRequester;->listRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 26
    return-void
.end method


# virtual methods
.method public request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;",
            "Lcom/google/android/youtube/core/async/Optional",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lcom/google/android/youtube/core/async/SingleItemListRequester;,"Lcom/google/android/youtube/core/async/SingleItemListRequester<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;Lcom/google/android/youtube/core/async/Optional<TE;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .local v0, requestList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TR;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v1, p0, Lcom/google/android/youtube/core/async/SingleItemListRequester;->listRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v2, Lcom/google/android/youtube/core/async/SingleItemListRequester$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/youtube/core/async/SingleItemListRequester$1;-><init>(Lcom/google/android/youtube/core/async/SingleItemListRequester;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 47
    return-void
.end method
