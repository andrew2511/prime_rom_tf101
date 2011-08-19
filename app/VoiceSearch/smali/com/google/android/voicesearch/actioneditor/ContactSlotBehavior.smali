.class public Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;
.super Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior;
.source "ContactSlotBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior",
        "<",
        "Lcom/google/android/voicesearch/actioneditor/ContactSlot;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_ALTERNATES_NOT_KEYBOARD_MODE:I = 0x5


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior;-><init>(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 41
    return-void
.end method

.method private removeDuplicates(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 45
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/Contact;

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v2, v0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    if-lt v2, v0, :cond_1

    .line 47
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/Contact;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/Contact;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/Contact;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 46
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 44
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 53
    :cond_2
    return-void
.end method

.method private showAddPopup(Landroid/graphics/Point;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    new-instance v1, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableDelete()V

    .line 157
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->isInKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableKeyboard()V

    .line 161
    :cond_0
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;-><init>(Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;)V

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->setListener(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 180
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableList()V

    .line 181
    iget-object p0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    .line 182
    return-void
.end method

.method private showAlternates(Lcom/google/android/voicesearch/actioneditor/ContactSpan;)V
    .locals 8
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    .line 57
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionStart()I

    move-result v3

    .line 58
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionEnd()I

    move-result v4

    .line 59
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getAlternates(II)Lcom/google/android/voicesearch/actions/ContactAlternates;

    move-result-object v5

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->getContact()Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getAddressType()I

    move-result v0

    invoke-static {v2, v6, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactAlternates(Landroid/content/Context;Ljava/lang/String;I)[Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v2

    .line 68
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getAddressType()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->sortForType([Lcom/google/android/voicesearch/actions/Contact;I)V

    .line 73
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    if-eqz v5, :cond_1

    .line 77
    invoke-virtual {v5}, Lcom/google/android/voicesearch/actions/ContactAlternates;->getContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->removeDuplicates(Ljava/util/List;)V

    .line 83
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/voicesearch/actions/Contact;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/voicesearch/actions/Contact;

    .line 85
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactRepresentations(Landroid/content/Context;[Lcom/google/android/voicesearch/actions/Contact;)[Landroid/text/SpannableString;

    move-result-object v1

    .line 89
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->isInKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    move v6, v0

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v7, 0x1

    invoke-static {v0, v1, v7, v6}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->createAlternatesPopup(Landroid/content/Context;[Ljava/lang/CharSequence;ZI)Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    move-result-object v6

    .line 94
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 96
    invoke-virtual {v6}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableDelete()V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->isInKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {v6}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableKeyboard()V

    .line 103
    :cond_3
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;-><init>(Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;[Lcom/google/android/voicesearch/actions/Contact;IILcom/google/android/voicesearch/actions/ContactAlternates;)V

    invoke-virtual {v6, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->setListener(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 149
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-static {v0, v3, v4}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v0

    .line 150
    iget-object p0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    .line 151
    return-void

    .line 89
    :cond_4
    const/4 v0, 0x5

    move v6, v0

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 202
    if-nez v0, :cond_1

    .line 204
    iget-object p0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->requestFocus()Z

    .line 213
    :cond_0
    :goto_0
    return v2

    .line 205
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    const-class v1, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSpans(Landroid/view/MotionEvent;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 209
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    if-gez p2, :cond_3

    iget-object p0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setSelection(I)V

    goto :goto_0

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method public startCorrection(Lcom/google/android/voicesearch/actioneditor/ContactSpan;)V
    .locals 3
    .parameter

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionStart()I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-static {v1, v0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v1

    .line 188
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->requestFocus()Z

    .line 189
    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->showAddPopup(Landroid/graphics/Point;)V

    .line 197
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 192
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->requestFocus()Z

    .line 193
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setSelection(II)V

    .line 195
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->showAlternates(Lcom/google/android/voicesearch/actioneditor/ContactSpan;)V

    goto :goto_0
.end method
