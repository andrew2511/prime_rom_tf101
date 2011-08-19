.class Lcom/asus/reader/book/DrmNotificationDialogActivity$1;
.super Landroid/os/Handler;
.source "DrmNotificationDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/DrmNotificationDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/DrmNotificationDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$1;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 57
    iget-object v0, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$1;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    invoke-virtual {v0}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->finish()V

    .line 60
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$1;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->showDialog(I)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$1;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    invoke-virtual {v0}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->finish()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
