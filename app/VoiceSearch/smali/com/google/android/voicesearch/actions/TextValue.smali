.class public Lcom/google/android/voicesearch/actions/TextValue;
.super Lcom/google/android/voicesearch/actions/SlotValue;
.source "TextValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/TextValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/voicesearch/actions/TextValue$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/TextValue$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/TextValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voicesearch/actions/TextValue;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p1, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actions/TextValue;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/String;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    move v0, v1

    .line 61
    :goto_0
    return v0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
