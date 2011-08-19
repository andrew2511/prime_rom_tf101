.class Lcom/android/contacts/editor/LabeledEditorView$3;
.super Ljava/lang/Object;
.source "LabeledEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/LabeledEditorView;->createCustomDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/LabeledEditorView;

.field final synthetic val$customType:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->val$customType:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 453
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->val$customType:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, customText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 455
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$200(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->access$000(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v5

    invoke-static {v4, v5, v6}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/AccountType$EditType;)Ljava/util/ArrayList;

    move-result-object v0

    .line 457
    .local v0, allTypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountType$EditType;>;"
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4, v6}, Lcom/android/contacts/editor/LabeledEditorView;->access$402(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/AccountType$EditType;

    .line 458
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditType;

    .line 459
    .local v2, editType:Lcom/android/contacts/model/AccountType$EditType;
    iget-object v4, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 460
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4, v2}, Lcom/android/contacts/editor/LabeledEditorView;->access$402(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/AccountType$EditType;

    .line 464
    .end local v2           #editType:Lcom/android/contacts/model/AccountType$EditType;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v4

    if-nez v4, :cond_3

    .line 472
    .end local v0           #allTypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountType$EditType;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    return-void

    .line 466
    .restart local v0       #allTypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountType$EditType;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->access$000(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v6}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    iget v6, v6, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 467
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)V

    .line 469
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v4}, Lcom/android/contacts/editor/LabeledEditorView;->requestFocusForFirstEditField()V

    .line 470
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v4}, Lcom/android/contacts/editor/LabeledEditorView;->onLabelRebuilt()V

    goto :goto_0
.end method
