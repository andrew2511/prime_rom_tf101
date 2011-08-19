.class public Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;
.super Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;
.source "MusicSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/MusicSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicSyncAdapterBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder",
        "<",
        "Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;",
        "Lcom/google/android/music/sync/google/MusicSyncAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Landroid/content/Context;)Lcom/google/android/music/sync/common/AbstractSyncAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;->build(Landroid/content/Context;)Lcom/google/android/music/sync/google/MusicSyncAdapter;

    move-result-object v0

    return-object v0
.end method

.method public build(Landroid/content/Context;)Lcom/google/android/music/sync/google/MusicSyncAdapter;
    .locals 2
    .parameter "context"

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->build(Landroid/content/Context;)Lcom/google/android/music/sync/common/AbstractSyncAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    .line 245
    .local v0, adapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    invoke-static {v0, v1}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->access$102(Lcom/google/android/music/sync/google/MusicSyncAdapter;Lcom/google/android/music/sync/api/MusicApiClient;)Lcom/google/android/music/sync/api/MusicApiClient;

    .line 246
    return-object v0
.end method

.method protected bridge synthetic buildEmpty(Landroid/content/Context;)Lcom/google/android/music/sync/common/AbstractSyncAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;->buildEmpty(Landroid/content/Context;)Lcom/google/android/music/sync/google/MusicSyncAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected buildEmpty(Landroid/content/Context;)Lcom/google/android/music/sync/google/MusicSyncAdapter;
    .locals 1
    .parameter "context"

    .prologue
    .line 231
    new-instance v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-direct {v0, p1}, Lcom/google/android/music/sync/google/MusicSyncAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setMusicApiClient(Lcom/google/android/music/sync/api/MusicApiClient;)Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;
    .locals 0
    .parameter "client"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    .line 239
    return-object p0
.end method
