.class Lcom/google/android/voicesearch/actioneditor/SlotView$1;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/SlotView;->initWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field save:Landroid/text/SpannableStringBuilder;

.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->save:Landroid/text/SpannableStringBuilder;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->save:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$000(Lcom/google/android/voicesearch/actioneditor/SlotView;)Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$000(Lcom/google/android/voicesearch/actioneditor/SlotView;)Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$000(Lcom/google/android/voicesearch/actioneditor/SlotView;)Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$100(Lcom/google/android/voicesearch/actioneditor/SlotView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->save:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$200(Lcom/google/android/voicesearch/actioneditor/SlotView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$200(Lcom/google/android/voicesearch/actioneditor/SlotView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;

    .line 219
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-interface {v0, v2}, Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;->onValueChange(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$300(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onValueChanged()V

    .line 225
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->save:Landroid/text/SpannableStringBuilder;

    .line 209
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    return-void
.end method
