.class final Lcom/google/android/music/dl/DownloadOrder$1;
.super Ljava/lang/Object;
.source "DownloadOrder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/music/dl/DownloadOrder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/dl/DownloadOrder;
    .locals 1
    .parameter "p"

    .prologue
    .line 385
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadOrder$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/music/dl/DownloadOrder;
    .locals 1
    .parameter "size"

    .prologue
    .line 389
    new-array v0, p1, [Lcom/google/android/music/dl/DownloadOrder;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadOrder$1;->newArray(I)[Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    return-object v0
.end method
