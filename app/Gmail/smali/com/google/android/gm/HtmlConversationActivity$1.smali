.class Lcom/google/android/gm/HtmlConversationActivity$1;
.super Landroid/os/Handler;
.source "HtmlConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationActivity$1;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 137
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 159
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 139
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    .local v0, url:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 145
    :sswitch_0
    const/high16 v1, -0x8000

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationActivity$1;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationActivity;->access$000(Lcom/google/android/gm/HtmlConversationActivity;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 146
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity$1;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationActivity;->access$100(Lcom/google/android/gm/HtmlConversationActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity$1;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationActivity;->access$000(Lcom/google/android/gm/HtmlConversationActivity;)I

    move-result v1

    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 153
    :sswitch_1
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity$1;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v0}, Lcom/google/android/gm/HtmlConversationActivity;->access$200(Lcom/google/android/gm/HtmlConversationActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 143
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x7f0e00be -> :sswitch_1
        0x7f0e00bf -> :sswitch_1
    .end sparse-switch
.end method
