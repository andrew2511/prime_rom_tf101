.class Lcom/google/android/voicesearch/HelpDialog$3;
.super Ljava/lang/Object;
.source "HelpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/HelpDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$3;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$3;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$400(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/HelpDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$3;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$400(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/HelpDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/HelpDialog$Listener;->onCancel()V

    .line 187
    :cond_0
    return-void
.end method
