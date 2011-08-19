.class public Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;
.super Ljava/lang/Object;
.source "CMBPAnnotationData.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IAnnotationData;


# instance fields
.field protected annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

.field protected annotationAction:I

.field protected annotationTime:J


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/AnnotationExport;)V
    .locals 2
    .parameter "annotationExport"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    .line 23
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotationTime:J

    .line 24
    return-void
.end method


# virtual methods
.method public clone()Lcom/amazon/kcp/reader/models/IAnnotationData;
    .locals 4

    .prologue
    .line 30
    new-instance v1, Lcom/mobipocket/common/library/reader/AnnotationExport;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/AnnotationExport;-><init>()V

    .line 32
    .local v1, clonedExport:Lcom/mobipocket/common/library/reader/AnnotationExport;
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->begin:I

    iput v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->begin:I

    .line 33
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->effect:I

    iput v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->effect:I

    .line 34
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->end:I

    iput v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->end:I

    .line 35
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->page:I

    iput v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->page:I

    .line 36
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->pos:I

    iput v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->pos:I

    .line 37
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->subject:Ljava/lang/String;

    iput-object v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->subject:Ljava/lang/String;

    .line 38
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->state:[B

    iput-object v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->state:[B

    .line 39
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->text:Ljava/lang/String;

    iput-object v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->text:Ljava/lang/String;

    .line 40
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v2, v2, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    iput v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    .line 42
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;-><init>(Lcom/mobipocket/common/library/reader/AnnotationExport;)V

    .line 43
    .local v0, clonedAnnotation:Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->getAction()I

    move-result v2

    iput v2, v0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotationAction:I

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotationTime:J

    .line 46
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->clone()Lcom/amazon/kcp/reader/models/IAnnotationData;

    move-result-object v0

    return-object v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotationAction:I

    return v0
.end method

.method public getBegin()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v0, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->begin:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v0, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->end:I

    return v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v0, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->pos:I

    return v0
.end method

.method public getState()[B
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->state:[B

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotationTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget v0, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 92
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 84
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 88
    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method public getUserText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 132
    iput p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotationAction:I

    .line 133
    return-void
.end method

.method public setBegin(I)V
    .locals 1
    .parameter "begin"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iput p1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->begin:I

    .line 141
    return-void
.end method

.method public setEnd(I)V
    .locals 1
    .parameter "end"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iput p1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->end:I

    .line 149
    return-void
.end method

.method public setPos(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iput p1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->pos:I

    .line 157
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 173
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/mobipocket/common/library/reader/AnnotationExport;->state:[B

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 176
    .local v2, stateChar:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_0

    .line 178
    mul-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 179
    .local v0, decvalue:I
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/AnnotationExport;->state:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v0           #decvalue:I
    :cond_0
    return-void
.end method

.method public setState([B)V
    .locals 1
    .parameter "state"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iput-object p1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->state:[B

    .line 189
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotationTime:J

    .line 197
    return-void
.end method

.method public setType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iput p1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    .line 125
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    const/4 v1, 0x2

    iput v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    const/4 v1, 0x4

    iput v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    const/4 v1, 0x1

    iput v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    const/16 v1, 0x80

    iput v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setUserText(Ljava/lang/String;)V
    .locals 1
    .parameter "userText"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->annotation:Lcom/mobipocket/common/library/reader/AnnotationExport;

    iput-object p1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->text:Ljava/lang/String;

    .line 165
    return-void
.end method
