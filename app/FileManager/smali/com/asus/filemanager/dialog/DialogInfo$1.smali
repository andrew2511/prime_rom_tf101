.class Lcom/asus/filemanager/dialog/DialogInfo$1;
.super Landroid/os/Handler;
.source "DialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/dialog/DialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/dialog/DialogInfo;


# direct methods
.method constructor <init>(Lcom/asus/filemanager/dialog/DialogInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogInfo$1;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 181
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;

    .line 184
    .local v0, fileInfo:Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo$1;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-static {v1}, Lcom/asus/filemanager/dialog/DialogInfo;->access$400(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;->mSize:Ljava/math/BigDecimal;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/asus/filemanager/dialog/DialogInfo;->BigDecimal2String(Ljava/math/BigDecimal;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo$1;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-static {v1}, Lcom/asus/filemanager/dialog/DialogInfo;->access$500(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/widget/TextView;

    move-result-object v1

    iget-wide v2, v0, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;->mNum:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo$1;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-static {v1}, Lcom/asus/filemanager/dialog/DialogInfo;->access$600(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 189
    .end local v0           #fileInfo:Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;
    :pswitch_1
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo$1;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-static {v1}, Lcom/asus/filemanager/dialog/DialogInfo;->access$700(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/widget/ProgressBar;

    move-result-object v1

    new-instance v2, Lcom/asus/filemanager/dialog/DialogInfo$1$1;

    invoke-direct {v2, p0}, Lcom/asus/filemanager/dialog/DialogInfo$1$1;-><init>(Lcom/asus/filemanager/dialog/DialogInfo$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
