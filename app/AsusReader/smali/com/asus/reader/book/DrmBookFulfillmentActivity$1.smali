.class Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;
.super Landroid/os/Handler;
.source "DrmBookFulfillmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/DrmBookFulfillmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const v3, 0x7f07009c

    const/4 v1, 0x1

    .line 109
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$000(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 112
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$100(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$200(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$300(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$400(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$300(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$300(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const v2, 0x7f07009b

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$400(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V

    goto :goto_0

    .line 128
    :pswitch_4
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$500(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$300(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-virtual {v2, v3}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const v3, 0x7f0700a0

    invoke-virtual {v2, v3}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$300(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v1}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$600(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 139
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$300(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 140
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$400(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V

    goto/16 :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$300(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-virtual {v2, v3}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$500(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :pswitch_5
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$300(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const v3, 0x7f07009d

    invoke-virtual {v2, v3}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    iget-object v3, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v3}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$700(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/asus/reader/book/DrmProcessor;->getErrorId(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/asus/reader/book/DrmProcessor;->getErrorDesc(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 150
    :pswitch_6
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$300(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const v2, 0x7f07009e

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$300(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v1}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$600(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 157
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$802(Lcom/asus/reader/book/DrmBookFulfillmentActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 159
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$800(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const v2, 0x7f070098

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$800(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const v2, 0x7f07009f

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$800(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$1;

    invoke-direct {v2, p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$1;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$800(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$2;

    invoke-direct {v2, p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$2;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$800(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 198
    :pswitch_7
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-virtual {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->finish()V

    goto/16 :goto_0

    .line 201
    :pswitch_8
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$300(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    const v2, 0x7f0700e2

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method
