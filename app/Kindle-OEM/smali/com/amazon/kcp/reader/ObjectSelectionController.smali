.class public Lcom/amazon/kcp/reader/ObjectSelectionController;
.super Ljava/lang/Object;
.source "ObjectSelectionController.java"


# instance fields
.field private final activity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private final annotationsManager:Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

.field private final objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ObjectSelectionModel;Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;)V
    .locals 0
    .parameter "activity"
    .parameter "objectModel"
    .parameter "annotationsManager"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 33
    iput-object p2, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    .line 34
    iput-object p3, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->annotationsManager:Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    .line 35
    return-void
.end method

.method private genericWebsiteSelectedText(ILjava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    if-eqz p3, :cond_0

    .line 205
    invoke-static {v0}, Lcom/amazon/kcp/DSNUtils;->addEncryptedDSNToURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const-class v3, Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v0, "finishMenuItemText"

    iget-object v2, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const v3, 0x7f0b0145

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v0, "finishMenuItemIconId"

    const v2, 0x7f020059

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    :cond_1
    return-void
.end method


# virtual methods
.method public addHighlight()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v1

    .line 82
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->annotationsManager:Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    invoke-interface {v2, v0, v1}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->addHighlight(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)Lcom/amazon/kcp/reader/models/IAnnotation;

    .line 85
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "AnnotationCreationButtons"

    const-string v2, "HighlightAdded"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    .line 88
    return-void
.end method

.method public addNote()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->annotationsManager:Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->checkForExistingNote(I)Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v0

    .line 47
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const-class v3, Lcom/amazon/kcp/reader/EditNoteActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    if-eqz v0, :cond_0

    .line 51
    iget-object v2, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->annotationsManager:Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    invoke-interface {v2, v0}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->getIndex(Lcom/amazon/kcp/reader/models/IAnnotation;)I

    move-result v2

    .line 52
    const-string v3, "annotation_index"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string v2, "note_text"

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "AnnotationCreationButtons"

    const-string v3, "NoteEdited"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->setStateCreatingAnnotation()V

    .line 72
    :goto_1
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "AnnotationCreationButtons"

    const-string v3, "NoteAdded"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    goto :goto_1
.end method

.method public deleteHighlight()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->hasSelectionOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->annotationsManager:Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v0

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->getHighlightCoveringArea(II)Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->annotationsManager:Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->deleteAnnotation(Lcom/amazon/kcp/reader/models/IAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "AnnotationCreationButtons"

    const-string v2, "HighlightDeleted"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    .line 120
    return-void
.end method

.method public searchInDocument()V
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->startSearch(Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    .line 158
    return-void
.end method

.method public searchInGoogle()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const v1, 0x7f0b0166

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/amazon/kcp/reader/ObjectSelectionController;->genericWebsiteSelectedText(ILjava/lang/String;Z)V

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    .line 172
    return-void
.end method

.method public searchInWikipedia()V
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const v1, 0x7f0b0164

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/amazon/kcp/reader/ObjectSelectionController;->genericWebsiteSelectedText(ILjava/lang/String;Z)V

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    .line 186
    return-void
.end method

.method public showImageZoom()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    .line 134
    instance-of v1, v0, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;->getImageId()I

    move-result v0

    .line 138
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const-class v3, Lcom/amazon/kcp/reader/ImageZoomActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    const-string v2, "image_position_id_index"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "ImageZoomActivity"

    const-string v3, "ImageZoomLaunchViaAnnotationMenu"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ObjectSelectionController;->objectModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    .line 144
    return-void
.end method
