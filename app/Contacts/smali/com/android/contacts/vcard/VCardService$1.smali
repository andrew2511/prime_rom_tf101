.class Lcom/android/contacts/vcard/VCardService$1;
.super Landroid/os/Handler;
.source "VCardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/VCardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/VCardService;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/VCardService;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/contacts/vcard/VCardService$1;->this$0:Lcom/android/contacts/vcard/VCardService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    const-string v0, "VCardService"

    const-string v1, "Received unknown request, ignoring it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-super {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 105
    .end local p0
    :goto_0
    return-void

    .line 84
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService$1;->this$0:Lcom/android/contacts/vcard/VCardService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/contacts/vcard/ImportRequest;

    invoke-static {v0, p0}, Lcom/android/contacts/vcard/VCardService;->access$000(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ImportRequest;)V

    goto :goto_0

    .line 88
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService$1;->this$0:Lcom/android/contacts/vcard/VCardService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/contacts/vcard/ExportRequest;

    invoke-static {v0, p0}, Lcom/android/contacts/vcard/VCardService;->access$100(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ExportRequest;)V

    goto :goto_0

    .line 92
    .restart local p0
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService$1;->this$0:Lcom/android/contacts/vcard/VCardService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/contacts/vcard/CancelRequest;

    invoke-static {v0, p0}, Lcom/android/contacts/vcard/VCardService;->access$200(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/CancelRequest;)V

    goto :goto_0

    .line 96
    .restart local p0
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService$1;->this$0:Lcom/android/contacts/vcard/VCardService;

    invoke-static {v0, p1}, Lcom/android/contacts/vcard/VCardService;->access$300(Lcom/android/contacts/vcard/VCardService;Landroid/os/Message;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
