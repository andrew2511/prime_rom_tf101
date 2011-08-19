.class Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;
.super Landroid/os/Handler;
.source "ExportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ExportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/ExportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/ExportVCardActivity;Lcom/android/contacts/vcard/ExportVCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;-><init>(Lcom/android/contacts/vcard/ExportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const v3, 0x7f0c00bd

    const v2, 0x7f070016

    .line 59
    const-string v0, "VCardExport"

    const-string v1, "IncomingHandler received message."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "VCardExport"

    const-string v1, "Message returned from vCard server contains error code."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$002(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V

    .line 96
    :goto_0
    return-void

    .line 70
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    const-string v0, "VCardExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 72
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 73
    const-string v0, "VCardExport"

    const-string v1, "Message returned from vCard server doesn\'t contain valid path"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-virtual {v1, v3}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$002(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-virtual {v0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$102(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$100(Lcom/android/contacts/vcard/ExportVCardActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    const-string v0, "VCardExport"

    const-string v1, "Destination file name coming from vCard service is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-virtual {v1, v3}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$002(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-virtual {v0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    .line 84
    :cond_3
    const-string v0, "VCardExport"

    const-string v1, "Target file name is set (%s). Show confirmation dialog"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-static {v4}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$100(Lcom/android/contacts/vcard/ExportVCardActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
