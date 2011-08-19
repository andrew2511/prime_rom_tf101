.class final Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$1;
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
        "Lcom/google/android/youtube/core/model/Event;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/youtube/core/model/Event;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 35
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->when:Ljava/util/Date;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->isRecent(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Lcom/google/android/youtube/core/model/Event;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$1;->apply(Lcom/google/android/youtube/core/model/Event;)Z

    move-result v0

    return v0
.end method
