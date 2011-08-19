.class Lcom/mobipocket/common/library/reader/DisplayableAnnotation;
.super Ljava/lang/Object;
.source "DisplayableAnnotation.java"


# instance fields
.field private final annotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

.field private beginPos:I

.field private endPos:I

.field private number:I

.field private selectable:Z

.field private type:I


# direct methods
.method constructor <init>(Lcom/mobipocket/common/library/reader/AnnotationItem;ZI)V
    .locals 3
    .parameter "annotation"
    .parameter "selectable"
    .parameter "annotationNumber"

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->beginPos:I

    .line 9
    iput v1, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->endPos:I

    .line 12
    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->selectable:Z

    .line 13
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->number:I

    .line 14
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->type:I

    .line 25
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->beginPos:I

    .line 28
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->endPos:I

    .line 29
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 31
    iput v2, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->type:I

    .line 38
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->annotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 39
    iput-boolean p2, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->selectable:Z

    .line 40
    iput p3, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->number:I

    .line 41
    return-void

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->type:I

    goto :goto_0
.end method


# virtual methods
.method getAnnotation()Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->annotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    return-object v0
.end method

.method getBeginPos()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->beginPos:I

    return v0
.end method

.method public getDisplayableNumber()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->number:I

    return v0
.end method

.method getEndPos()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->endPos:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->type:I

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->selectable:Z

    return v0
.end method
