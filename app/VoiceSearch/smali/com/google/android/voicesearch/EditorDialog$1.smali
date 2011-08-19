.class Lcom/google/android/voicesearch/EditorDialog$1;
.super Ljava/lang/Object;
.source "EditorDialog.java"

# interfaces
.implements Lcom/google/android/voicesearch/EditorLayout$Listener;


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
    .line 125
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorDialog$1;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyKeyboardState(Z)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog$1;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/EditorDialog;->access$000(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->notifyKeyboardChangedState(Z)V

    .line 128
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog$1;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-static {v0, p1}, Lcom/google/android/voicesearch/EditorDialog;->access$102(Lcom/google/android/voicesearch/EditorDialog;Z)Z

    .line 129
    return-void
.end method

.method public notifyLayoutChanged()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog$1;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/EditorDialog;->access$200(Lcom/google/android/voicesearch/EditorDialog;)V

    .line 132
    return-void
.end method
