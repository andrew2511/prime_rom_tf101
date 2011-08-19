.class public Lcom/google/android/music/Workspace$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/Workspace$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 790
    new-instance v0, Lcom/google/android/music/Workspace$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/music/Workspace$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/music/Workspace$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 780
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 773
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/Workspace$SavedState;->currentScreen:I

    .line 781
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/Workspace$SavedState;->currentScreen:I

    .line 782
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/music/Workspace$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/google/android/music/Workspace$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 776
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 773
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/Workspace$SavedState;->currentScreen:I

    .line 777
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 786
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 787
    iget v0, p0, Lcom/google/android/music/Workspace$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    return-void
.end method
