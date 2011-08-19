.class public Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;
.super Ljava/lang/Object;
.source "CMBPBookDisplay.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IBookDisplay;


# static fields
.field private static final FONT_PERCENT_SCALE_FACTOR:F = 12.5f


# instance fields
.field private bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

.field private colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

.field private currentDocumentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

.field private forceRefresh:Lcom/amazon/foundation/internal/EventProvider;

.field private layoutHeight:I

.field private layoutWidth:I

.field private nextDocumentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

.field private positionChangedCallback:Lcom/amazon/foundation/ICallback;

.field private previousDocumentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->layoutWidth:I

    .line 27
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->layoutHeight:I

    .line 29
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->currentDocumentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    .line 30
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->previousDocumentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    .line 31
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->nextDocumentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    .line 48
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->forceRefresh:Lcom/amazon/foundation/internal/EventProvider;

    .line 53
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay$1;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    .line 67
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->getPositionChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 68
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    .line 70
    return-void
.end method

.method private notifyRefreshListeners()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->forceRefresh:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 277
    return-void
.end method

.method private prepareDocumentPage(I)V
    .locals 8
    .parameter

    .prologue
    .line 134
    sparse-switch p1, :sswitch_data_0

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->currentDocumentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    .line 151
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->getPageMetadata(I)Lcom/mobipocket/common/library/reader/IRenderedPageMetadata;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 156
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->clearPageElements()V

    .line 160
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/mobipocket/common/library/reader/IRenderedPageMetadata;->getElements(I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 161
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    .line 165
    const/4 v2, 0x0

    .line 167
    invoke-interface {p0}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 174
    :goto_2
    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->addPageElement(Lcom/amazon/kcp/reader/models/IPageElement;)Z

    goto :goto_1

    .line 141
    :sswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->nextDocumentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    .line 142
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->getPageMetadata(I)Lcom/mobipocket/common/library/reader/IRenderedPageMetadata;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 143
    goto :goto_0

    .line 145
    :sswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->previousDocumentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    .line 146
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->getPageMetadata(I)Lcom/mobipocket/common/library/reader/IRenderedPageMetadata;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 147
    goto :goto_0

    .line 170
    :pswitch_0
    new-instance v2, Lcom/amazon/kcp/reader/models/internal/WordPageElement;

    invoke-interface {p0}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getBeginId()I

    move-result v3

    invoke-interface {p0}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getId()I

    move-result v4

    invoke-interface {p0}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/kcp/reader/models/internal/WordPageElement;-><init>(IILjava/util/Vector;Ljava/lang/String;)V

    goto :goto_2

    .line 173
    :pswitch_1
    new-instance v2, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;

    invoke-interface {p0}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getBeginId()I

    move-result v3

    invoke-interface {p0}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getId()I

    move-result v4

    invoke-interface {p0}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v5

    check-cast p0, Lcom/mobipocket/common/library/reader/PageElementImage;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/PageElementImage;->getImageId()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;-><init>(IILjava/util/Vector;I)V

    goto :goto_2

    .line 186
    :cond_1
    return-void

    .line 134
    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getColorMode()Lcom/amazon/kcp/reader/models/ColorMode;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    return-object v0
.end method

.method public getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->currentDocumentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->getSettings()Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultFontSize()I

    move-result v0

    return v0
.end method

.method public getForceRefreshEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->forceRefresh:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getImageFromImageId(I)[B
    .locals 1
    .parameter "imageId"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager;->getImageData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getLineSpacing()I
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->getSettings()Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultLineSpacing()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4148

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNextDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->nextDocumentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    return-object v0
.end method

.method public getPreviousDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->previousDocumentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    return-object v0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->notifyRefreshListeners()V

    .line 268
    return-void
.end method

.method public render(Lcom/amazon/system/drawing/GraphicsExtended;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 91
    packed-switch p2, :pswitch_data_0

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v0, p1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->drawPage(Lcom/amazon/system/drawing/Graphics;I)Z

    move-result v0

    .line 108
    :goto_0
    if-nez v0, :cond_1

    .line 115
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->layoutWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->layoutHeight:I

    if-lez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->getSettings()Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultBGColor()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/system/drawing/GraphicsExtended;->setBackground(I)V

    .line 118
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->layoutWidth:I

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->layoutHeight:I

    invoke-interface {p1, v2, v2, v0, v1}, Lcom/amazon/system/drawing/GraphicsExtended;->clearRect(IIII)V

    .line 125
    :cond_0
    :goto_1
    return-void

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v0, p1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->drawPage(Lcom/amazon/system/drawing/Graphics;I)Z

    move-result v0

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->drawPage(Lcom/amazon/system/drawing/Graphics;I)Z

    move-result v0

    goto :goto_0

    .line 103
    :pswitch_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->drawPage(Lcom/amazon/system/drawing/Graphics;I)Z

    move-result v0

    goto :goto_0

    .line 123
    :cond_1
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->prepareDocumentPage(I)V

    goto :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setColorMode(Lcom/amazon/kcp/reader/models/ColorMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Color mode cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/reader/models/ColorMode;->isEqual(Lcom/amazon/kcp/reader/models/ColorMode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    .line 213
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->getSettings()Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v0

    .line 214
    .local v0, bookSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/ColorMode;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setDefaultTextColor(I)V

    .line 215
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/ColorMode;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setDefaultBGColor(I)V

    .line 216
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/ColorMode;->getHighlightColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setHighlightColor(I)V

    .line 217
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/ColorMode;->getLinkColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setDefaultLinkColor(I)V

    .line 218
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/ColorMode;->getNoteColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setNoteColor(I)V

    .line 219
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/ColorMode;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setNoteIconColor(I)V

    .line 220
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->colorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/ColorMode;->getSelectedIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setNoteIconSelectedColor(I)V

    .line 222
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->updatePage()V

    .line 223
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->refresh()V

    .line 225
    .end local v0           #bookSettings:Lcom/mobipocket/common/library/reader/BookViewSettings;
    :cond_1
    return-void
.end method

.method public setColumnNumber(I)V
    .locals 0
    .parameter "columns"

    .prologue
    .line 254
    return-void
.end method

.method public setFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->getSettings()Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setDefaultFontSize(I)V

    .line 234
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->updatePage()V

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->refresh()V

    .line 236
    return-void
.end method

.method public setGutterWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 260
    return-void
.end method

.method public setLineSpacing(I)V
    .locals 2
    .parameter "lineSpacing"

    .prologue
    .line 242
    int-to-float v0, p1

    const/high16 v1, 0x4148

    div-float/2addr v0, v1

    float-to-int p1, v0

    .line 245
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->getSettings()Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setDefaultLineSpacing(I)V

    .line 246
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->updatePage()V

    .line 247
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->refresh()V

    .line 248
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 78
    iput p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->layoutWidth:I

    .line 79
    iput p2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->layoutHeight:I

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->setSize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->refresh()V

    .line 84
    :cond_0
    return-void
.end method
