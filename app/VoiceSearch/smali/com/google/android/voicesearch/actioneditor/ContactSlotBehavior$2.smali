.class Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;
.super Ljava/lang/Object;
.source "ContactSlotBehavior.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->showAddPopup(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object p0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 175
    return-void
.end method

.method public onDeleteClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    return-void
.end method

.method public onEditClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 2
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v1, v1, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v1, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setSelection(I)V

    .line 166
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object p0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->beginEditing()V

    .line 167
    return-void
.end method

.method public onItemSelected(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    return-void
.end method

.method public onMicClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 2
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->endEditing()V

    .line 170
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v1, v1, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v1, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setSelection(I)V

    .line 171
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSlotContainer()Lcom/google/android/voicesearch/actioneditor/SlotContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    iget-object v1, v1, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotContainer;->toggleRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 172
    return-void
.end method
