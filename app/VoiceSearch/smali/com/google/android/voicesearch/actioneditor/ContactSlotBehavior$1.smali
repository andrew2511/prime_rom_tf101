.class Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;
.super Ljava/lang/Object;
.source "ContactSlotBehavior.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->showAlternates(Lcom/google/android/voicesearch/actioneditor/ContactSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

.field final synthetic val$contacts:[Lcom/google/android/voicesearch/actions/Contact;

.field final synthetic val$end:I

.field final synthetic val$realAlternates:Lcom/google/android/voicesearch/actions/ContactAlternates;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;[Lcom/google/android/voicesearch/actions/Contact;IILcom/google/android/voicesearch/actions/ContactAlternates;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iput-object p2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$contacts:[Lcom/google/android/voicesearch/actions/Contact;

    iput p3, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$start:I

    iput p4, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$end:I

    iput-object p5, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$realAlternates:Lcom/google/android/voicesearch/actions/ContactAlternates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->logDelete()V

    .line 140
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->isInKeyboardMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$end:I

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setSelection(I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object p0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 144
    return-void
.end method

.method public onDeleteClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 4
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 122
    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$end:I

    .line 124
    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$start:I

    const-string v3, ""

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 125
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->formatContactsList()V

    .line 126
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object p0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 127
    return-void
.end method

.method public onEditClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->beginEditing()V

    .line 130
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object p0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 131
    return-void
.end method

.method public onItemSelected(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->setSuspend(Z)V

    .line 106
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$contacts:[Lcom/google/android/voicesearch/actions/Contact;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/Contact;->toAddressString()Ljava/lang/String;

    move-result-object v1

    .line 108
    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$start:I

    iget v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$end:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 110
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$realAlternates:Lcom/google/android/voicesearch/actions/ContactAlternates;

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$realAlternates:Lcom/google/android/voicesearch/actions/ContactAlternates;

    iget v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$start:I

    iget v4, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->val$start:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    const/16 v4, 0x21

    invoke-interface {v0, v2, v3, v1, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->formatContactsList()V

    .line 115
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 116
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->setSuspend(Z)V

    .line 117
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object p0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->logSuggestionSelection()V

    .line 118
    return-void
.end method

.method public onMicClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->logVoiceInput()V

    .line 134
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSlotContainer()Lcom/google/android/voicesearch/actioneditor/SlotContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v1, v1, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotContainer;->toggleRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object p0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 136
    return-void
.end method
