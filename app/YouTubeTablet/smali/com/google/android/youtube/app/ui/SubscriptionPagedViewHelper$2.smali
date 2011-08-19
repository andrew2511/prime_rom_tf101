.class final Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$2;
.super Ljava/lang/Object;
.source "SubscriptionPagedViewHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/utils/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;
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
        "Lcom/google/android/youtube/core/model/Video;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/youtube/core/model/Video;)Z
    .locals 1
    .parameter "video"

    .prologue
    .line 40
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->isRecent(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$2;->apply(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    return v0
.end method
