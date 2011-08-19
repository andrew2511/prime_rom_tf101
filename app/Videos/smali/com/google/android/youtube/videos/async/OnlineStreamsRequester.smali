.class public Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;
.super Ljava/lang/Object;
.source "OnlineStreamsRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$1;,
        Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/VideoStreams;",
        ">;"
    }
.end annotation


# instance fields
.field private final canDisplayHd:Z

.field private final channelFormatsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final streamLengthRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/videos/StreamLengthRequest;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Z)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .parameter "canDisplayHd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/videos/StreamLengthRequest;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, channelFormatsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/Integer;>;>;"
    .local p3, myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    .local p4, streamLengthRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/videos/StreamLengthRequest;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->context:Landroid/content/Context;

    .line 52
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->channelFormatsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 53
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 54
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->streamLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 55
    iput-boolean p5, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->canDisplayHd:Z

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->streamLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->canDisplayHd:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->channelFormatsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method


# virtual methods
.method public request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;>;"
    new-instance v0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;-><init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->makeRequests()V

    .line 60
    return-void
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method
