.class Lcom/android/contacts/editor/LabeledEditorView$2$1;
.super Ljava/lang/Object;
.source "LabeledEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/LabeledEditorView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/LabeledEditorView$2;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$000(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    .line 295
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v2, v2, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 297
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v2, v2, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-interface {v1, v2}, Lcom/android/contacts/editor/Editor$EditorListener;->onDeleted(Lcom/android/contacts/editor/Editor;)V

    .line 301
    :cond_1
    return-void

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$200(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, accountType:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$000(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 266
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$000(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 269
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "data4"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$000(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 273
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$000(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 276
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :cond_6
    const-string v1, "com.android.exchange"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 279
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$000(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 281
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :cond_7
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$000(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :cond_8
    const-string v1, "com.asus.pcsync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$000(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
