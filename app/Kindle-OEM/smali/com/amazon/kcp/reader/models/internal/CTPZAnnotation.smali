.class public Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
.super Ljava/lang/Object;
.source "CTPZAnnotation.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IAnnotation;
.implements Lcom/amazon/kcp/reader/models/IAnnotationData;


# instance fields
.field private annotationAction:I

.field private bookText:Ljava/lang/String;

.field private creationTime:J

.field private endPosition:I

.field private navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

.field private position:I

.field private startPosition:I

.field private state:[B

.field private type:I

.field private userText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V
    .locals 2
    .parameter "bookText"
    .parameter "type"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "position"
    .parameter "userText"
    .parameter "navigator"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->startPosition:I

    .line 36
    iput p4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->endPosition:I

    .line 37
    iput p5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->position:I

    .line 38
    iput p2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->type:I

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->bookText:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->userText:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->annotationAction:I

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->creationTime:J

    .line 43
    iput-object p7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Lcom/amazon/kcp/reader/models/IAnnotationData;
    .locals 8

    .prologue
    .line 73
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->bookText:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->type:I

    iget v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->startPosition:I

    iget v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->endPosition:I

    iget v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->position:I

    iget-object v6, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->userText:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V

    .line 75
    .local v0, annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->annotationAction:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->setAnnotationAction(I)V

    .line 76
    iget-wide v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->creationTime:J

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->setCreationTime(J)V

    .line 78
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
    .line 11
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->clone()Lcom/amazon/kcp/reader/models/IAnnotationData;

    move-result-object v0

    return-object v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->annotationAction:I

    return v0
.end method

.method public getBegin()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->startPosition:I

    return v0
.end method

.method public getBookText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->bookText:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->userText:Ljava/lang/String;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->endPosition:I

    return v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->position:I

    return v0
.end method

.method public getState()[B
    .locals 3

    .prologue
    .line 105
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 106
    .local v0, newState:[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->endPosition:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 107
    const/4 v1, 0x1

    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->endPosition:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 108
    const/4 v1, 0x2

    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->endPosition:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 109
    const/4 v1, 0x3

    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->endPosition:I

    shr-int/lit8 v2, v2, 0x0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 111
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->state:[B

    .line 113
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->state:[B

    return-object v1
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->creationTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->type:I

    return v0
.end method

.method public getUserLocation()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->startPosition:I

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZUserLocation;->getAmznUserLocationFromPosition(I)I

    move-result v0

    return v0
.end method

.method public getUserText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->userText:Ljava/lang/String;

    return-object v0
.end method

.method public gotoLocation()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->gotoPosition(I)V

    .line 69
    return-void
.end method

.method public isEqual(Lcom/amazon/kcp/reader/models/IAnnotation;)Z
    .locals 7
    .parameter "other"

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, equal:Z
    instance-of v3, p1, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    if-eqz v3, :cond_0

    .line 157
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    move-object v2, v0

    .line 158
    .local v2, otherAnnotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->bookText:Ljava/lang/String;

    iget-object v4, v2, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->bookText:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->userText:Ljava/lang/String;

    iget-object v4, v2, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->userText:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->position:I

    iget v4, v2, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->position:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->startPosition:I

    iget v4, v2, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->startPosition:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->endPosition:I

    iget v4, v2, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->endPosition:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->type:I

    iget v4, v2, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->type:I

    if-ne v3, v4, :cond_1

    iget-wide v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->creationTime:J

    iget-wide v5, v2, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->creationTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 166
    .end local v2           #otherAnnotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    :cond_0
    :goto_0
    return v1

    .line 158
    .restart local v2       #otherAnnotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0
.end method

.method public setAnnotationAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 140
    iput p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->annotationAction:I

    .line 141
    return-void
.end method

.method public setCreationTime(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->creationTime:J

    .line 150
    return-void
.end method
