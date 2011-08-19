.class Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;
.super Landroid/os/Handler;
.source "AWSBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v6, 0x7f06006d

    const v5, 0x7f060081

    const v4, 0x7f060062

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 79
    iget-object v6, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f06006b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$1;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$1;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$13(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Landroid/app/ProgressDialog;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_2

    .line 87
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 89
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$13(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 92
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_4

    .line 93
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 95
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$13(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Landroid/app/ProgressDialog;)V

    .line 97
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$2;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$2;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;)V

    .line 101
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 111
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x28

    if-ne v0, v2, :cond_6

    .line 112
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 114
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$13(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Landroid/app/ProgressDialog;)V

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lnet/yostore/aws/handler/LoginHandler;->doLogout(Landroid/content/Context;)Z

    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 120
    const v1, 0x7f060084

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$3;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$3;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;)V

    .line 122
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 132
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x32

    if-ne v0, v2, :cond_8

    .line 133
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 134
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 135
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$13(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Landroid/app/ProgressDialog;)V

    .line 137
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$4;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$4;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;)V

    .line 141
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 151
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_a

    .line 152
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 153
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 154
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$13(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Landroid/app/ProgressDialog;)V

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lnet/yostore/aws/handler/LoginHandler;->doLogout(Landroid/content/Context;)Z

    .line 158
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 160
    const v1, 0x7f060083

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 163
    new-instance v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$5;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2$5;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;)V

    .line 162
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 173
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x46

    if-ne v0, v2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 175
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 176
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$13(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Landroid/app/ProgressDialog;)V

    .line 178
    :cond_b
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->TOP:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$14(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;)V

    goto/16 :goto_0
.end method
