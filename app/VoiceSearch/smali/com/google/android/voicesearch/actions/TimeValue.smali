.class public Lcom/google/android/voicesearch/actions/TimeValue;
.super Lcom/google/android/voicesearch/actions/SlotValue;
.source "TimeValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/TimeValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHourOfDay:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/voicesearch/actions/TimeValue$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/TimeValue$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/TimeValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mHourOfDay:I

    .line 35
    iput p2, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mMinute:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mHourOfDay:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mMinute:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voicesearch/actions/TimeValue;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget v0, p1, Lcom/google/android/voicesearch/actions/TimeValue;->mHourOfDay:I

    iget v1, p1, Lcom/google/android/voicesearch/actions/TimeValue;->mMinute:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/actions/TimeValue;-><init>(II)V

    .line 40
    return-void
.end method


# virtual methods
.method public asString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 72
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 74
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mHourOfDay:I

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 75
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mMinute:I

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 77
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHourOfDay()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mHourOfDay:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mMinute:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mHourOfDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return-void
.end method
