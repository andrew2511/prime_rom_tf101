.class Lcom/google/android/voicesearch/EditorDialog$3;
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
    .line 158
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorDialog$3;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog$3;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/EditorDialog;->access$300(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/EditorDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog$3;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/EditorDialog;->access$300(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/EditorDialog$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog$3;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/EditorDialog;->access$400(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/EditorDialog$Listener;->onCancel(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;)V

    .line 163
    :cond_0
    return-void
.end method
