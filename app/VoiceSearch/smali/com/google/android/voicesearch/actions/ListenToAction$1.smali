.class final Lcom/google/android/voicesearch/actions/ListenToAction$1;
.super Ljava/lang/Object;
.source "ListenToAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/actions/ListenToAction;
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
        "Lcom/google/android/voicesearch/actions/ListenToAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/voicesearch/actions/ListenToAction;
    .locals 1
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/google/android/voicesearch/actions/ListenToAction;

    invoke-direct {v0, p1}, Lcom/google/android/voicesearch/actions/ListenToAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/ListenToAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/voicesearch/actions/ListenToAction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/voicesearch/actions/ListenToAction;
    .locals 1
    .parameter

    .prologue
    .line 72
    new-array v0, p1, [Lcom/google/android/voicesearch/actions/ListenToAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/ListenToAction$1;->newArray(I)[Lcom/google/android/voicesearch/actions/ListenToAction;

    move-result-object v0

    return-object v0
.end method
