.class public Lcom/mobipocket/common/library/reader/ActiveArea;
.super Ljava/lang/Object;
.source "ActiveArea.java"


# static fields
.field public static final AA_BOTTOM_NOT_ON_PAGE:I = 0x2

.field public static final AA_NOT_CUT:I = 0x0

.field public static final AA_TOP_NOT_ON_PAGE:I = 0x1

.field static final ACTION:I = 0x4

.field static final BACK_H_REF:I = 0x21

.field static final BUY_H_REF:I = 0x22

.field static final DETAILS_H_REF:I = 0x23

.field static final DIAL_H_REF:I = 0x20

.field static final DicEntries:I = 0x9

.field static final DicEntry:I = 0x8

.field static final H_BOOK_REF:I = 0xc

.field static final H_REF:I = 0x1

.field static final H_RERANDPOSITION:I = 0x2

.field static final IMAGE_H_REF:I = 0x1e

.field static final INDEX_H_REF:I = 0x1f

.field static final IntParamFunc:I = 0x6

.field static final NOT_SET:I = 0x0

.field static final NoParamFunc:I = 0x5

.field static final POSITION:I = 0x3

.field static final StrParamFunc:I = 0x7

.field static final WordlistEntries:I = 0xb

.field static final WordlistEntry:I = 0xa


# instance fields
.field private _LinkId:Ljava/lang/String;

.field private aaCutInfo:I

.field private annotationCallback:Lcom/mobipocket/common/library/reader/AnnotationItem;

.field private displayableAnnotationNumber:I

.field private function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

.field private pHref:Ljava/lang/String;

.field private pTitle:Ljava/lang/String;

.field private final privAAType:I

.field private privBegin:I

.field private privEnd:I

.field private privFilePos:I

.field private privLinkType:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "AreaType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v2, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privBegin:I

    .line 71
    iput v2, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privEnd:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privLinkType:I

    .line 76
    iput v2, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privFilePos:I

    .line 77
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->pHref:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->pTitle:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->_LinkId:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .line 82
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->annotationCallback:Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 85
    iput v2, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->displayableAnnotationNumber:I

    .line 90
    iput v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->aaCutInfo:I

    .line 98
    iput p1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privAAType:I

    .line 101
    iput v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->aaCutInfo:I

    .line 102
    return-void
.end method

.method private computeNormalLink(Lcom/mobipocket/common/parser/AttributeStack;)Z
    .locals 7
    .parameter "attstack"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 172
    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v3

    iput v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privFilePos:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 174
    const/4 v3, 0x3

    iput v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privLinkType:I

    move v3, v5

    .line 227
    :goto_0
    return v3

    .line 177
    :cond_0
    const/16 v3, 0x61

    invoke-virtual {p1, v3}, Lcom/mobipocket/common/parser/AttributeStack;->attributeStringValue(S)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->pHref:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 179
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->pHref:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, lowerCaseLink:Ljava/lang/String;
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    iput v5, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privLinkType:I

    move v3, v5

    .line 183
    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_2

    .line 187
    const/16 v3, 0x1e

    iput v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privLinkType:I

    move v3, v5

    .line 188
    goto :goto_0

    .line 190
    :cond_2
    const-string v3, "oeb:livebook"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    const/16 v3, 0xc

    iput v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privLinkType:I

    move v3, v5

    .line 193
    goto :goto_0

    .line 197
    .end local v1           #lowerCaseLink:Ljava/lang/String;
    :cond_3
    const/16 v3, 0x75

    invoke-virtual {p1, v3}, Lcom/mobipocket/common/parser/AttributeStack;->attributeStringValue(S)Ljava/lang/String;

    move-result-object v2

    .local v2, onClick:Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 200
    new-instance v0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;

    invoke-direct {v0, v2}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, functionCall:Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getJavaScriptFunction()Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    move-result-object v3

    iput-object v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .line 202
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    if-nez v3, :cond_4

    move v3, v6

    .line 203
    goto :goto_0

    .line 204
    :cond_4
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isIndexSearchFunction()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isFilteredIndexSearchFunction()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isCondIndexSearchFunction()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 208
    :cond_5
    const/16 v3, 0x1f

    iput v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privLinkType:I

    move v3, v5

    .line 209
    goto :goto_0

    .line 211
    :cond_6
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isDialFunction()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 213
    const/16 v3, 0x20

    iput v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privLinkType:I

    move v3, v5

    .line 214
    goto/16 :goto_0

    .line 216
    :cond_7
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isHistoryBackFunction()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 218
    const/16 v3, 0x21

    iput v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privLinkType:I

    move v3, v5

    .line 219
    goto/16 :goto_0

    .line 223
    :cond_8
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .end local v0           #functionCall:Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;
    :cond_9
    move v3, v6

    .line 227
    goto/16 :goto_0
.end method


# virtual methods
.method public computeLink(Lcom/mobipocket/common/parser/AttributeStack;)Z
    .locals 3
    .parameter "attstack"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/ActiveArea;->computeNormalLink(Lcom/mobipocket/common/parser/AttributeStack;)Z

    move-result v0

    .line 150
    .local v0, computed:Z
    const/16 v1, 0x5c

    invoke-virtual {p1, v1}, Lcom/mobipocket/common/parser/AttributeStack;->attributeStringValue(S)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->_LinkId:Ljava/lang/String;

    .line 151
    const-string v1, "BUY"

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->_LinkId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    const/16 v1, 0x22

    iput v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privLinkType:I

    .line 154
    const/4 v0, 0x1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    const-string v1, "DETAILS"

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->_LinkId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/16 v1, 0x23

    iput v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privLinkType:I

    .line 159
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public computeTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->pTitle:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public getActiveAreaCutInfo()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->aaCutInfo:I

    return v0
.end method

.method public getAnnotationCallback()Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->annotationCallback:Lcom/mobipocket/common/library/reader/AnnotationItem;

    return-object v0
.end method

.method public getBegin()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privBegin:I

    return v0
.end method

.method public getCaption1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    const-string v0, ""

    .line 417
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isIndexSearchFunction()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isFilteredIndexSearchFunction()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isCondIndexSearchFunction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    :cond_0
    iget-object p0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .end local p0
    check-cast p0, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;->getCaption1()Ljava/lang/String;

    move-result-object v0

    .line 422
    :cond_1
    return-object v0
.end method

.method public getCaption2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    const-string v0, ""

    .line 434
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isFilteredIndexSearchFunction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iget-object p0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .end local p0
    check-cast p0, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;->getCaption2()Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_0
    return-object v0
.end method

.method public getDisplayableAnnotationNumber()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->displayableAnnotationNumber:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privEnd:I

    return v0
.end method

.method public getExtLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->pHref:Ljava/lang/String;

    return-object v0
.end method

.method getGenericType()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privAAType:I

    return v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->_LinkId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageRecordIndex()I
    .locals 2

    .prologue
    .line 445
    new-instance v0, Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->pHref:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->toInteger(I)I

    move-result v0

    return v0
.end method

.method public getIndexName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    const-string v0, ""

    .line 373
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isIndexSearchFunction()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isFilteredIndexSearchFunction()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isCondIndexSearchFunction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    :cond_0
    iget-object p0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .end local p0
    check-cast p0, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;->getIndexName()Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_1
    return-object v0
.end method

.method public getKeyIndexName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    const-string v0, ""

    .line 389
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isFilteredIndexSearchFunction()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isCondIndexSearchFunction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    :cond_0
    iget-object p0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .end local p0
    check-cast p0, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;->getKeyIndexName()Ljava/lang/String;

    move-result-object v0

    .line 393
    :cond_1
    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    const-string v0, ""

    .line 404
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isCondIndexSearchFunction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    iget-object p0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .end local p0
    check-cast p0, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;->getKeyName()Ljava/lang/String;

    move-result-object v0

    .line 406
    :cond_0
    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    const-string v0, ""

    .line 360
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isDialFunction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget-object p0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .end local p0
    check-cast p0, Lcom/mobipocket/common/parser/javascript/DialFunction;

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/javascript/DialFunction;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_0
    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privFilePos:I

    if-gez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privFilePos:I

    .line 330
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privFilePos:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->pTitle:Ljava/lang/String;

    return-object v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privLinkType:I

    sparse-switch v0, :sswitch_data_0

    .line 499
    iget v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privAAType:I

    :goto_0
    return v0

    .line 467
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 471
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 475
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 479
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 483
    :sswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 487
    :sswitch_5
    const/16 v0, 0x8

    goto :goto_0

    .line 491
    :sswitch_6
    const/16 v0, 0xb

    goto :goto_0

    .line 495
    :sswitch_7
    const/16 v0, 0xd

    goto :goto_0

    .line 463
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_1
        0x1e -> :sswitch_2
        0x1f -> :sswitch_3
        0x20 -> :sswitch_4
        0x21 -> :sswitch_5
        0x22 -> :sswitch_6
        0x23 -> :sswitch_7
    .end sparse-switch
.end method

.method public isBeginningOnPage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    iget v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->aaCutInfo:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEndingOnPage()Z
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->aaCutInfo:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivAreaCuttingInfo(I)V
    .locals 0
    .parameter "cutInfo"

    .prologue
    .line 113
    iput p1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->aaCutInfo:I

    .line 114
    return-void
.end method

.method public setAnnotationCallback(Lcom/mobipocket/common/library/reader/AnnotationItem;)V
    .locals 0
    .parameter "annotation"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->annotationCallback:Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 255
    return-void
.end method

.method setBegin(I)V
    .locals 0
    .parameter "begin"

    .prologue
    .line 281
    iput p1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privBegin:I

    .line 282
    return-void
.end method

.method public setDisplayableAnnotationNumber(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 272
    iput p1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->displayableAnnotationNumber:I

    .line 273
    return-void
.end method

.method setEnd(I)V
    .locals 0
    .parameter "end"

    .prologue
    .line 290
    iput p1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privEnd:I

    .line 291
    return-void
.end method

.method setNewFlowPosition(I)V
    .locals 2
    .parameter "begin"

    .prologue
    .line 299
    iget v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privEnd:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privBegin:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privEnd:I

    .line 300
    iput p1, p0, Lcom/mobipocket/common/library/reader/ActiveArea;->privBegin:I

    .line 301
    return-void
.end method
