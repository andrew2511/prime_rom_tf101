.class Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter$1;
.super Ljava/lang/Object;
.source "EvictingRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/utils/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;->getFilter(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/utils/Predicate",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;

.field final synthetic val$request:Lcom/google/android/youtube/core/async/GDataRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;Lcom/google/android/youtube/core/async/GDataRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter$1;,"Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter.1;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter$1;->this$0:Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter$1;->val$request:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/youtube/core/async/GDataRequest;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 90
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter$1;,"Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter.1;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter$1;->val$request:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->pathEquals(Lcom/google/android/youtube/core/async/GDataRequest;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter$1;,"Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter.1;"
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter$1;->apply(Lcom/google/android/youtube/core/async/GDataRequest;)Z

    move-result v0

    return v0
.end method
