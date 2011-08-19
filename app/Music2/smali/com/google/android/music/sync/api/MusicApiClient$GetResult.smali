.class public Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
.super Ljava/lang/Object;
.source "MusicApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/api/MusicApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mContinuationToken:Ljava/lang/String;

.field public mEtag:Ljava/lang/String;

.field public mItems:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "continuationToken"
    .parameter "etag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/google/android/music/sync/api/MusicApiClient$GetResult;,"Lcom/google/android/music/sync/api/MusicApiClient$GetResult<TT;>;"
    .local p1, items:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mItems:Ljava/util/Iterator;

    .line 40
    iput-object p2, p0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mContinuationToken:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    .line 42
    return-void
.end method
