.class Lcom/google/android/voicesearch/EditorDialog$2;
.super Ljava/lang/Object;
.source "EditorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/EditorDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/EditorDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/EditorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorDialog$2;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog$2;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/EditorDialog;->access$000(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->validateSlots()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog$2;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09077e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog$2;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/EditorDialog;->access$300(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/EditorDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog$2;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/EditorDialog;->access$300(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/EditorDialog$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog$2;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/EditorDialog;->access$400(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/EditorDialog$Listener;->onGo(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;)V

    goto :goto_0
.end method
