.class Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;
.super Ljava/lang/Object;
.source "CorrectionSlotBehavior.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->showCorrectionPopup(Landroid/graphics/Point;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

.field final synthetic val$alternates:[Ljava/lang/String;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;II[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iput p2, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->val$start:I

    iput p3, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->val$end:I

    iput-object p4, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->val$alternates:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    return-void
.end method

.method public onDeleteClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 3
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->logDelete()V

    .line 218
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->val$start:I

    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->val$end:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->deleteBetween(II)V

    .line 219
    return-void
.end method

.method public onEditClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iget-object p0, v0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->beginEditing()V

    .line 222
    return-void
.end method

.method public onItemSelected(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->setSuspend(Z)V

    .line 211
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 212
    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->val$start:I

    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->val$end:I

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->val$alternates:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 213
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->setSuspend(Z)V

    .line 214
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iget-object p0, v0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->logSuggestionSelection()V

    .line 215
    return-void
.end method

.method public onMicClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->logVoiceInput()V

    .line 225
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSlotContainer()Lcom/google/android/voicesearch/actioneditor/SlotContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iget-object v1, v1, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotContainer;->toggleRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 226
    return-void
.end method
