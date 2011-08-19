.class Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;
.super Ljava/lang/Object;
.source "ContactSlot.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/ContactSlot;->startAutoCompleting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    return-void
.end method

.method public onDeleteClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 4
    .parameter

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->access$200(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    move-result-object v1

    .line 421
    if-nez v1, :cond_0

    .line 431
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 426
    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 428
    const-string v3, ""

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 429
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->formatContactsList()V

    .line 430
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    goto :goto_0
.end method

.method public onEditClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    return-void
.end method

.method public onItemSelected(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 404
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    .line 405
    invoke-virtual {v0, p2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->getContactAtIndex(I)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v0

    .line 406
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-static {v2}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->access$200(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    move-result-object v2

    .line 407
    if-nez v2, :cond_0

    .line 416
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 411
    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/Contact;->toAddressString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 414
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->formatContactsList()V

    .line 415
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    goto :goto_0
.end method

.method public onMicClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 2
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setSelection(I)V

    .line 438
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSlotContainer()Lcom/google/android/voicesearch/actioneditor/SlotContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotContainer;->toggleRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 439
    return-void
.end method
