.class Lcom/android/contacts/editor/BaseRawContactEditorView$1;
.super Ljava/lang/Object;
.source "BaseRawContactEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/BaseRawContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView$1;->this$0:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView$1;->this$0:Lcom/android/contacts/editor/BaseRawContactEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView$1;->this$0:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->access$000(Lcom/android/contacts/editor/BaseRawContactEditorView;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setExpanded(Z)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
