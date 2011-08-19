.class public Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;
.super Lcom/amazon/kcp/reader/models/AbstractBookAnnotationsManager;
.source "CTPZBookAnnotationsManager.java"


# instance fields
.field private annotationsCache:Lcom/amazon/kcp/application/IAnnotationCache;

.field private bookFilename:Ljava/lang/String;

.field private bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

.field private currentPageAnnotationUpdate:Lcom/amazon/foundation/internal/IntEventProvider;

.field private fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field private navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

.field private needRefresh:Lcom/amazon/foundation/internal/EventProvider;

.field private tpzAnnotations:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/IAnnotationCache;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;Lcom/amazon/kcp/library/models/ILocalBookInfo;)V
    .locals 1
    .parameter "fileSystem"
    .parameter "annotationsCache"
    .parameter "navigator"
    .parameter "bookInfo"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/AbstractBookAnnotationsManager;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->annotationsCache:Lcom/amazon/kcp/application/IAnnotationCache;

    .line 28
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 29
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    .line 30
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->bookFilename:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->annotationsCache:Lcom/amazon/kcp/application/IAnnotationCache;

    .line 67
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->currentPageAnnotationUpdate:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 68
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->needRefresh:Lcom/amazon/foundation/internal/EventProvider;

    .line 69
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 70
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    .line 71
    iput-object p3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    .line 72
    iput-object p4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    .line 73
    return-void
.end method

.method private deleteAnnotation(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)Z
    .locals 2
    .parameter "annotation"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 552
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->setAnnotationAction(I)V

    .line 553
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->syncWithServer(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V

    .line 556
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->currentPageAnnotationUpdate:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 557
    const/4 v0, 0x1

    .line 560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAnnotations(I)Ljava/util/Vector;
    .locals 2
    .parameter "annotationType"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getCurrentPageLastPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getAnnotationsInRange(III)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method private getAnnotationsCount()I
    .locals 5

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/IAnnotation;

    .line 122
    .local v0, annotation:Lcom/amazon/kcp/reader/models/IAnnotation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IAnnotation;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 119
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v0           #annotation:Lcom/amazon/kcp/reader/models/IAnnotation;
    :cond_1
    return v1
.end method

.method private getAnnotationsInRange(III)Ljava/util/Vector;
    .locals 4
    .parameter "annotationType"
    .parameter "firstPosition"
    .parameter "lastPosition"

    .prologue
    .line 511
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 512
    .local v1, annotationsFound:Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 514
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    .line 517
    .local v0, annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getEnd()I

    move-result v3

    if-lt v3, p2, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v3

    if-gt v3, p3, :cond_0

    .line 520
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 512
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    .end local v0           #annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    :cond_1
    return-object v1
.end method

.method private getBookText(II)Ljava/lang/String;
    .locals 2
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, bookText:Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getBook()Lcom/amazon/topaz/TPZBook;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getBook()Lcom/amazon/topaz/TPZBook;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/amazon/topaz/TPZBook;->getText(II)Ljava/lang/String;

    move-result-object v0

    .line 587
    :cond_0
    return-object v0
.end method

.method private syncWithServer(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V
    .locals 3
    .parameter "annotation"

    .prologue
    .line 569
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->isSample()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->annotationsCache:Lcom/amazon/kcp/application/IAnnotationCache;

    if-eqz v1, :cond_0

    .line 574
    new-instance v0, Lcom/amazon/kcp/application/MBPBookData;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/application/MBPBookData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .local v0, bookData:Lcom/amazon/kcp/application/MBPBookData;
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->annotationsCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v1, v0, p1}, Lcom/amazon/kcp/application/IAnnotationCache;->annotationChanged(Lcom/amazon/kcp/application/IBookData;Lcom/amazon/kcp/reader/models/IAnnotationData;)V

    .line 577
    .end local v0           #bookData:Lcom/amazon/kcp/application/MBPBookData;
    :cond_0
    return-void
.end method


# virtual methods
.method public addAnnotation(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V
    .locals 2
    .parameter "annotation"

    .prologue
    .line 534
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->setAnnotationAction(I)V

    .line 535
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 540
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->syncWithServer(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V

    .line 541
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->currentPageAnnotationUpdate:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 542
    return-void
.end method

.method addHighlight(II)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 197
    .line 201
    if-le p1, p2, :cond_4

    move v0, p1

    move v1, p2

    .line 208
    :goto_0
    invoke-direct {p0, v2, v1, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getAnnotationsInRange(III)Ljava/util/Vector;

    move-result-object v3

    .line 212
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    move v4, v0

    move v3, v1

    .line 213
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    .line 219
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v1

    if-ge v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v1

    .line 220
    :goto_2
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getEnd()I

    move-result v3

    if-le v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getEnd()I

    move-result v3

    .line 223
    :goto_3
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->deleteAnnotation(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)Z

    move v4, v3

    move v3, v1

    .line 224
    goto :goto_1

    :cond_0
    move v1, v3

    .line 219
    goto :goto_2

    :cond_1
    move v3, v4

    .line 220
    goto :goto_3

    .line 226
    :cond_2
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    if-eqz v1, :cond_3

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getPosition()I

    move-result v0

    move v5, v0

    .line 233
    :goto_4
    invoke-direct {p0, v3, v4}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getBookText(II)Ljava/lang/String;

    move-result-object v1

    .line 236
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V

    .line 243
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->addAnnotation(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V

    .line 244
    return-object v0

    :cond_3
    move v5, v0

    goto :goto_4

    :cond_4
    move v0, p2

    move v1, p1

    goto :goto_0
.end method

.method public addHighlight(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 2
    .parameter "startElement"
    .parameter "endElement"

    .prologue
    .line 182
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 184
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v0

    invoke-interface {p2}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->addHighlight(II)Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addNote(ILjava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 326
    :goto_0
    return-object v0

    .line 298
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->checkForExistingNote(I)Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->editNote(Lcom/amazon/kcp/reader/models/IAnnotation;Ljava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getPosition()I

    move-result v5

    .line 312
    invoke-direct {p0, p1, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getBookText(II)Ljava/lang/String;

    move-result-object v1

    .line 315
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    const/4 v2, 0x1

    iget-object v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    move v3, p1

    move v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V

    .line 322
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->addAnnotation(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V

    goto :goto_0
.end method

.method public addNote(Lcom/amazon/kcp/reader/models/IPageElement;Ljava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 1
    .parameter "element"
    .parameter "userText"

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 284
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->addNote(ILjava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkForExistingNote(I)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 2
    .parameter "positionId"

    .prologue
    .line 331
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getAnnotationsInRange(III)Ljava/util/Vector;

    move-result-object v0

    .line 335
    .local v0, existingNote:Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 338
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/IAnnotation;

    move-object v1, p0

    .line 342
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteAnnotation(Lcom/amazon/kcp/reader/models/IAnnotation;)Z
    .locals 1
    .parameter "annotation"

    .prologue
    .line 391
    instance-of v0, p1, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    if-eqz v0, :cond_0

    .line 394
    check-cast p1, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    .end local p1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->deleteAnnotation(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)Z

    move-result v0

    .line 398
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public editNote(Lcom/amazon/kcp/reader/models/IAnnotation;Ljava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 10
    .parameter "oldNote"
    .parameter "userText"

    .prologue
    const/4 v3, 0x1

    .line 349
    instance-of v2, p1, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotation;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 354
    :cond_0
    const/4 v2, 0x0

    .line 386
    :goto_0
    return-object v2

    .line 357
    :cond_1
    new-instance v1, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v4

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getEnd()I

    move-result v5

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getPos()I

    move-result v6

    iget-object v8, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V

    .line 365
    .local v1, annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    const/4 v9, -0x1

    .line 367
    .local v9, oldNoteIndex:I
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 371
    if-ltz v9, :cond_2

    .line 374
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v2, v1, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 375
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->syncWithServer(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V

    .line 376
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->currentPageAnnotationUpdate:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 380
    :cond_2
    const/4 v2, -0x1

    if-ne v9, v2, :cond_3

    .line 383
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->addAnnotation(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V

    :cond_3
    move-object v2, v1

    .line 386
    goto :goto_0
.end method

.method public getAnnotationsCache()Lcom/amazon/kcp/application/IAnnotationCache;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->annotationsCache:Lcom/amazon/kcp/application/IAnnotationCache;

    return-object v0
.end method

.method public getAnnotationsList()[Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 6

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getAnnotationsCount()I

    move-result v4

    new-array v2, v4, [Lcom/amazon/kcp/reader/models/IAnnotation;

    .line 81
    .local v2, annotations:[Lcom/amazon/kcp/reader/models/IAnnotation;
    const/4 v1, 0x0

    .line 82
    .local v1, annotationIdx:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 84
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/IAnnotation;

    .line 85
    .local v0, annotation:Lcom/amazon/kcp/reader/models/IAnnotation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IAnnotation;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 87
    aput-object v0, v2, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 82
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v0           #annotation:Lcom/amazon/kcp/reader/models/IAnnotation;
    :cond_1
    new-instance v4, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile$AnnotationComparator;

    invoke-direct {v4}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile$AnnotationComparator;-><init>()V

    invoke-static {v2, v4}, Lcom/mobipocket/common/util/Arrays;->sort([Ljava/lang/Object;Lcom/mobipocket/common/util/Comparator;)V

    .line 92
    return-object v2
.end method

.method public getCurrentPageAnnotationUpdateEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->currentPageAnnotationUpdate:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getHighlightCoveringArea(II)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 6
    .parameter "startPositionId"
    .parameter "endPositionId"

    .prologue
    .line 249
    move v1, p1

    .line 250
    .local v1, actualStartPosition:I
    move v0, p2

    .line 253
    .local v0, actualEndPosition:I
    if-le p1, p2, :cond_0

    .line 255
    move v1, p2

    .line 256
    move v0, p1

    .line 259
    :cond_0
    const/4 v5, 0x2

    invoke-direct {p0, v5, v1, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getAnnotationsInRange(III)Ljava/util/Vector;

    move-result-object v3

    .line 263
    .local v3, existingHighlights:Ljava/util/Vector;
    const/4 v2, 0x0

    .line 265
    .local v2, coveringHighlight:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    const/4 v4, 0x0

    .end local p0
    .local v4, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 268
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v5

    if-lt v1, v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getEnd()I

    move-result v5

    if-gt v0, v5, :cond_2

    .line 271
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #coveringHighlight:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    check-cast v2, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    .line 276
    .restart local v2       #coveringHighlight:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    :cond_1
    return-object v2

    .line 265
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getLastPositionRead()I
    .locals 5

    .prologue
    .line 432
    const/4 v2, -0x1

    .line 433
    .local v2, lpr:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 435
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    .line 437
    .local v0, annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v2

    .line 433
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v0           #annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    :cond_1
    return v2
.end method

.method public getNeedRefreshEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->needRefresh:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getTpzAnnotations()[Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    .locals 6

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getAnnotationsCount()I

    move-result v4

    new-array v2, v4, [Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    .line 102
    .local v2, annotations:[Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    const/4 v1, 0x0

    .line 103
    .local v1, annotationIdx:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 105
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    .line 106
    .local v0, annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 108
    aput-object v0, v2, v1

    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 103
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v0           #annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    :cond_1
    new-instance v4, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile$AnnotationComparator;

    invoke-direct {v4}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile$AnnotationComparator;-><init>()V

    invoke-static {v2, v4}, Lcom/mobipocket/common/util/Arrays;->sort([Ljava/lang/Object;Lcom/mobipocket/common/util/Comparator;)V

    .line 113
    return-object v2
.end method

.method public hasAnnotationInRange(III)Z
    .locals 2
    .parameter "annotationTypeBookmark"
    .parameter "startPosID"
    .parameter "pageEndPosID"

    .prologue
    .line 499
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getAnnotationsInRange(III)Ljava/util/Vector;

    move-result-object v0

    .line 500
    .local v0, v:Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasBookmark()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getAnnotations(I)Ljava/util/Vector;

    move-result-object v0

    .line 143
    .local v0, v:Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public lprUpdated()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->setLastPositionRead(I)V

    .line 415
    return-void
.end method

.method public readAnnotations(Ljava/lang/String;)V
    .locals 3
    .parameter "bookFilename"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->bookFilename:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v1, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;->computeAnnotationsFilename(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;->readAnnotations(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    .line 425
    return-void
.end method

.method public setLastPositionRead(I)V
    .locals 11
    .parameter "lpr"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 451
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    iget-object v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    move v3, p1

    move v4, p1

    move v5, p1

    move-object v6, v1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V

    .line 452
    .local v0, lprAnnotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    const/4 v9, 0x0

    .line 453
    .local v9, found:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    .line 457
    .local v8, annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 459
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->setAnnotationAction(I)V

    .line 460
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v1, v0, v10}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 461
    const/4 v9, 0x1

    .line 462
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->syncWithServer(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V

    .line 467
    .end local v8           #annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    :cond_0
    if-nez v9, :cond_1

    .line 469
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->addAnnotation(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V

    .line 471
    :cond_1
    return-void

    .line 453
    .restart local v8       #annotation:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public toggleBookmark()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getAnnotations(I)Ljava/util/Vector;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 154
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->deleteAnnotation(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)Z

    .line 177
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getPosition()I

    move-result v3

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getFirstWordsLastPosition()I

    move-result v0

    .line 164
    if-ge v0, v3, :cond_1

    move v4, v3

    .line 170
    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getBookText(II)Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    move v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->addAnnotation(Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1
.end method

.method public writeAnnotations()V
    .locals 4

    .prologue
    .line 478
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 480
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v0, v2, [Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    .line 481
    .local v0, annotations:[Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->tpzAnnotations:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    aput-object v2, v0, v1

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 485
    :cond_0
    new-instance v2, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile$AnnotationComparator;

    invoke-direct {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile$AnnotationComparator;-><init>()V

    invoke-static {v0, v2}, Lcom/mobipocket/common/util/Arrays;->sort([Ljava/lang/Object;Lcom/mobipocket/common/util/Comparator;)V

    .line 486
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->bookFilename:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;->writeAnnotations(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;[Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V

    .line 488
    .end local v0           #annotations:[Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    .end local v1           #i:I
    :cond_1
    return-void
.end method
