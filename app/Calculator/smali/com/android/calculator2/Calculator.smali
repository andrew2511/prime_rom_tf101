.class public Lcom/android/calculator2/Calculator;
.super Landroid/app/Activity;
.source "Calculator.java"

# interfaces
.implements Lcom/android/calculator2/Logic$Listener;
.implements Lcom/android/calculator2/PanelSwitcher$Listener;


# instance fields
.field private mBackspaceButton:Landroid/view/View;

.field private mClearButton:Landroid/view/View;

.field private mDisplay:Lcom/android/calculator2/CalculatorDisplay;

.field private mHistory:Lcom/android/calculator2/History;

.field mListener:Lcom/android/calculator2/EventListener;

.field private mLogic:Lcom/android/calculator2/Logic;

.field private mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

.field private mPersist:Lcom/android/calculator2/Persist;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Lcom/android/calculator2/EventListener;

    invoke-direct {v0}, Lcom/android/calculator2/EventListener;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    return-void
.end method

.method static log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 225
    return-void
.end method

.method private setOnClickListener(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method private updateDeleteMode()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v0}, Lcom/android/calculator2/Logic;->getDeleteMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mBackspaceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mBackspaceButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onChange()V
    .locals 0

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->invalidateOptionsMenu()V

    .line 230
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->setContentView(I)V

    .line 56
    new-instance v1, Lcom/android/calculator2/Persist;

    invoke-direct {v1, p0}, Lcom/android/calculator2/Persist;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    .line 57
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    invoke-virtual {v1}, Lcom/android/calculator2/Persist;->load()V

    .line 59
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    iget-object v1, v1, Lcom/android/calculator2/Persist;->history:Lcom/android/calculator2/History;

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    .line 61
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/CalculatorDisplay;

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    .line 63
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mBackspaceButton:Landroid/view/View;

    .line 68
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mBackspaceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mBackspaceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 71
    new-instance v1, Lcom/android/calculator2/Logic;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/calculator2/Logic;-><init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/CalculatorDisplay;)V

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    .line 72
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v1, p0}, Lcom/android/calculator2/Logic;->setListener(Lcom/android/calculator2/Logic$Listener;)V

    .line 74
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    invoke-virtual {v2}, Lcom/android/calculator2/Persist;->getDeleteMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calculator2/Logic;->setDeleteMode(I)V

    .line 75
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorDisplay;->getMaxDigits()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calculator2/Logic;->setLineLength(I)V

    .line 77
    new-instance v0, Lcom/android/calculator2/HistoryAdapter;

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/calculator2/HistoryAdapter;-><init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/Logic;)V

    .line 78
    .local v0, historyAdapter:Lcom/android/calculator2/HistoryAdapter;
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/History;->setObserver(Landroid/widget/BaseAdapter;)V

    .line 80
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/PanelSwitcher;

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    .line 81
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-nez p1, :cond_1

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/calculator2/PanelSwitcher;->setCurrentIndex(I)V

    .line 83
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v1, p0}, Lcom/android/calculator2/PanelSwitcher;->setListener(Lcom/android/calculator2/PanelSwitcher$Listener;)V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/EventListener;->setHandler(Lcom/android/calculator2/Logic;Lcom/android/calculator2/PanelSwitcher;)V

    .line 87
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v1, v2}, Lcom/android/calculator2/CalculatorDisplay;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 89
    const v1, 0x7f090016

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 90
    const v1, 0x7f090013

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 91
    const v1, 0x7f090014

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 92
    const v1, 0x7f090015

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 93
    const v1, 0x7f09000d

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 94
    const v1, 0x7f09000e

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 95
    const v1, 0x7f09000f

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 96
    const v1, 0x7f090007

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 97
    const v1, 0x7f090008

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 98
    const v1, 0x7f090009

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 99
    const v1, 0x7f090010

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 101
    const v1, 0x7f090018

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 102
    const v1, 0x7f090012

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 103
    const v1, 0x7f090011

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 104
    const v1, 0x7f09000c

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 105
    const v1, 0x7f09000a

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 106
    const v1, 0x7f09000b

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 107
    const v1, 0x7f090017

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 109
    const v1, 0x7f09001a

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 110
    const v1, 0x7f09001f

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 111
    const v1, 0x7f09001b

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 112
    const v1, 0x7f090020

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 113
    const v1, 0x7f09001c

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 114
    const v1, 0x7f090021

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 115
    const v1, 0x7f09001d

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 116
    const v1, 0x7f090022

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 117
    const v1, 0x7f09001e

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 118
    const v1, 0x7f090023

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setOnClickListener(I)V

    .line 120
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v1}, Lcom/android/calculator2/Logic;->resumeWithHistory()V

    .line 121
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->updateDeleteMode()V

    .line 122
    return-void

    .line 82
    :cond_1
    const-string v2, "state-current-view"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 143
    const v1, 0x7f060023

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 144
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 145
    const v1, 0x7f02000b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 147
    const/4 v1, 0x3

    const v2, 0x7f060022

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 148
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 149
    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 151
    const/4 v1, 0x2

    const v2, 0x7f060021

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 152
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 153
    const v1, 0x7f02000c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 155
    return v5
.end method

.method public onDeleteModeChange()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->updateDeleteMode()V

    .line 235
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v1, 0x1

    .line 212
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->moveRight()V

    move v0, v1

    .line 217
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v0}, Lcom/android/calculator2/History;->clear()V

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->moveRight()V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->moveLeft()V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 205
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v0}, Lcom/android/calculator2/Logic;->updateHistory()V

    .line 206
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v1}, Lcom/android/calculator2/Logic;->getDeleteMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calculator2/Persist;->setDeleteMode(I)V

    .line 207
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    invoke-virtual {v0}, Lcom/android/calculator2/Persist;->save()V

    .line 208
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 161
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v1}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v1}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 167
    return v2

    :cond_0
    move v1, v3

    .line 161
    goto :goto_0

    :cond_1
    move v1, v3

    .line 164
    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "state-current-view"

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v1}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    :cond_0
    return-void
.end method
