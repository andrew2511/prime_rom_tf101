.class public Lcom/google/android/googlequicksearchbox/util/RollingAverage;
.super Ljava/lang/Object;
.source "RollingAverage.java"


# instance fields
.field private mHead:I

.field private final mSize:I

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mValues:Ljava/util/ArrayList;

    .line 33
    iput p1, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mSize:I

    .line 34
    return-void
.end method

.method private square(F)F
    .locals 1
    .parameter "f"

    .prologue
    .line 74
    mul-float v0, p1, p1

    return v0
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mSize:I

    if-ge v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mHead:I

    .line 39
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mHead:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mSize:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mHead:I

    .line 42
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mValues:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mHead:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public get()F
    .locals 5

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->getNumSamples()I

    move-result v3

    if-nez v3, :cond_0

    .line 64
    const/4 v3, 0x0

    .line 70
    :goto_0
    return v3

    .line 66
    :cond_0
    const/4 v2, 0x0

    .line 67
    .local v2, sum:I
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 68
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 70
    .end local v0           #i:Ljava/lang/Integer;
    :cond_1
    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->getNumSamples()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0
.end method

.method public getNumSamples()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getStdDev()F
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->getNumSamples()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 88
    :goto_0
    return v4

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->get()F

    move-result v2

    .line 83
    .local v2, mean:F
    const/4 v3, 0x0

    .line 84
    .local v3, sum:F
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->floatValue()F

    move-result v4

    sub-float/2addr v4, v2

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->square(F)F

    move-result v3

    goto :goto_1

    .line 87
    .end local v0           #i:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->getNumSamples()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 88
    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{avg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->get()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",stddev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->getStdDev()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
