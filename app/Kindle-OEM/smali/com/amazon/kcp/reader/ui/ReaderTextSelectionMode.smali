.class public Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;
.super Ljava/lang/Object;
.source "ReaderTextSelectionMode.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private currentActionMode:Landroid/view/ActionMode;

.field private selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

.field private selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

.field private selectionStateCallback:Lcom/amazon/foundation/ICallback;

.field private titleController:Lcom/amazon/kcp/reader/IDocumentTitleController;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionStateCallback:Lcom/amazon/foundation/ICallback;

    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->view:Landroid/view/View;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->onSelectionStateChanged()V

    return-void
.end method

.method private onSelectionStateChanged()V
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionState()Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    move-result-object v0

    .line 203
    .local v0, state:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;
    if-eqz v0, :cond_2

    sget-object v1, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->view:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->currentActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->currentActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->currentActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 213
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->currentActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 164
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 188
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 167
    :sswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->addNote()V

    .line 191
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :sswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->addHighlight()V

    goto :goto_1

    .line 173
    :sswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->deleteHighlight()V

    goto :goto_1

    .line 176
    :sswitch_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->searchInDocument()V

    goto :goto_1

    .line 179
    :sswitch_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->showImageZoom()V

    goto :goto_1

    .line 182
    :sswitch_5
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->searchInGoogle()V

    goto :goto_1

    .line 185
    :sswitch_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->searchInWikipedia()V

    goto :goto_1

    .line 164
    :sswitch_data_0
    .sparse-switch
        0x7f0c0004 -> :sswitch_0
        0x7f0c0005 -> :sswitch_1
        0x7f0c0006 -> :sswitch_2
        0x7f0c0009 -> :sswitch_4
        0x7f0c000b -> :sswitch_6
        0x7f0c000c -> :sswitch_5
        0x7f0c0107 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->titleController:Lcom/amazon/kcp/reader/IDocumentTitleController;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->titleController:Lcom/amazon/kcp/reader/IDocumentTitleController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/IDocumentTitleController;->setTitleVisibility(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0c0009

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->titleController:Lcom/amazon/kcp/reader/IDocumentTitleController;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->titleController:Lcom/amazon/kcp/reader/IDocumentTitleController;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/IDocumentTitleController;->setTitleVisibility(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->isOnlyImageSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const v0, 0x7f0b00f5

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 113
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 121
    :goto_0
    const v0, 0x7f0c0005

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 122
    const v1, 0x7f0c0006

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 123
    const v2, 0x7f0c0004

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->canAnnotate()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 128
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->isHighlightSelected()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 130
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v5

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 131
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 141
    :goto_3
    const v0, 0x7f0c0107

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 142
    const v1, 0x7f0c000b

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 143
    const v2, 0x7f0c000c

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 144
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->canPerformInDocumentSearch()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->canSendTextToWebService()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->canSendTextToWebService()Z

    move-result v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 148
    return v5

    .line 117
    :cond_1
    const v0, 0x7f0b00f4

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 118
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v3, v4

    .line 128
    goto :goto_1

    :cond_3
    move v0, v4

    .line 130
    goto :goto_2

    .line 135
    :cond_4
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 136
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 137
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public setDocumentTitleController(Lcom/amazon/kcp/reader/IDocumentTitleController;)V
    .locals 0
    .parameter "titleController"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->titleController:Lcom/amazon/kcp/reader/IDocumentTitleController;

    .line 91
    return-void
.end method

.method public setObjectSelectionController(Lcom/amazon/kcp/reader/ObjectSelectionController;)V
    .locals 0
    .parameter "selectionController"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    .line 81
    return-void
.end method

.method public setObjectSelectionModel(Lcom/amazon/kcp/reader/ObjectSelectionModel;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionStateChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionStateCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionStateChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSelectionMode;->selectionStateCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 71
    :cond_1
    return-void
.end method
