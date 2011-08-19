.class Lcom/google/android/voicesearch/actioneditor/AccountsPopup$1;
.super Ljava/lang/Object;
.source "AccountsPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/AccountsPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/AccountsPopup;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/AccountsPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/AccountsPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/AccountsPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/AccountsPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/AccountsPopup;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->access$000(Lcom/google/android/voicesearch/actioneditor/AccountsPopup;)Lcom/google/android/voicesearch/actioneditor/AccountsPopup$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/AccountsPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/AccountsPopup;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->access$000(Lcom/google/android/voicesearch/actioneditor/AccountsPopup;)Lcom/google/android/voicesearch/actioneditor/AccountsPopup$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/AccountsPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/AccountsPopup;

    invoke-interface {v0, v1, p3}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup$Listener;->onItemSelected(Lcom/google/android/voicesearch/actioneditor/AccountsPopup;I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/AccountsPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/AccountsPopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->dismiss()V

    .line 73
    return-void
.end method
