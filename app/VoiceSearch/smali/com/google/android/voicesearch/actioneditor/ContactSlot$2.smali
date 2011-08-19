.class Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;
.super Ljava/lang/Object;
.source "ContactSlot.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/ContactSlot;->startAutoCompleting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popupWillShow(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)V
    .locals 2
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->access$000(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V

    .line 394
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionEnd()I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-static {v1, v0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->access$100(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->moveCompleting(Landroid/graphics/Point;)V

    .line 398
    return-void
.end method
