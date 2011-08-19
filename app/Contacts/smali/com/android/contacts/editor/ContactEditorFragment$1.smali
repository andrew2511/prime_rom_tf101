.class Lcom/android/contacts/editor/ContactEditorFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$1;->val$rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/android/contacts/editor/Editor;)V
    .locals 0
    .parameter "removedEditor"

    .prologue
    .line 569
    return-void
.end method

.method public onRequest(I)V
    .locals 2
    .parameter "request"

    .prologue
    .line 562
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$1;->val$rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 565
    :cond_0
    return-void
.end method
