.class public Lcom/mobipocket/common/library/reader/LineInformation;
.super Ljava/lang/Object;
.source "LineInformation.java"


# instance fields
.field private baseline:I

.field private bottomMargin:I

.field private descent:I

.field private height:I

.field private isVisible:Z

.field private nextLineFirstElementIndex:I

.field private tableElement:Lcom/mobipocket/common/library/reader/TableElement;

.field private topMargin:I

.field private y:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->y:I

    .line 19
    iput v1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->height:I

    .line 23
    iput v1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->baseline:I

    .line 27
    iput v1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->descent:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->isVisible:Z

    .line 37
    iput v1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->nextLineFirstElementIndex:I

    .line 47
    iput v1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->bottomMargin:I

    .line 52
    iput v1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->topMargin:I

    .line 66
    iput p1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->y:I

    .line 67
    iput p2, p0, Lcom/mobipocket/common/library/reader/LineInformation;->height:I

    .line 68
    iput p3, p0, Lcom/mobipocket/common/library/reader/LineInformation;->baseline:I

    .line 69
    iput p4, p0, Lcom/mobipocket/common/library/reader/LineInformation;->descent:I

    .line 70
    iput p5, p0, Lcom/mobipocket/common/library/reader/LineInformation;->nextLineFirstElementIndex:I

    .line 71
    iput p6, p0, Lcom/mobipocket/common/library/reader/LineInformation;->bottomMargin:I

    .line 72
    iput p7, p0, Lcom/mobipocket/common/library/reader/LineInformation;->topMargin:I

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for the index of the first element of next line:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->nextLineFirstElementIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    return-void
.end method


# virtual methods
.method public containsTable()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->tableElement:Lcom/mobipocket/common/library/reader/TableElement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->baseline:I

    return v0
.end method

.method public getBottomMargin()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->bottomMargin:I

    return v0
.end method

.method public getDescent()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->descent:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->height:I

    return v0
.end method

.method public getLastSelectableElement(Ljava/util/Vector;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 207
    iget v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->nextLineFirstElementIndex:I

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->nextLineFirstElementIndex:I

    sub-int/2addr v0, v2

    if-ltz v0, :cond_2

    .line 210
    iget v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->nextLineFirstElementIndex:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 213
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->nextLineFirstElementIndex:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 228
    :goto_0
    if-ltz v0, :cond_3

    :goto_1
    return v0

    .line 219
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->nextLineFirstElementIndex:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_0

    .line 228
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getNextLineFirstElementIndex()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->nextLineFirstElementIndex:I

    return v0
.end method

.method public getTableElement()Lcom/mobipocket/common/library/reader/TableElement;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->tableElement:Lcom/mobipocket/common/library/reader/TableElement;

    return-object v0
.end method

.method public getTopMargin()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->topMargin:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->y:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/LineInformation;->isVisible:Z

    return v0
.end method

.method public setBaseline(I)V
    .locals 0
    .parameter "baseline"

    .prologue
    .line 145
    iput p1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->baseline:I

    .line 146
    return-void
.end method

.method public setBottomMargin(I)V
    .locals 0
    .parameter "bottomMargin"

    .prologue
    .line 97
    iput p1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->bottomMargin:I

    .line 98
    return-void
.end method

.method public setDescent(I)V
    .locals 0
    .parameter "descent"

    .prologue
    .line 161
    iput p1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->descent:I

    .line 162
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 129
    iput p1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->height:I

    .line 130
    return-void
.end method

.method public setLineTableElement(Lcom/mobipocket/common/library/reader/TableElement;)V
    .locals 0
    .parameter "elt"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->tableElement:Lcom/mobipocket/common/library/reader/TableElement;

    .line 237
    return-void
.end method

.method public setNextLineFirstElementIndex(I)V
    .locals 2
    .parameter

    .prologue
    .line 195
    iput p1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->nextLineFirstElementIndex:I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for the index of the first element of next line:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->nextLineFirstElementIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->isVisible:Z

    .line 178
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 113
    iput p1, p0, Lcom/mobipocket/common/library/reader/LineInformation;->y:I

    .line 114
    return-void
.end method
