.class public abstract Lcom/google/android/finsky/api/model/BucketedList;
.super Lcom/google/android/finsky/api/model/PaginatedList;
.source "BucketedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/finsky/api/model/PaginatedList",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 18
    .local p0, this:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "url"
    .parameter "autoLoadNextPage"

    .prologue
    .line 27
    .local p0, this:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public abstract getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
.end method

.method public abstract getBucketCount()I
.end method
