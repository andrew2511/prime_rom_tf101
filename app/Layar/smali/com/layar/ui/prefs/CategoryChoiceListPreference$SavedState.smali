.class Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "CategoryChoiceListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/prefs/CategoryChoiceListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState$1;

    invoke-direct {v0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState$1;-><init>()V

    .line 392
    sput-object v0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 373
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 377
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;->value:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 389
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 383
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 384
    iget-object v0, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    return-void
.end method
