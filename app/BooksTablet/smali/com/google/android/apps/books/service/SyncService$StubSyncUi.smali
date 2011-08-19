.class public Lcom/google/android/apps/books/service/SyncService$StubSyncUi;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Lcom/google/android/apps/books/service/SyncService$SyncUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/SyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StubSyncUi"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishedAllVolumeDownloads()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public startingVolumeDownload(II)V
    .locals 0
    .parameter "volumeNumber"
    .parameter "volumeCount"

    .prologue
    .line 238
    return-void
.end method
