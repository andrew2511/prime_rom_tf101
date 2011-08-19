.class public Lcom/google/android/youtube/core/utils/ContainsPathSegment;
.super Ljava/lang/Object;
.source "ContainsPathSegment.java"

# interfaces
.implements Lcom/google/android/youtube/core/utils/Predicate;


# annotations
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
.field private final pathSegment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pathSegment"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "pathSegment can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/ContainsPathSegment;->pathSegment:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/youtube/core/async/GDataRequest;)Z
    .locals 2
    .parameter "request"

    .prologue
    .line 22
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/utils/ContainsPathSegment;->pathSegment:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/utils/ContainsPathSegment;->apply(Lcom/google/android/youtube/core/async/GDataRequest;)Z

    move-result v0

    return v0
.end method
