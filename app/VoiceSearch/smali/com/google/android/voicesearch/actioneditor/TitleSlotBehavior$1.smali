.class Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$1;
.super Ljava/lang/Object;
.source "TitleSlotBehavior.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->showTitlePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    return-void
.end method

.method public onDeleteClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->deleteSlot()V

    .line 92
    return-void
.end method

.method public onEditClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->beginEditing()V

    .line 95
    return-void
.end method

.method public onItemSelected(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    return-void
.end method

.method public onMicClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->endEditing()V

    .line 98
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;

    iget-object v0, v0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotContainer()Lcom/google/android/voicesearch/actioneditor/SlotContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;

    iget-object v1, v1, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotContainer;->toggleRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 99
    return-void
.end method
