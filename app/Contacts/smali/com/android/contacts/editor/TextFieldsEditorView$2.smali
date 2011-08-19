.class Lcom/android/contacts/editor/TextFieldsEditorView$2;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

.field final synthetic val$column:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->val$column:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->val$column:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 297
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 301
    return-void
.end method
