.class public Lcom/mobipocket/common/library/reader/BookViewManager;
.super Ljava/lang/Object;
.source "BookViewManager.java"

# interfaces
.implements Lcom/mobipocket/common/library/historizer/Historizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;,
        Lcom/mobipocket/common/library/reader/BookViewManager$Search;,
        Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;,
        Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;,
        Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;,
        Lcom/mobipocket/common/library/reader/BookViewManager$Position;,
        Lcom/mobipocket/common/library/reader/BookViewManager$Layout;,
        Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;,
        Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;,
        Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;,
        Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;
    }
.end annotation


# static fields
.field private static final DATA:I = 0x44415441

.field private static final DEFAULT_PAR_INDENT:I = 0xf

.field private static final DEFAULT_PAR_SPACING:I = 0x5

.field private static final EBAR:I = 0x45424152

.field private static final EBVS:I = 0x45425653

.field private static final NONE:I = -0x1

.field public static final OPEN_FIRST_PAGE:I = 0x2

.field public static final OPEN_LAST_PAGE_READ:I = 0x1

.field public static final OPEN_START_READING:I = 0x3


# instance fields
.field public final annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

.field beginBookPosition:I

.field private bgColor:I

.field private bookViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

.field protected currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

.field currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

.field currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

.field currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

.field private decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

.field private defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

.field private expressionSearcher:Lcom/mobipocket/common/parser/HyphenationHelper;

.field final internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

.field private isNoteSelectableArea:Z

.field isPrelayoutEnabled:Z

.field private lastSearchedPosition:I

.field private lastSearchedString:Ljava/lang/String;

.field public final layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

.field private lineSpacing:I

.field public final navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

.field private nextPageLayoutRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

.field private nextPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

.field public final objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

.field private pApplicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

.field final pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

.field pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

.field private pDefaultCellPadding:I

.field private final pFontFactory:Lcom/amazon/system/drawing/FontFactory;

.field private pGetHighResImages:Z

.field private pGuideItems:Ljava/util/Vector;

.field private pHeight:I

.field private final pImageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field private final pJumpHistory:Lcom/mobipocket/common/library/historizer/HistoryManager;

.field final pNextDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

.field private pNextPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

.field private pPageNumber:I

.field final pPreviousDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

.field private pPreviousPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

.field private pWidth:I

.field private pXMargin:I

.field private pYMargin:I

.field pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

.field private paragraphIndentation:I

.field private paragraphSpacing:I

.field private parser:Lcom/mobipocket/common/parser/EBookParser;

.field private final pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

.field public final position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

.field private prevPageLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;

.field private previousLinesNavigationCache:Lcom/mobipocket/common/library/reader/NavigationCache;

.field private previousPageLayoutRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

.field private previousPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

.field private final previousPageThreadLock:Ljava/lang/Object;

.field private previousPagesNavigationCache:Lcom/mobipocket/common/library/reader/NavigationCache;

.field public final search:Lcom/mobipocket/common/library/reader/BookViewManager$Search;

.field private final security:Lcom/amazon/system/security/Security;

.field private tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

.field public final tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

.field private tagStackCache:Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;

.field protected tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

.field public final wordSelection:Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/filesystem/PDBFactory;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/security/Security;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/mobipocket/common/library/historizer/HistoryManager;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Lcom/mobipocket/common/library/reader/BookViewManager;->getTableLimiter()Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    .line 101
    invoke-static {}, Lcom/mobipocket/common/library/reader/BookViewManager;->getUnknownPageLimiter()Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->prevPageLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;

    .line 106
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-direct {v0, p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    .line 111
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-direct {v0, p0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    .line 116
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-direct {v0, p0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    .line 121
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-direct {v0, p0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    .line 126
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-direct {v0, p0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    .line 131
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-direct {v0, p0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    .line 136
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;

    invoke-direct {v0, p0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->wordSelection:Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;

    .line 141
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;

    invoke-direct {v0, p0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Search;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->search:Lcom/mobipocket/common/library/reader/BookViewManager$Search;

    .line 146
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-direct {v0, p0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    .line 184
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pApplicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

    .line 191
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->nextPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

    .line 192
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pNextPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 195
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

    .line 196
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPreviousPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPageThreadLock:Ljava/lang/Object;

    .line 200
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->isPrelayoutEnabled:Z

    .line 204
    iput v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bgColor:I

    .line 205
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->isNoteSelectableArea:Z

    .line 206
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pGetHighResImages:Z

    .line 210
    iput v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    .line 211
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pGuideItems:Ljava/util/Vector;

    .line 223
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->lastSearchedString:Ljava/lang/String;

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->lastSearchedPosition:I

    .line 247
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    .line 1847
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$1;

    invoke-direct {v0, p0}, Lcom/mobipocket/common/library/reader/BookViewManager$1;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->nextPageLayoutRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    .line 1889
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$2;

    invoke-direct {v0, p0}, Lcom/mobipocket/common/library/reader/BookViewManager$2;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPageLayoutRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A factory is not defined!\n\tpdbFactory:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tfontFactory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\timageFactory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tsecurity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\thistoryManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "History Manager is not set. Default will be used and the UI won\'t have access to it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application commands is not set. Warning: Manual application commands are now deprecated!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->parser:Lcom/mobipocket/common/parser/EBookParser;

    .line 303
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    .line 304
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pFontFactory:Lcom/amazon/system/drawing/FontFactory;

    .line 305
    iput-object p3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pImageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 307
    invoke-static {}, Lcom/mobipocket/common/library/PersistentSetting;->theOne()Lcom/mobipocket/common/library/PersistentSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/PersistentSetting;->getBookViewSettings()Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bookViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    .line 308
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bookViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bookViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bookViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultFontName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bookViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-interface {p2}, Lcom/amazon/system/drawing/FontFactory;->getDefaultFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setDefaultFontName(Ljava/lang/String;)V

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bookViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultFontSize()I

    move-result v0

    if-gtz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bookViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-interface {p2}, Lcom/amazon/system/drawing/FontFactory;->getDefaultFontSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setDefaultFontSize(I)V

    .line 323
    :cond_2
    new-instance v0, Lcom/mobipocket/common/library/reader/DecorationGenerator;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bookViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-direct {v0, v1, v4, v4, p2}, Lcom/mobipocket/common/library/reader/DecorationGenerator;-><init>(Lcom/mobipocket/common/library/reader/BookViewSettings;ZZLcom/amazon/system/drawing/FontFactory;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    .line 325
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    .line 326
    iput-object p4, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->security:Lcom/amazon/system/security/Security;

    .line 327
    iput-object p5, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pApplicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

    .line 328
    if-nez p6, :cond_3

    new-instance v0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;-><init>(Lcom/mobipocket/common/library/historizer/Historizable;I)V

    :goto_0
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pJumpHistory:Lcom/mobipocket/common/library/historizer/HistoryManager;

    .line 330
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPagesNavigationCache:Lcom/mobipocket/common/library/reader/NavigationCache;

    .line 331
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousLinesNavigationCache:Lcom/mobipocket/common/library/reader/NavigationCache;

    .line 332
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tagStackCache:Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;

    .line 336
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 337
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 338
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    .line 339
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    .line 341
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 343
    iput v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pWidth:I

    .line 344
    iput v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pHeight:I

    .line 345
    iput v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pXMargin:I

    .line 346
    iput v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pYMargin:I

    .line 348
    const/4 v0, 0x5

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->paragraphSpacing:I

    .line 349
    const/16 v0, 0xf

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->paragraphIndentation:I

    .line 350
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bookViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultLineSpacing()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->lineSpacing:I

    .line 353
    new-instance v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    .line 354
    new-instance v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pNextDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    .line 355
    new-instance v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPreviousDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    .line 356
    return-void

    :cond_3
    move-object v0, p6

    .line 328
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->lineSpacing:I

    return v0
.end method

.method static synthetic access$1002(Lcom/mobipocket/common/library/reader/BookViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->lineSpacing:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bgColor:I

    return v0
.end method

.method static synthetic access$1102(Lcom/mobipocket/common/library/reader/BookViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bgColor:I

    return p1
.end method

.method static synthetic access$1200(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pDefaultCellPadding:I

    return v0
.end method

.method static synthetic access$1202(Lcom/mobipocket/common/library/reader/BookViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pDefaultCellPadding:I

    return p1
.end method

.method static synthetic access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pWidth:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mobipocket/common/library/reader/BookViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pWidth:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pHeight:I

    return v0
.end method

.method static synthetic access$1402(Lcom/mobipocket/common/library/reader/BookViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pHeight:I

    return p1
.end method

.method static synthetic access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pXMargin:I

    return v0
.end method

.method static synthetic access$1502(Lcom/mobipocket/common/library/reader/BookViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pXMargin:I

    return p1
.end method

.method static synthetic access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pYMargin:I

    return v0
.end method

.method static synthetic access$1602(Lcom/mobipocket/common/library/reader/BookViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pYMargin:I

    return p1
.end method

.method static synthetic access$1700(Lcom/mobipocket/common/library/reader/BookViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pGetHighResImages:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/mobipocket/common/library/reader/BookViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pGetHighResImages:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->parser:Lcom/mobipocket/common/parser/EBookParser;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pGuideItems:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPageNumber:I

    return v0
.end method

.method static synthetic access$2102(Lcom/mobipocket/common/library/reader/BookViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPageNumber:I

    return p1
.end method

.method static synthetic access$2108(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPageNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPageNumber:I

    return v0
.end method

.method static synthetic access$2110(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPageNumber:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPageNumber:I

    return v0
.end method

.method static synthetic access$2300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/historizer/HistoryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pJumpHistory:Lcom/mobipocket/common/library/historizer/HistoryManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/NavigationCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPagesNavigationCache:Lcom/mobipocket/common/library/reader/NavigationCache;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tagStackCache:Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/NavigationCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousLinesNavigationCache:Lcom/mobipocket/common/library/reader/NavigationCache;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->lastSearchedPosition:I

    return v0
.end method

.method static synthetic access$2702(Lcom/mobipocket/common/library/reader/BookViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->lastSearchedPosition:I

    return p1
.end method

.method static synthetic access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pNextPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/LayoutedFrame;)Lcom/mobipocket/common/library/reader/LayoutedFrame;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pNextPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPreviousPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/LayoutedFrame;)Lcom/mobipocket/common/library/reader/LayoutedFrame;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPreviousPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPageThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/util/SingleThreadManager;)Lcom/mobipocket/common/util/SingleThreadManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pApplicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->nextPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/util/SingleThreadManager;)Lcom/mobipocket/common/util/SingleThreadManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->nextPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/amazon/system/drawing/ImageFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pImageFactory:Lcom/amazon/system/drawing/ImageFactory;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->bookViewSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/mobipocket/common/library/reader/BookViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->isNoteSelectableArea:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/mobipocket/common/library/reader/BookViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->isNoteSelectableArea:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/amazon/system/drawing/FontFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pFontFactory:Lcom/amazon/system/drawing/FontFactory;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/DecorationGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->lastSearchedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/mobipocket/common/library/reader/BookViewManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->lastSearchedString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->paragraphSpacing:I

    return v0
.end method

.method static synthetic access$802(Lcom/mobipocket/common/library/reader/BookViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->paragraphSpacing:I

    return p1
.end method

.method static synthetic access$900(Lcom/mobipocket/common/library/reader/BookViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->paragraphIndentation:I

    return v0
.end method

.method static synthetic access$902(Lcom/mobipocket/common/library/reader/BookViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->paragraphIndentation:I

    return p1
.end method

.method public static getPositionFromUserLocation(I)I
    .locals 1
    .parameter "userLocation"

    .prologue
    const/16 v0, 0x64

    .line 272
    if-ge p0, v0, :cond_0

    .line 274
    const/16 p0, 0x64

    .line 276
    :cond_0
    sub-int v0, p0, v0

    mul-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected static getTableLimiter()Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;
    .locals 1

    .prologue
    .line 1964
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$3;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$3;-><init>()V

    return-object v0
.end method

.method protected static getUnknownPageLimiter()Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;
    .locals 1

    .prologue
    .line 1976
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager$4;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$4;-><init>()V

    return-object v0
.end method

.method public static getUserLocationFromPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 262
    shl-int/lit8 v0, p0, 0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private openBook(Ljava/lang/String;)V
    .locals 2
    .parameter "identifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 5739
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5741
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager;->closeBook()V

    .line 5742
    new-instance v0, Lcom/mobipocket/common/library/reader/BookItem;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-direct {v0, p1, v1}, Lcom/mobipocket/common/library/reader/BookItem;-><init>(Ljava/lang/String;Lcom/mobipocket/common/filesystem/PDBFactory;)V

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->openBook(Lcom/mobipocket/common/library/reader/BookItem;)V

    .line 5745
    :cond_1
    return-void
.end method


# virtual methods
.method public closeBook()V
    .locals 1

    .prologue
    .line 5995
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->closeBook(Z)V

    .line 5996
    return-void
.end method

.method public closeBook(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5951
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 5954
    if-eqz p1, :cond_0

    .line 5956
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager;->saveBookState()Z

    .line 5958
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v0, :cond_1

    .line 5960
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->closeBook()V

    .line 5962
    :cond_1
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    .line 5963
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 5964
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    .line 5966
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->parser:Lcom/mobipocket/common/parser/EBookParser;

    .line 5967
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPagesNavigationCache:Lcom/mobipocket/common/library/reader/NavigationCache;

    .line 5968
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousLinesNavigationCache:Lcom/mobipocket/common/library/reader/NavigationCache;

    .line 5969
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tagStackCache:Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;

    .line 5971
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 5972
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPageNumber:I

    .line 5973
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    if-eqz v0, :cond_2

    .line 5975
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->releaseAll()V

    .line 5977
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->releaseAll()V

    .line 5978
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pNextDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->releaseAll()V

    .line 5979
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPreviousDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->releaseAll()V

    .line 5980
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 5981
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pNextPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 5982
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPreviousPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 5983
    return-void
.end method

.method public getCurrentBook()Lcom/mobipocket/common/library/reader/BookItem;
    .locals 1

    .prologue
    .line 5582
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    return-object v0
.end method

.method public getDefaultIndexDescriptor()Lcom/mobipocket/common/library/reader/IndexDescriptor;
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 6010
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 6021
    :goto_0
    return-object v0

    .line 6015
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v12, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->idx_dic:I

    .line 6016
    .local v12, defaultIndexRecIndex:I
    if-gtz v12, :cond_2

    move-object v0, v1

    .line 6017
    goto :goto_0

    .line 6021
    :cond_2
    new-instance v0, Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->idx_dic:I

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v4, v4, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_in:I

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v5, v5, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_ou:I

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/mobipocket/common/library/reader/IndexDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getImageData(I)[B
    .locals 1
    .parameter "imageId"

    .prologue
    .line 5633
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v0, :cond_0

    .line 5635
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getImageBytes(I)[B

    move-result-object v0

    .line 5638
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method protected getNextPageLayoutRunnable()Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->nextPageLayoutRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    return-object v0
.end method

.method public getPageMetadata(I)Lcom/mobipocket/common/library/reader/IRenderedPageMetadata;
    .locals 2
    .parameter "displacement"

    .prologue
    .line 5593
    const/4 v0, 0x0

    .line 5594
    .local v0, pageMetadata:Lcom/mobipocket/common/library/reader/IRenderedPageMetadata;
    packed-switch p1, :pswitch_data_0

    .line 5619
    :goto_0
    return-object v0

    .line 5597
    :pswitch_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getRenderedPageMetadata()Lcom/mobipocket/common/library/reader/IRenderedPageMetadata;

    move-result-object v0

    .line 5598
    goto :goto_0

    .line 5601
    :pswitch_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->nextPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->nextPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->isTaskLaunched()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5603
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->nextPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->waitForLaunchedTaskCompletion()V

    .line 5606
    :cond_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pNextDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getRenderedPageMetadata()Lcom/mobipocket/common/library/reader/IRenderedPageMetadata;

    move-result-object v0

    .line 5607
    goto :goto_0

    .line 5610
    :pswitch_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->isTaskLaunched()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5612
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPageThread:Lcom/mobipocket/common/util/SingleThreadManager;

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->waitForLaunchedTaskCompletion()V

    .line 5615
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPreviousDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getRenderedPageMetadata()Lcom/mobipocket/common/library/reader/IRenderedPageMetadata;

    move-result-object v0

    goto :goto_0

    .line 5594
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getPreviousPageLayoutRunnable()Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPageLayoutRunnable:Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    return-object v0
.end method

.method public getTOC()Lcom/mobipocket/common/library/reader/TOC;
    .locals 1

    .prologue
    .line 6083
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    return-object v0
.end method

.method public hasDefaultIndex()Z
    .locals 1

    .prologue
    .line 6042
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->hasDefaultIndex()Z

    move-result v0

    return v0
.end method

.method public open(Lcom/mobipocket/common/library/reader/FoundItem;)V
    .locals 6
    .parameter "foundItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 5904
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 5905
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FoundItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->openBook(Ljava/lang/String;)V

    .line 5906
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->search:Lcom/mobipocket/common/library/reader/BookViewManager$Search;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FoundItem;->getPageBeginPos()I

    move-result v1

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FoundItem;->getBeginPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FoundItem;->getEndPosition()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->searchEnded(IIIZZ)V

    .line 5907
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->access$5100(Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;)V

    .line 5908
    return-void
.end method

.method public open(Lcom/mobipocket/common/library/reader/IndexItem;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 5828
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/IndexItem;->getIndexDescriptor()Lcom/mobipocket/common/library/reader/IndexDescriptor;

    move-result-object v9

    .line 5830
    iget v0, v9, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexType:I

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexType:I

    if-ne v0, v11, :cond_2

    .line 5833
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 5834
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/IndexItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->openBook(Ljava/lang/String;)V

    .line 5835
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/IndexItem;->getPos()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoPosition(IZZ)V

    .line 5836
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->access$5100(Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;)V

    .line 5859
    :cond_1
    :goto_0
    return-void

    .line 5839
    :cond_2
    iget v0, v9, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5841
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pApplicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

    if-eqz v0, :cond_1

    .line 5847
    new-instance v0, Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget-object v1, v9, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pFileIdentifier:Ljava/lang/String;

    iget-object v2, v9, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pBookTitle:Ljava/lang/String;

    iget v3, v9, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pMasterRecIndex:I

    iget v4, v9, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pDicLangIn:I

    iget v5, v9, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pDicLangOut:I

    iget-object v6, v9, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexName:Ljava/lang/String;

    iget-object v7, v9, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyIndexName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/IndexItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v9, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pSecondarySearchViewCaption:Ljava/lang/String;

    const-string v10, ""

    invoke-direct/range {v0 .. v11}, Lcom/mobipocket/common/library/reader/IndexDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected openBook(Lcom/mobipocket/common/library/reader/BookItem;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 5652
    :try_start_0
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    .line 5654
    new-instance v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->security:Lcom/amazon/system/security/Security;

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/bookreader/EBook;-><init>(Ljava/lang/String;Lcom/mobipocket/common/filesystem/PDBFactory;Lcom/amazon/system/security/Security;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 5655
    new-instance v0, Lcom/mobipocket/common/library/reader/MBPFile;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->pdbName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v4, v4, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->random_id:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/MBPFile;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    .line 5657
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-static {v0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->isHtml(Lcom/mobipocket/common/library/reader/bookreader/EBook;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5659
    new-instance v0, Lcom/mobipocket/common/parser/TXTEBookParser;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/parser/TXTEBookParser;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->parser:Lcom/mobipocket/common/parser/EBookParser;

    .line 5666
    :goto_0
    new-instance v0, Lcom/mobipocket/common/parser/HyphenationHelper;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/parser/HyphenationHelper;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->expressionSearcher:Lcom/mobipocket/common/parser/HyphenationHelper;

    .line 5668
    new-instance v0, Lcom/mobipocket/common/library/reader/NavigationCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/NavigationCache;-><init>(I)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousPagesNavigationCache:Lcom/mobipocket/common/library/reader/NavigationCache;

    .line 5671
    new-instance v0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;-><init>(I)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tagStackCache:Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;

    .line 5672
    new-instance v0, Lcom/mobipocket/common/library/reader/NavigationCache;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/NavigationCache;-><init>(I)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->previousLinesNavigationCache:Lcom/mobipocket/common/library/reader/NavigationCache;

    .line 5674
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$6400(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;)V

    .line 5675
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    if-eqz v0, :cond_0

    .line 5677
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->releaseAll()V

    .line 5678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    .line 5681
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pGuideItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 5682
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$6500(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Z)V

    .line 5685
    new-instance v0, Lcom/mobipocket/common/library/reader/PageConstructor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pImageFactory:Lcom/amazon/system/drawing/ImageFactory;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->parser:Lcom/mobipocket/common/parser/EBookParser;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->prevPageLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;

    iget v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->expressionSearcher:Lcom/mobipocket/common/parser/HyphenationHelper;

    invoke-direct/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/PageConstructor;-><init>(Lcom/mobipocket/common/library/reader/DecorationGenerator;Lcom/amazon/system/drawing/ImageFactory;Lcom/mobipocket/common/library/reader/bookreader/EBook;Lcom/mobipocket/common/parser/EBookParser;Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;ILcom/mobipocket/common/parser/HyphenationHelper;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    .line 5687
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->access$4800(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V

    .line 5689
    new-instance v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pImageFactory:Lcom/amazon/system/drawing/ImageFactory;

    iget v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pWidth:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pHeight:I

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/LayoutedFrame;-><init>(Lcom/amazon/system/drawing/ImageFactory;IILcom/mobipocket/common/library/reader/DecorationGenerator;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;[Lcom/mobipocket/common/library/reader/FlowElement;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 5690
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->idx_toc:I
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-lez v0, :cond_3

    .line 5693
    :try_start_1
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getBookReadPDB()Lcom/mobipocket/common/filesystem/ReadPDB;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->idx_toc:I

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/Index;-><init>(Lcom/mobipocket/common/filesystem/ReadPDB;I)V

    .line 5694
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;-><init>()V

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    .line 5695
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->setIndex(Lcom/mobipocket/common/library/reader/indexes/Index;Ljava/lang/String;)V

    .line 5697
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->idx_names:I

    if-ltz v0, :cond_1

    .line 5700
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getBookReadPDB()Lcom/mobipocket/common/filesystem/ReadPDB;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->idx_names:I

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/Index;-><init>(Lcom/mobipocket/common/filesystem/ReadPDB;I)V

    .line 5701
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->idx_inflect:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->attachInflectIDX(I)Z

    .line 5702
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->embed_base:I

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->idx_toc:I

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v4, v4, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->index_base:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->setNamingTable(Lcom/mobipocket/common/library/reader/indexes/Index;II)V
    :try_end_1
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 5728
    :cond_1
    :goto_1
    return-void

    .line 5661
    :cond_2
    :try_start_2
    new-instance v0, Lcom/mobipocket/common/parser/HTMLEBookParser;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/parser/HTMLEBookParser;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->parser:Lcom/mobipocket/common/parser/EBookParser;
    :try_end_2
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 5717
    :catch_0
    move-exception v0

    .line 5720
    invoke-virtual {p0, v9}, Lcom/mobipocket/common/library/reader/BookViewManager;->closeBook(Z)V

    .line 5721
    throw v0

    .line 5708
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    .line 5709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t open the TOC for The current eBook("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 5724
    :catch_2
    move-exception v0

    invoke-virtual {p0, v9}, Lcom/mobipocket/common/library/reader/BookViewManager;->closeBook(Z)V

    .line 5726
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->UNKNOWN_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5714
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    .line 5715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The current eBook("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") doesn\'t contain TOC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1
.end method

.method public openBook(Lcom/mobipocket/common/library/reader/BookItem;Z)Z
    .locals 3
    .parameter "book"
    .parameter "tryRestoreClosedPage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5763
    if-eqz p2, :cond_0

    .line 5765
    new-array v0, v1, [I

    aput v1, v0, v2

    .line 5771
    .local v0, target:[I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->openBook(Lcom/mobipocket/common/library/reader/BookItem;[I)Z

    move-result v1

    return v1

    .line 5769
    .end local v0           #target:[I
    :cond_0
    new-array v0, v1, [I

    const/4 v1, 0x2

    aput v1, v0, v2

    .restart local v0       #target:[I
    goto :goto_0
.end method

.method public openBook(Lcom/mobipocket/common/library/reader/BookItem;[I)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5789
    .line 5790
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager;->openBook(Lcom/mobipocket/common/library/reader/BookItem;)V

    .line 5791
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    move v0, v3

    move v1, v3

    .line 5792
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    if-nez v1, :cond_0

    .line 5794
    aget v2, p2, v0

    packed-switch v2, :pswitch_data_0

    .line 5792
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5797
    :pswitch_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->restoreClosedPage()Z

    move-result v1

    goto :goto_1

    .line 5800
    :pswitch_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->firstPage(Z)V

    .line 5801
    const/4 v1, 0x1

    .line 5802
    goto :goto_1

    .line 5804
    :pswitch_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoStartReading(Z)Z

    move-result v1

    goto :goto_1

    .line 5808
    :cond_0
    if-nez v1, :cond_1

    .line 5810
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->firstPage(Z)V

    .line 5813
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->access$5100(Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;)V

    .line 5814
    return v1

    .line 5794
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public openTOCSection(Lcom/mobipocket/common/library/reader/TOCItem;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 5872
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mobipocket/common/library/reader/TOCItem;->getStartPosition()I

    move-result v1

    if-gez v1, :cond_1

    .line 5874
    :cond_0
    new-instance v1, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v2, Lcom/mobipocket/common/library/reader/InvalidBookException;->UNKNOWN_ERROR:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5878
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 5879
    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->getEBookIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->openBook(Ljava/lang/String;)V

    .line 5881
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->hasToc()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5883
    new-instance v1, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v2, Lcom/mobipocket/common/library/reader/InvalidBookException;->UNKNOWN_ERROR:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5888
    :cond_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-interface {p1}, Lcom/mobipocket/common/library/reader/TOCItem;->getStartPosition()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoPosition(IZZ)V

    .line 5890
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->access$5100(Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;)V

    .line 5892
    return-void
.end method

.method public restoreState(Ljava/io/InputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mobipocket/common/library/historizer/RestoreStateException;
        }
    .end annotation

    .prologue
    .line 6051
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 6052
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6054
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->openBook(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6060
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->restoreState(Ljava/io/InputStream;)V

    .line 6061
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->access$5100(Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;)V

    .line 6062
    return-void

    .line 6057
    :catch_0
    move-exception v0

    new-instance v0, Lcom/mobipocket/common/library/historizer/RestoreStateException;

    sget-object v1, Lcom/mobipocket/common/library/historizer/RestoreStateException;->ID_STATE_NOT_AVAILABLE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/historizer/RestoreStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveBookState()Z
    .locals 4

    .prologue
    .line 5919
    const/4 v0, 0x0

    .line 5920
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v1, :cond_0

    .line 5924
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getStackImageOfCurrentPage()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5931
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/mobipocket/common/library/reader/MBPFile;->close(II[B)Z

    move-result v0

    .line 5932
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    if-eqz v1, :cond_0

    .line 5934
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mobipocket/common/library/reader/BookItem;->refreshMBPData(II)V

    .line 5937
    :cond_0
    return v0

    .line 5927
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveState(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6070
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6071
    .local v0, dos:Ljava/io/DataOutputStream;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 6072
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->saveState(Ljava/io/OutputStream;)V

    .line 6073
    return-void
.end method

.method public setApplicationCommands(Lcom/mobipocket/common/library/reader/ApplicationCommands;)V
    .locals 0
    .parameter "applicationCommands"

    .prologue
    .line 6092
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager;->pApplicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

    .line 6093
    return-void
.end method
