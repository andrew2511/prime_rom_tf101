.class Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;
.super Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;
.source "AnnotationCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AnnotationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedAnnotationData"
.end annotation


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/AnnotationExport;)V
    .locals 0
    .parameter "annotationExport"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;-><init>(Lcom/mobipocket/common/library/reader/AnnotationExport;)V

    .line 59
    return-void
.end method

.method public static timeToTimestamp(J)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 81
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->zeroPadding(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->zeroPadding(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->zeroPadding(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "T"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->zeroPadding(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->zeroPadding(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->zeroPadding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method public static timestampToTime(Ljava/lang/String;)J
    .locals 7
    .parameter "timestamp"

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xb

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 101
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/4 v1, 0x2

    const/4 v2, 0x7

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 103
    const/16 v1, 0x8

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 104
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/16 v1, 0xc

    const/16 v2, 0xe

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v1, 0x11

    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 108
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method private static zeroPadding(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 65
    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    .line 67
    const-string v0, "0"

    .line 68
    .local v0, result:Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 72
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public cloneModel()Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lcom/mobipocket/common/library/reader/AnnotationExport;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/AnnotationExport;-><init>()V

    .line 146
    .local v0, clonedExport:Lcom/mobipocket/common/library/reader/AnnotationExport;
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->begin:I

    iput v2, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->begin:I

    .line 147
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->effect:I

    iput v2, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->effect:I

    .line 148
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->end:I

    iput v2, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->end:I

    .line 149
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->page:I

    iput v2, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->page:I

    .line 150
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->pos:I

    iput v2, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->pos:I

    .line 151
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->subject:Ljava/lang/String;

    iput-object v2, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->subject:Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->state:[B

    iput-object v2, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->state:[B

    .line 153
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->text:Ljava/lang/String;

    iput-object v2, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->text:Ljava/lang/String;

    .line 154
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    iput v2, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    .line 156
    new-instance v1, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;-><init>(Lcom/mobipocket/common/library/reader/AnnotationExport;)V

    .line 158
    .local v1, newAnnotationData:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setAction(I)V

    .line 159
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setTime(J)V

    .line 161
    return-object v1
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 114
    const-string v0, "create"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 132
    :goto_0
    invoke-super {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->setAction(I)V

    .line 133
    return-void

    .line 118
    :cond_0
    const-string v0, "modify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    const-string v0, "delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 124
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 2
    .parameter "timestamp"

    .prologue
    .line 137
    invoke-static {p1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->timestampToTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->setTime(J)V

    .line 138
    return-void
.end method
