.class final Lcom/google/android/youtube/core/async/FallbackRequester$1;
.super Ljava/lang/Object;
.source "FallbackRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/utils/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/FallbackRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/utils/Predicate",
        "<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Exception;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Exception;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/async/FallbackRequester$1;->apply(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method
