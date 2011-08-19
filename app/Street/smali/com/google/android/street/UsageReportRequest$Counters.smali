.class Lcom/google/android/street/UsageReportRequest$Counters;
.super Ljava/lang/Object;
.source "UsageReportRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/UsageReportRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Counters"
.end annotation


# instance fields
.field navigationCount:I

.field panningCount:I

.field final sceneType:I

.field zoomingCount:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "sceneType"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/google/android/street/UsageReportRequest$Counters;->sceneType:I

    .line 50
    return-void
.end method

.method static setPositiveInt(ILcom/google/mobile/common/io/protocol/ProtoBuf;I)V
    .locals 0
    .parameter "count"
    .parameter "viewpoint"
    .parameter "tag"

    .prologue
    .line 63
    if-lez p0, :cond_0

    .line 64
    invoke-virtual {p1, p2, p0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method addViewpointProto(Lcom/google/mobile/common/io/protocol/ProtoBuf;)V
    .locals 4
    .parameter "streetViewReportProto"

    .prologue
    const/4 v3, 0x4

    .line 73
    invoke-virtual {p0}, Lcom/google/android/street/UsageReportRequest$Counters;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {p1, v3}, Lcom/google/mobile/common/io/protocol/ProtoBufUtil;->addProtoBuf(Lcom/google/mobile/common/io/protocol/ProtoBuf;I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 78
    .local v0, viewpoint:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    iget v1, p0, Lcom/google/android/street/UsageReportRequest$Counters;->sceneType:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/street/UsageReportRequest$Counters;->setPositiveInt(ILcom/google/mobile/common/io/protocol/ProtoBuf;I)V

    .line 80
    iget v1, p0, Lcom/google/android/street/UsageReportRequest$Counters;->panningCount:I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/google/android/street/UsageReportRequest$Counters;->setPositiveInt(ILcom/google/mobile/common/io/protocol/ProtoBuf;I)V

    .line 82
    iget v1, p0, Lcom/google/android/street/UsageReportRequest$Counters;->zoomingCount:I

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/google/android/street/UsageReportRequest$Counters;->setPositiveInt(ILcom/google/mobile/common/io/protocol/ProtoBuf;I)V

    .line 84
    iget v1, p0, Lcom/google/android/street/UsageReportRequest$Counters;->navigationCount:I

    invoke-static {v1, v0, v3}, Lcom/google/android/street/UsageReportRequest$Counters;->setPositiveInt(ILcom/google/mobile/common/io/protocol/ProtoBuf;I)V

    goto :goto_0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/street/UsageReportRequest$Counters;->panningCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/android/street/UsageReportRequest$Counters;->zoomingCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/android/street/UsageReportRequest$Counters;->navigationCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
