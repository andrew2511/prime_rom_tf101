.class Lcom/google/android/voicesearch/RecognitionDialog$3;
.super Ljava/lang/Object;
.source "RecognitionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/RecognitionDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/RecognitionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionDialog$3;->this$0:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog$3;->this$0:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionDialog;->access$000(Lcom/google/android/voicesearch/RecognitionDialog;)Lcom/google/android/voicesearch/RecognitionDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog$3;->this$0:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionDialog;->access$000(Lcom/google/android/voicesearch/RecognitionDialog;)Lcom/google/android/voicesearch/RecognitionDialog$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionDialog$3;->this$0:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionDialog;->access$100(Lcom/google/android/voicesearch/RecognitionDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/RecognitionDialog$Listener;->onHelp(Z)V

    .line 109
    :cond_0
    return-void

    .line 107
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
