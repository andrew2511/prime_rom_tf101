.class final Ldalvik/system/SamplingProfiler$AsciiHprofWriter$1;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler$AsciiHprofWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ldalvik/system/SamplingProfiler$HprofData$Sample;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ldalvik/system/SamplingProfiler$HprofData$Sample;Ldalvik/system/SamplingProfiler$HprofData$Sample;)I
    .registers 5
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 497
    iget v0, p2, Ldalvik/system/SamplingProfiler$HprofData$Sample;->count:I

    iget v1, p1, Ldalvik/system/SamplingProfiler$HprofData$Sample;->count:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 495
    check-cast p1, Ldalvik/system/SamplingProfiler$HprofData$Sample;

    .end local p1
    check-cast p2, Ldalvik/system/SamplingProfiler$HprofData$Sample;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ldalvik/system/SamplingProfiler$AsciiHprofWriter$1;->compare(Ldalvik/system/SamplingProfiler$HprofData$Sample;Ldalvik/system/SamplingProfiler$HprofData$Sample;)I

    move-result v0

    return v0
.end method
