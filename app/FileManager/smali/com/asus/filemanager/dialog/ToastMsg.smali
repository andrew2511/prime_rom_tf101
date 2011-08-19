.class public Lcom/asus/filemanager/dialog/ToastMsg;
.super Ljava/lang/Object;
.source "ToastMsg.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 13
    sput-object p0, Lcom/asus/filemanager/dialog/ToastMsg;->mContext:Landroid/content/Context;

    .line 14
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/asus/filemanager/dialog/ToastMsg;->mToast:Landroid/widget/Toast;

    .line 15
    return-void
.end method

.method public static Show(II)V
    .locals 1
    .parameter "id"
    .parameter "dur"

    .prologue
    .line 18
    sget-object v0, Lcom/asus/filemanager/dialog/ToastMsg;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(I)V

    .line 19
    sget-object v0, Lcom/asus/filemanager/dialog/ToastMsg;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 20
    sget-object v0, Lcom/asus/filemanager/dialog/ToastMsg;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    return-void
.end method

.method public static varargs Show(II[Ljava/lang/Object;)V
    .locals 2
    .parameter "id"
    .parameter "dur"
    .parameter "formatArgs"

    .prologue
    .line 24
    sget-object v0, Lcom/asus/filemanager/dialog/ToastMsg;->mToast:Landroid/widget/Toast;

    sget-object v1, Lcom/asus/filemanager/dialog/ToastMsg;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 25
    sget-object v0, Lcom/asus/filemanager/dialog/ToastMsg;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 26
    sget-object v0, Lcom/asus/filemanager/dialog/ToastMsg;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 27
    return-void
.end method
