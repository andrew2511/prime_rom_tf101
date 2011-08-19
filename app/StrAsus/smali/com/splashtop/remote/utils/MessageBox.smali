.class public Lcom/splashtop/remote/utils/MessageBox;
.super Ljava/lang/Object;
.source "MessageBox.java"


# static fields
.field static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/splashtop/remote/utils/MessageBox;->toast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dialogShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 21
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000a

    new-instance v2, Lcom/splashtop/remote/utils/MessageBox$1;

    invoke-direct {v2}, Lcom/splashtop/remote/utils/MessageBox$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 31
    return-void
.end method

.method public static show(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 45
    :pswitch_0
    const-string v0, "Error"

    invoke-static {p1, v0, p2}, Lcom/splashtop/remote/utils/MessageBox;->dialogShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-static {p1, p2}, Lcom/splashtop/remote/utils/MessageBox;->toastShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static toastShow(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 34
    sget-object v0, Lcom/splashtop/remote/utils/MessageBox;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/splashtop/remote/utils/MessageBox;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/splashtop/remote/utils/MessageBox;->toast:Landroid/widget/Toast;

    .line 38
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/splashtop/remote/utils/MessageBox;->toast:Landroid/widget/Toast;

    .line 39
    sget-object v0, Lcom/splashtop/remote/utils/MessageBox;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    return-void
.end method
