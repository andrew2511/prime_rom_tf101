.class Lcom/google/android/gtalkservice/ConnectionError$1;
.super Ljava/lang/Object;
.source "ConnectionError.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/ConnectionError;
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
        "Lcom/google/android/gtalkservice/ConnectionError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/ConnectionError;
    .locals 1
    .parameter

    .prologue
    .line 162
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionError;

    invoke-direct {v0, p1}, Lcom/google/android/gtalkservice/ConnectionError;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/ConnectionError$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gtalkservice/ConnectionError;
    .locals 1
    .parameter

    .prologue
    .line 166
    new-array v0, p1, [Lcom/google/android/gtalkservice/ConnectionError;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/ConnectionError$1;->newArray(I)[Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v0

    return-object v0
.end method
