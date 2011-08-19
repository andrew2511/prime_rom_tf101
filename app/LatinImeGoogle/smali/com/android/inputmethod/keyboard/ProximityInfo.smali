.class public Lcom/android/inputmethod/keyboard/ProximityInfo;
.super Ljava/lang/Object;
.source "ProximityInfo.java"


# instance fields
.field private final mGridHeight:I

.field private final mGridSize:I

.field private final mGridWidth:I

.field private mNativeProximityInfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Lcom/android/inputmethod/latin/Utils;->loadNativeLibrary()V

    .line 40
    return-void
.end method

.method constructor <init>(II)V
    .locals 2
    .parameter "gridWidth"
    .parameter "gridHeight"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    .line 33
    iput p2, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    .line 34
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    .line 35
    return-void
.end method

.method private native releaseProximityInfoNative(I)V
.end method

.method private native setProximityInfoNative(IIIII[I)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:I

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/ProximityInfo;->releaseProximityInfoNative(I)V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getNativeProximityInfo(Lcom/android/inputmethod/keyboard/Keyboard;)I
    .locals 1
    .parameter "keyboard"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:I

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Keyboard;->computeNearestNeighbors()V

    .line 66
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:I

    return v0
.end method

.method public final setProximityInfo([[IIILjava/util/List;)V
    .locals 10
    .parameter "gridNeighborKeyIndexes"
    .parameter "keyboardWidth"
    .parameter "keyboardHeight"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[III",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p4, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    mul-int/lit8 v0, v0, 0x10

    new-array v6, v0, [I

    .line 48
    .local v6, proximityCharsArray:[I
    const/4 v0, -0x1

    invoke-static {v6, v0}, Ljava/util/Arrays;->fill([II)V

    .line 49
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    if-ge v7, v0, :cond_1

    .line 50
    aget-object v0, p1, v7

    array-length v9, v0

    .line 51
    .local v9, proximityCharsLength:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    if-ge v8, v9, :cond_0

    .line 52
    mul-int/lit8 v0, v7, 0x10

    add-int v1, v0, v8

    aget-object v0, p1, v7

    aget v0, v0, v8

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/Key;

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    aput v0, v6, v1

    .line 51
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 56
    .end local v8           #j:I
    .end local v9           #proximityCharsLength:I
    :cond_1
    const/16 v1, 0x10

    iget v4, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    iget v5, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/ProximityInfo;->setProximityInfoNative(IIIII[I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:I

    .line 58
    return-void
.end method
