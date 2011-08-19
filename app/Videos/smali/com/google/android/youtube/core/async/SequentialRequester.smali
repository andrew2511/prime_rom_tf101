.class public Lcom/google/android/youtube/core/async/SequentialRequester;
.super Ljava/lang/Object;
.source "SequentialRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final firstRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation
.end field

.field private final secondRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/google/android/youtube/core/async/SequentialRequester;,"Lcom/google/android/youtube/core/async/SequentialRequester<TR;TE;>;"
    .local p1, firstRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    .local p2, secondRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/SequentialRequester;->firstRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 26
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/SequentialRequester;->secondRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/async/SequentialRequester;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SequentialRequester;->secondRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method


# virtual methods
.method public request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/google/android/youtube/core/async/SequentialRequester;,"Lcom/google/android/youtube/core/async/SequentialRequester<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SequentialRequester;->firstRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v1, Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;-><init>(Lcom/google/android/youtube/core/async/SequentialRequester;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 31
    return-void
.end method
