.class public Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SuggestedTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;
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
            "Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mSelEnd:I

.field mSelStart:I

.field mSuggestedText:Ljava/lang/String;

.field mUserText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 455
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 467
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mUserText:Ljava/lang/String;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mSuggestedText:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mSelStart:I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mSelEnd:I

    .line 472
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 443
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 444
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 448
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 449
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mUserText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mSelStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mSelEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    return-void
.end method
