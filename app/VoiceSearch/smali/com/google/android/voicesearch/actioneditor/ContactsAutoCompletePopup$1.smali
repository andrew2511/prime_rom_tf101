.class Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;
.super Landroid/database/DataSetObserver;
.source "ContactsAutoCompletePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actioneditor/PopupManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$000(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->getCount()I

    move-result v0

    .line 62
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$100(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$200(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$200(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;->popupWillShow(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$400(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-static {v2}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$300(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopupWithoutSetup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->dismiss()V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->refreshLayout()V

    goto :goto_0
.end method
