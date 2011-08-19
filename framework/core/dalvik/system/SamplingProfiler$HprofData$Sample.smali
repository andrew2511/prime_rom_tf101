.class public final Ldalvik/system/SamplingProfiler$HprofData$Sample;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler$HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sample"
.end annotation


# instance fields
.field public final count:I

.field public final stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;


# direct methods
.method private constructor <init>(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;I)V
    .registers 6
    .parameter "stackTrace"
    .parameter "count"

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    if-nez p1, :cond_d

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stackTrace == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_d
    if-gez p2, :cond_28

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count < 0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_28
    iput-object p1, p0, Ldalvik/system/SamplingProfiler$HprofData$Sample;->stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    .line 258
    iput p2, p0, Ldalvik/system/SamplingProfiler$HprofData$Sample;->count:I

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;ILdalvik/system/SamplingProfiler$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Ldalvik/system/SamplingProfiler$HprofData$Sample;-><init>(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 269
    move-object v0, p1

    check-cast v0, Ldalvik/system/SamplingProfiler$HprofData$Sample;

    move-object v1, v0

    .line 270
    .local v1, s:Ldalvik/system/SamplingProfiler$HprofData$Sample;
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$HprofData$Sample;->stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    iget-object v3, v1, Ldalvik/system/SamplingProfiler$HprofData$Sample;->stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    invoke-virtual {v2, v3}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget v2, p0, Ldalvik/system/SamplingProfiler$HprofData$Sample;->count:I

    iget v3, v1, Ldalvik/system/SamplingProfiler$HprofData$Sample;->count:I

    if-ne v2, v3, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 262
    const/16 v0, 0x11

    .line 263
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v1, p0, Ldalvik/system/SamplingProfiler$HprofData$Sample;->stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 264
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ldalvik/system/SamplingProfiler$HprofData$Sample;->count:I

    add-int v0, v1, v2

    .line 265
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sample[count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldalvik/system/SamplingProfiler$HprofData$Sample;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/SamplingProfiler$HprofData$Sample;->stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
