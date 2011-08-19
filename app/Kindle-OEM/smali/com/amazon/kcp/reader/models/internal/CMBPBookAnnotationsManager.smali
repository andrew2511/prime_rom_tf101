.class public final Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;
.super Lcom/amazon/kcp/reader/models/AbstractBookAnnotationsManager;
.source "CMBPBookAnnotationsManager.java"


# static fields
.field private static final highlightColor:I = 0xffff00


# instance fields
.field private annotationCache:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

.field private bookDisplay:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

.field private bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

.field private bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

.field private needRefreshEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private pNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

.field private positionChangedCallback:Lcom/amazon/foundation/ICallback;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/amazon/kcp/application/IAnnotationUpdateHandler;Lcom/amazon/kcp/library/models/ILocalBookInfo;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/AbstractBookAnnotationsManager;-><init>()V

    .line 33
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager$1;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    .line 51
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

    .line 52
    iput-object p3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    .line 54
    iput-object p4, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->pNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    .line 55
    iput-object p5, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookDisplay:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

    .line 56
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->needRefreshEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 58
    invoke-virtual {p4}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->getPositionChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 59
    return-void
.end method

.method private deleteAnnotation(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z
    .locals 1
    .parameter "annotationItem"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->syncWithServer(Lcom/mobipocket/common/library/reader/AnnotationItem;I)V

    .line 451
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->needRefreshEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 453
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private editNote(Lcom/mobipocket/common/library/reader/AnnotationItem;Ljava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 6
    .parameter "oldNote"
    .parameter "userText"

    .prologue
    .line 422
    const/4 v1, 0x0

    .line 423
    .local v1, editiedAnnotation:Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v3

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v4

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->addNote(IILjava/lang/String;Ljava/lang/String;)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 424
    .local v0, annotation:Lcom/mobipocket/common/library/reader/AnnotationItem;
    if-eqz v0, :cond_0

    .line 426
    new-instance v1, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    .end local v1           #editiedAnnotation:Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->pNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-direct {v1, v2, v0}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    .line 427
    .restart local v1       #editiedAnnotation:Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->syncWithServer(Lcom/mobipocket/common/library/reader/AnnotationItem;I)V

    .line 430
    :cond_0
    return-object v1
.end method

.method private isIntendedForNextPage(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    .line 162
    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getPageEndPosition(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getMaxPosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected annotation at end of page position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Assuming it is intended for next page."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public addHighlight(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 213
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v8

    .line 309
    :goto_0
    return-object v0

    .line 222
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getBeginId()I

    move-result v0

    .line 223
    invoke-interface {p2}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    .line 226
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v2

    invoke-interface {p2}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v3

    if-le v2, v3, :cond_c

    .line 228
    invoke-interface {p2}, Lcom/amazon/kcp/reader/models/IPageElement;->getBeginId()I

    move-result v0

    .line 229
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    move v10, v1

    move v1, v0

    move v0, v10

    .line 233
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getCurrentPageAnnotations()[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v2

    .line 238
    if-eqz v2, :cond_b

    array-length v3, v2

    if-lez v3, :cond_b

    .line 242
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v4, v0

    move v5, v1

    move v0, v3

    move-object v1, v8

    move-object v3, v8

    :goto_2
    if-ltz v0, :cond_5

    .line 244
    const/4 v6, 0x4

    aget-object v7, v2, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 247
    aget-object v6, v2, v0

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v6

    if-ge v6, v5, :cond_3

    aget-object v6, v2, v0

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v6

    if-lt v6, v5, :cond_3

    .line 251
    aget-object v3, v2, v0

    .line 254
    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v5

    .line 255
    aget-object v6, v2, v0

    invoke-direct {p0, v6}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->deleteAnnotation(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    .line 242
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 259
    :cond_3
    aget-object v6, v2, v0

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v6

    if-gt v6, v4, :cond_4

    aget-object v6, v2, v0

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v6

    if-le v6, v4, :cond_4

    .line 263
    aget-object v1, v2, v0

    .line 266
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v4

    .line 267
    aget-object v6, v2, v0

    invoke-direct {p0, v6}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->deleteAnnotation(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    goto :goto_3

    .line 270
    :cond_4
    aget-object v6, v2, v0

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v6

    if-lt v6, v5, :cond_2

    aget-object v6, v2, v0

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v6

    if-gt v6, v4, :cond_2

    .line 274
    aget-object v6, v2, v0

    invoke-direct {p0, v6}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->deleteAnnotation(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    goto :goto_3

    :cond_5
    move-object v0, v1

    move v2, v4

    move-object v1, v3

    move v3, v5

    .line 286
    :goto_4
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookDisplay:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/amazon/kcp/reader/models/IDocumentPage;->getNextElementPositionId(I)I

    move-result v4

    .line 288
    :goto_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v5

    .line 292
    :goto_6
    if-eqz v1, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    :goto_7
    if-eqz v0, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookDisplay:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

    invoke-virtual {v6}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v6

    invoke-interface {v6, v4, v5, v9}, Lcom/amazon/kcp/reader/models/IDocumentPage;->createText(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    const v4, 0xffff00

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->addHighlight(IILjava/lang/String;I)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_a

    .line 304
    new-instance v1, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->pNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-direct {v1, v2, v0}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    .line 305
    invoke-virtual {p0, v0, v9}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->syncWithServer(Lcom/mobipocket/common/library/reader/AnnotationItem;I)V

    .line 306
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->needRefreshEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    move-object v0, v1

    goto/16 :goto_0

    .line 286
    :cond_6
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v4

    goto :goto_5

    .line 288
    :cond_7
    invoke-interface {p2}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v5

    goto :goto_6

    .line 292
    :cond_8
    const-string v1, ""

    goto :goto_7

    .line 293
    :cond_9
    const-string v0, ""

    goto :goto_8

    :cond_a
    move-object v0, v8

    goto/16 :goto_0

    :cond_b
    move v2, v0

    move v3, v1

    move-object v0, v8

    move-object v1, v8

    goto/16 :goto_4

    :cond_c
    move v10, v1

    move v1, v0

    move v0, v10

    goto/16 :goto_1
.end method

.method public addNote(Lcom/amazon/kcp/reader/models/IPageElement;Ljava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 8
    .parameter "element"
    .parameter "userText"

    .prologue
    const/4 v7, 0x0

    .line 350
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    .line 352
    :cond_0
    const/4 v4, 0x0

    .line 375
    :goto_0
    return-object v4

    .line 355
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->checkForExistingNote(I)Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v3

    .line 357
    .local v3, existingNote:Lcom/amazon/kcp/reader/models/IAnnotation;
    if-eqz v3, :cond_2

    .line 360
    invoke-virtual {p0, v3, p2}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->editNote(Lcom/amazon/kcp/reader/models/IAnnotation;Ljava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v4

    goto :goto_0

    .line 365
    :cond_2
    const/4 v0, 0x0

    .line 366
    .local v0, addedAnnotation:Lcom/amazon/kcp/reader/models/IAnnotation;
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookDisplay:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v4

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v5

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v6

    invoke-interface {v4, v5, v6, v7}, Lcom/amazon/kcp/reader/models/IDocumentPage;->createText(III)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, bookText:Ljava/lang/String;
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getBeginId()I

    move-result v5

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v6, v2, p2}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->addNote(IILjava/lang/String;Ljava/lang/String;)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v1

    .line 368
    .local v1, annotation:Lcom/mobipocket/common/library/reader/AnnotationItem;
    if-eqz v1, :cond_3

    .line 370
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    .end local v0           #addedAnnotation:Lcom/amazon/kcp/reader/models/IAnnotation;
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->pNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-direct {v0, v4, v1}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    .line 371
    .restart local v0       #addedAnnotation:Lcom/amazon/kcp/reader/models/IAnnotation;
    invoke-virtual {p0, v1, v7}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->syncWithServer(Lcom/mobipocket/common/library/reader/AnnotationItem;I)V

    .line 372
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->needRefreshEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v4}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    :cond_3
    move-object v4, v0

    .line 375
    goto :goto_0
.end method

.method public checkForExistingNote(I)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 5
    .parameter "positionId"

    .prologue
    .line 381
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getCurrentPageAnnotations()[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 383
    .local v0, currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;
    if-eqz v0, :cond_1

    .line 385
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 387
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    if-gt v2, p1, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v2

    if-lt v2, p1, :cond_0

    .line 391
    new-instance v2, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->pNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    aget-object v4, v0, v1

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    .line 398
    .end local v1           #i:I
    :goto_1
    return-object v2

    .line 385
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public deleteAnnotation(Lcom/amazon/kcp/reader/models/IAnnotation;)Z
    .locals 1
    .parameter "annotation"

    .prologue
    .line 435
    instance-of v0, p1, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    if-eqz v0, :cond_0

    .line 438
    check-cast p1, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    .end local p1
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->getAnnotationItem()Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->deleteAnnotation(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    move-result v0

    .line 442
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public editNote(Lcom/amazon/kcp/reader/models/IAnnotation;Ljava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 2
    .parameter "oldNote"
    .parameter "userText"

    .prologue
    .line 403
    instance-of v0, p1, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    check-cast p1, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    .end local p1
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->getAnnotationItem()Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->editNote(Lcom/mobipocket/common/library/reader/AnnotationItem;Ljava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnnotationsList()[Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getAll()[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 77
    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 82
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    move v3, v2

    .line 84
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 86
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 94
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :pswitch_1
    new-instance v4, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->pNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    aget-object v6, v0, v2

    invoke-direct {v4, v5, v6}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    .line 92
    aput-object v4, v1, v3

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 99
    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHighlightCoveringArea(II)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 7
    .parameter "startPositionId"
    .parameter "endPositionId"

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 316
    .local v2, coveringHighlight:Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;
    move v1, p1

    .line 317
    .local v1, actualStartPosition:I
    move v0, p2

    .line 320
    .local v0, actualEndPosition:I
    if-le p1, p2, :cond_0

    .line 322
    move v1, p2

    .line 323
    move v0, p1

    .line 327
    :cond_0
    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getCurrentPageAnnotations()[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v3

    .line 329
    .local v3, currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;
    if-eqz v3, :cond_1

    .line 332
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 334
    const/4 v5, 0x4

    aget-object v6, v3, v4

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v6

    if-ne v5, v6, :cond_2

    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v5

    if-gt v5, v1, :cond_2

    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v5

    if-lt v5, v0, :cond_2

    .line 338
    new-instance v2, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    .end local v2           #coveringHighlight:Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;
    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->pNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    aget-object v6, v3, v4

    invoke-direct {v2, v5, v6}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    .line 344
    .end local v4           #i:I
    .restart local v2       #coveringHighlight:Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;
    :cond_1
    return-object v2

    .line 332
    .restart local v4       #i:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getNeedRefreshEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->needRefreshEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public hasBookmark()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 107
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getCurrentPageAnnotations()[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 109
    .local v0, currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;
    if-eqz v0, :cond_1

    .line 111
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 113
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->isIntendedForNextPage(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 119
    .end local v1           #i:I
    :goto_1
    return v2

    .line 111
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public lprUpdated()V
    .locals 5

    .prologue
    .line 195
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v3}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->isSample()Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    new-instance v1, Lcom/amazon/kcp/application/MBPBookData;

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v3}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v4}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/amazon/kcp/application/MBPBookData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v1, book_data:Lcom/amazon/kcp/application/MBPBookData;
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getLastReadPageExport()Lcom/mobipocket/common/library/reader/AnnotationExport;

    move-result-object v2

    .line 199
    .local v2, export:Lcom/mobipocket/common/library/reader/AnnotationExport;
    if-eqz v2, :cond_0

    .line 201
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;-><init>(Lcom/mobipocket/common/library/reader/AnnotationExport;)V

    .line 202
    .local v0, annotation:Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->getPos()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 204
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

    invoke-interface {v3, v1, v0}, Lcom/amazon/kcp/application/IAnnotationUpdateHandler;->annotationChanged(Lcom/amazon/kcp/application/IBookData;Lcom/amazon/kcp/reader/models/IAnnotationData;)V

    .line 208
    .end local v0           #annotation:Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;
    .end local v1           #book_data:Lcom/amazon/kcp/application/MBPBookData;
    .end local v2           #export:Lcom/mobipocket/common/library/reader/AnnotationExport;
    :cond_0
    return-void
.end method

.method public syncWithServer(Lcom/mobipocket/common/library/reader/AnnotationItem;I)V
    .locals 4
    .parameter "annotationItem"
    .parameter "action"

    .prologue
    .line 177
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->isSample()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    new-instance v1, Lcom/amazon/kcp/application/MBPBookData;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v3}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/application/MBPBookData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v1, book_data:Lcom/amazon/kcp/application/MBPBookData;
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v2, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getAnnotationExport(Lcom/mobipocket/common/library/reader/AnnotationItem;)Lcom/mobipocket/common/library/reader/AnnotationExport;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;-><init>(Lcom/mobipocket/common/library/reader/AnnotationExport;)V

    .line 181
    .local v0, annotation:Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;
    invoke-virtual {v0, p2}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->setAction(I)V

    .line 183
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;->getPos()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 185
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

    invoke-interface {v2, v1, v0}, Lcom/amazon/kcp/application/IAnnotationUpdateHandler;->annotationChanged(Lcom/amazon/kcp/application/IBookData;Lcom/amazon/kcp/reader/models/IAnnotationData;)V

    .line 188
    .end local v0           #annotation:Lcom/amazon/kcp/reader/models/internal/CMBPAnnotationData;
    .end local v1           #book_data:Lcom/amazon/kcp/application/MBPBookData;
    :cond_0
    return-void
.end method

.method public toggleBookmark()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getCurrentPageAnnotations()[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_1

    move v1, v4

    .line 132
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 134
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->isIntendedForNextPage(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->deleteAnnotation(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    .line 148
    :goto_1
    return-void

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->addBookmark()Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 144
    invoke-virtual {p0, v0, v4}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->syncWithServer(Lcom/mobipocket/common/library/reader/AnnotationItem;I)V

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->needRefreshEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_1
.end method
