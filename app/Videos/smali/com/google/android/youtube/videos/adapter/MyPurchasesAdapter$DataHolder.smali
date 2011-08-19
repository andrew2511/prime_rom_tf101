.class Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
.super Ljava/lang/Object;
.source "MyPurchasesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataHolder"
.end annotation


# instance fields
.field public downloadProgress:I

.field public downloadStatus:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

.field public expirationDate:Ljava/util/Date;

.field public index:I

.field public offlinePin:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    .line 300
    return-void
.end method
