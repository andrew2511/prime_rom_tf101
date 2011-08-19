.class public Lcom/google/android/voicesearch/actioneditor/SlotGroup;
.super Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;
.source "SlotGroup.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker$KeyboardModeListener;
.implements Lcom/google/android/voicesearch/actioneditor/SlotContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SlotView"

.field private static final VOICE_SEARCH_KEY_CODE:I = 0x5c


# instance fields
.field private mActiveSlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveSlotsView:Landroid/widget/LinearLayout;

.field private mContent:Landroid/widget/LinearLayout;

.field protected mController:Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;

.field private mInactiveSlotButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mInactiveSlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView;",
            ">;"
        }
    .end annotation
.end field

.field private mInactiveSlotsView:Landroid/widget/LinearLayout;

.field private mKeyboardStateTracker:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

.field private mMicButton:Landroid/widget/ImageButton;

.field private mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

.field private mRecognizing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlots:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotButtons:Ljava/util/List;

    .line 82
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

    invoke-direct {v0, p1}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mKeyboardStateTracker:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->setFillViewport(Z)V

    .line 86
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 90
    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    const v1, 0x7f0d004c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlotsView:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    const v1, 0x7f0d004e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotsView:Landroid/widget/LinearLayout;

    .line 93
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    const v1, 0x7f0d004f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mMicButton:Landroid/widget/ImageButton;

    .line 94
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/PopupManager;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    .line 95
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    invoke-virtual {v0, p0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->addFallthroughTouchView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    invoke-virtual {v0, p0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->addFallthroughKeyView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mMicButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/SlotGroup$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup$1;-><init>(Lcom/google/android/voicesearch/actioneditor/SlotGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mKeyboardStateTracker:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

    invoke-virtual {v0, p0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->setKeyboardModeListener(Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker$KeyboardModeListener;)V

    .line 108
    return-void
.end method

.method private createInactiveSlotView(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/widget/Button;
    .locals 4
    .parameter

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 226
    const v1, 0x7f030010

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotsView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 228
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/SlotSpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    new-instance v1, Lcom/google/android/voicesearch/actioneditor/SlotGroup$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup$3;-><init>(Lcom/google/android/voicesearch/actioneditor/SlotGroup;Lcom/google/android/voicesearch/actioneditor/SlotView;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-object v0
.end method

.method private refreshLayout()V
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->removeAllViews()V

    .line 137
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 138
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 141
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 142
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 147
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->createInactiveSlotView(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/widget/Button;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotButtons:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->getDefaultSlot()Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelection(I)V

    .line 157
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelected(Z)V

    .line 158
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->requestFocus()Z

    .line 160
    :cond_2
    return-void
.end method

.method private sortActiveSlots()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/SlotGroup$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup$2;-><init>(Lcom/google/android/voicesearch/actioneditor/SlotGroup;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    return-void
.end method


# virtual methods
.method public activateSlot(Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 4
    .parameter

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 192
    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 198
    :goto_0
    if-nez v0, :cond_1

    .line 199
    const-string v0, "SlotView"

    const-string v1, "Tried to active slot with no inactive button"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_1
    return-void

    .line 203
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->activateSlot(Lcom/google/android/voicesearch/actioneditor/SlotView;Landroid/widget/Button;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public activateSlot(Lcom/google/android/voicesearch/actioneditor/SlotView;Landroid/widget/Button;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotButtons:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->sortActiveSlots()V

    .line 214
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlotsView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 217
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->requestFocus()Z

    .line 219
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onActivation()V

    .line 220
    return-void
.end method

.method public deleteSlot(Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->canDelete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->createInactiveSlotView(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/widget/Button;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotButtons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 336
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    .line 337
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mRecognizing:Z

    if-nez v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->findInputSlot()Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->startRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 344
    :cond_0
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public findInputSlot()Lcom/google/android/voicesearch/actioneditor/SlotView;
    .locals 4

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->getDefaultSlot()Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v1

    .line 399
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 400
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isSupportingVoiceInput()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 406
    :cond_1
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 439
    :cond_2
    :goto_0
    return-object v0

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 413
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isSupportingVoiceInput()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v0

    .line 419
    :cond_5
    if-eqz v1, :cond_6

    move-object v0, v1

    .line 420
    goto :goto_0

    .line 425
    :cond_6
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 426
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isSupportingVoiceInput()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 428
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->activateSlot(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 433
    :goto_1
    if-nez v0, :cond_2

    .line 436
    const-string v0, "SlotView"

    const-string v1, "Could not find a slot to input in to"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method public getActiveSlots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultSlot()Lcom/google/android/voicesearch/actioneditor/SlotView;
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->getActiveSlots()Ljava/util/List;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 310
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/SlotSpec;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 315
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyboardStateTracker()Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mKeyboardStateTracker:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

    return-object v0
.end method

.method public getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    return-object v0
.end method

.method public getSlotInflationRoot()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlotsView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSlotWithIdentifier(Ljava/lang/String;)Lcom/google/android/voicesearch/actioneditor/SlotView;
    .locals 3
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 320
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    :goto_0
    return-object v0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 326
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 327
    goto :goto_0

    .line 331
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inputSlotValue(Lcom/google/android/voicesearch/actioneditor/SlotView;Lcom/google/android/voicesearch/actions/SlotValue;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-virtual {p1, p2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->inputSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)Z

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlots:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->activateSlot(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 357
    :cond_0
    return v0
.end method

.method public notifyKeyboardChangedState(Z)V
    .locals 1
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mKeyboardStateTracker:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->setSoftKeyboardVisible(Z)V

    .line 370
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 362
    invoke-super {p0, p1}, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 363
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mKeyboardStateTracker:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->setHardKeyboardVisible(Z)V

    .line 366
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyboardTypeChange(Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    return-void
.end method

.method public onKeyboardVisibilityChange(Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;)V
    .locals 2
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 374
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->isInKeyboardMode()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onKeyboardChanged(Z)V

    goto :goto_0

    .line 376
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->onScrollChanged(IIII)V

    .line 386
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 387
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onParentScrolled()V

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method public scrollToSlot(Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 2
    .parameter

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getBottom()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->smoothScrollTo(II)V

    .line 172
    return-void
.end method

.method public setAccountSelectorView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    const v1, 0x7f0d004b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 276
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 277
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 278
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    const v1, 0x7f0d004a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 265
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 266
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 267
    return-void
.end method

.method public setRecognitionManager(Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mController:Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;

    .line 301
    return-void
.end method

.method public setRecognizing(Z)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mRecognizing:Z

    .line 305
    return-void
.end method

.method public setSlots(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlots:Ljava/util/List;

    .line 121
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->sortActiveSlots()V

    .line 123
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->refreshLayout()V

    .line 124
    return-void
.end method

.method public startRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mController:Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->logVoiceInput()V

    .line 283
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mController:Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;

    invoke-interface {v0, p0, p1}, Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;->startRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotGroup;Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 285
    :cond_0
    return-void
.end method

.method public stopRecognizing()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mController:Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mController:Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;

    invoke-interface {v0, p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;->stopRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotGroup;)V

    .line 291
    :cond_0
    return-void
.end method

.method public toggleRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mController:Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mController:Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;

    invoke-interface {v0, p0, p1}, Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;->toggleRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotGroup;Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 297
    :cond_0
    return-void
.end method
