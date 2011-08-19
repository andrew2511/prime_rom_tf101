.class public abstract Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;
.super Ljava/lang/Object;
.source "AbstractSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/common/AbstractSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder",
        "<TT;TV;>;V:",
        "Lcom/google/android/music/sync/common/AbstractSyncAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActionOnInitialization:I

.field private mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

.field private mMaxDownstreamLoops:I

.field private mMaxQueueSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    .local p0, this:Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;,"Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder<TT;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->mActionOnInitialization:I

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->mMaxQueueSize:I

    .line 96
    const/16 v0, 0x32

    iput v0, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->mMaxDownstreamLoops:I

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/google/android/music/sync/common/AbstractSyncAdapter;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;,"Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder<TT;TV;>;"
    if-nez p1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A context needs to be provided to the builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->buildEmpty(Landroid/content/Context;)Lcom/google/android/music/sync/common/AbstractSyncAdapter;

    move-result-object v0

    .line 140
    .local v0, syncAdapter:Lcom/google/android/music/sync/common/AbstractSyncAdapter;,"TV;"
    iget v1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->mActionOnInitialization:I

    invoke-static {v0, v1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->access$002(Lcom/google/android/music/sync/common/AbstractSyncAdapter;I)I

    .line 141
    iget v1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->mMaxQueueSize:I

    invoke-static {v0, v1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->access$102(Lcom/google/android/music/sync/common/AbstractSyncAdapter;I)I

    .line 142
    iget v1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->mMaxDownstreamLoops:I

    invoke-static {v0, v1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->access$202(Lcom/google/android/music/sync/common/AbstractSyncAdapter;I)I

    .line 143
    iget-object v1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

    iput-object v1, v0, Lcom/google/android/music/sync/common/AbstractSyncAdapter;->mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

    .line 144
    return-object v0
.end method

.method protected abstract buildEmpty(Landroid/content/Context;)Lcom/google/android/music/sync/common/AbstractSyncAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TV;"
        }
    .end annotation
.end method

.method public setActionOnInitialization(I)Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;
    .locals 0
    .parameter "onInitializationState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, this:Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;,"Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder<TT;TV;>;"
    iput p1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->mActionOnInitialization:I

    .line 105
    return-object p0
.end method

.method public setAuthInfo(Lcom/google/android/music/sync/common/AuthInfo;)Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;
    .locals 0
    .parameter "authInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AuthInfo;",
            ")",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, this:Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;,"Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder<TT;TV;>;"
    iput-object p1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

    .line 122
    return-object p0
.end method

.method public setMaxQueueSize(I)Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;
    .locals 0
    .parameter "maxQueueSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;,"Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder<TT;TV;>;"
    iput p1, p0, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->mMaxQueueSize:I

    .line 114
    return-object p0
.end method
