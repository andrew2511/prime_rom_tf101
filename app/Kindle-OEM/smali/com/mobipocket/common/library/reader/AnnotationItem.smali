.class public Lcom/mobipocket/common/library/reader/AnnotationItem;
.super Ljava/lang/Object;
.source "AnnotationItem.java"


# static fields
.field static final BE_COLORING_STYLES:I = 0xf

.field static final BE_COLORRGB:I = 0xf

.field static final BE_MARGINBAR:I = 0x20

.field private static final BT_ADDEDPAGE:I = 0x8

.field static final BT_ALL:I = 0x7f

.field private static final BT_ALL_SPAN:I = 0x36

.field private static final BT_ALL_TEXT:I = 0x3f

.field public static final BT_AUDIO:I = 0x40

.field public static final BT_BOOKMARK:I = 0x1

.field static final BT_HIDDEN:I = 0x4000

.field public static final BT_HIGHLIGHT:I = 0x4

.field private static final BT_LINK:I = 0x20

.field private static final BT_MODIFICATION:I = 0x10

.field public static final BT_NOTE:I = 0x2

.field private static final BT_NOTYPE:I = 0x0

.field public static final BT_RESERVED1:I = 0x100

.field private static final BT_WORD:I = 0x8000

.field private static final SUPPORTED_MASK:I = 0x107


# instance fields
.field private final _State:[B

.field private _Subject:Ljava/lang/String;

.field private _Text:Ljava/lang/String;

.field private final pBeginPosition:I

.field private final pEffect:I

.field private final pEndPosition:I

.field private final pId:I

.field private final pPageNumber:I

.field private final pPagePosition:I

.field private final pType:I


# direct methods
.method constructor <init>(ILcom/mobipocket/common/library/reader/annotations/Annotation;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .parameter "id"
    .parameter "currentAnnotation"
    .parameter "subject"
    .parameter "text"
    .parameter "state"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pId:I

    .line 136
    invoke-virtual {p2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getBegin()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pBeginPosition:I

    .line 137
    invoke-virtual {p2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getEnd()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pEndPosition:I

    .line 138
    invoke-virtual {p2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getBeginPagePos()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pPagePosition:I

    .line 139
    invoke-virtual {p2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getPage()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pPageNumber:I

    .line 140
    invoke-virtual {p2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getType()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pType:I

    .line 141
    invoke-virtual {p2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getEffect()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pEffect:I

    .line 142
    iput-object p3, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->_Subject:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->_Text:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->_State:[B

    .line 145
    return-void
.end method

.method static isTypeSupported(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 233
    and-int/lit16 v0, p0, 0x107

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBeginPosition()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pBeginPosition:I

    return v0
.end method

.method getColor()I
    .locals 3

    .prologue
    const v2, 0xffffff

    .line 218
    iget v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 226
    :goto_0
    return v0

    .line 222
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pEffect:I

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 224
    goto :goto_0

    .line 226
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pEffect:I

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pEffect:I

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pEffect:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method getEffect()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pEffect:I

    return v0
.end method

.method public getEndPosition()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pEndPosition:I

    return v0
.end method

.method getID()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pId:I

    return v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pPageNumber:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pPagePosition:I

    return v0
.end method

.method getState()[B
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->_State:[B

    return-object v0
.end method

.method getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->_Subject:Ljava/lang/String;

    return-object v0
.end method

.method getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->_Text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->_Text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->_Text:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->_Subject:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->pType:I

    return v0
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "newTitle"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->_Text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 259
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->_Text:Ljava/lang/String;

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/AnnotationItem;->_Subject:Ljava/lang/String;

    goto :goto_0
.end method
