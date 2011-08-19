.class Lcom/android/contacts/editor/TextFieldsEditorView$1;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;->setupMoreOrLessButton(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 198
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, focusedChild:Landroid/view/View;
    if-nez v0, :cond_2

    const/4 v3, -0x1

    move v1, v3

    .line 202
    .local v1, focusedViewId:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$002(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z

    .line 203
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->onOptionalFieldVisibilityChange()V

    .line 204
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->rebuildValues()V

    .line 207
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 208
    .local v2, newFocusView:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    .line 212
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 213
    return-void

    .line 199
    .end local v1           #focusedViewId:I
    .end local v2           #newFocusView:Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    move v1, v3

    goto :goto_0

    .line 202
    .restart local v1       #focusedViewId:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
