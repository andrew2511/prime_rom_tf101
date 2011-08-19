.class public Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;
.super Ljava/lang/Object;
.source "DebouncedMinValue.java"


# instance fields
.field private final mDebounce:I

.field private mNewValue:I

.field private mNewValueDebounce:I

.field private mValue:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "initialValue"
    .parameter "debounce"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mValue:I

    .line 40
    iput p2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mDebounce:I

    .line 41
    return-void
.end method


# virtual methods
.method public get()I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mNewValueDebounce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mNewValueDebounce:I

    .line 64
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mNewValueDebounce:I

    iget v1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mDebounce:I

    if-ne v0, v1, :cond_0

    .line 66
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mNewValue:I

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mValue:I

    .line 68
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mValue:I

    return v0
.end method

.method public set(I)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mValue:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mValue:I

    .line 53
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mNewValue:I

    if-eq p1, v0, :cond_0

    .line 54
    iput p1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mNewValue:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->mNewValueDebounce:I

    .line 57
    :cond_0
    return-void
.end method
