.class public Lcom/google/android/street/StreetView$Status;
.super Ljava/lang/Object;
.source "StreetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/StreetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# instance fields
.field public mBadPanorama:Z

.field public mDisabled:Z

.field public mGotNetworkConnection:Z

.field public mGotPanoramaConfig:Z

.field public mThrottling:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/google/android/street/StreetView$Status;->mBadPanorama:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/street/StreetView$Status;->mThrottling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/street/StreetView$Status;->mDisabled:Z

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    const/16 v0, 0x2710

    .line 326
    :goto_0
    return v0

    .line 320
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/street/StreetView$Status;->mGotNetworkConnection:Z

    if-nez v0, :cond_2

    .line 321
    const/4 v0, 0x0

    goto :goto_0

    .line 323
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/street/StreetView$Status;->mGotPanoramaConfig:Z

    if-nez v0, :cond_3

    .line 324
    const/16 v0, 0x3e8

    goto :goto_0

    .line 326
    :cond_3
    const/16 v0, 0x7d0

    goto :goto_0
.end method
