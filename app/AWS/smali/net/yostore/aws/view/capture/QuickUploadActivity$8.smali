.class Lnet/yostore/aws/view/capture/QuickUploadActivity$8;
.super Landroid/app/ProgressDialog;
.source "QuickUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/capture/QuickUploadActivity;->okClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$8;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    .line 417
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/capture/QuickUploadActivity$8;)Lnet/yostore/aws/view/capture/QuickUploadActivity;
    .locals 1
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$8;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    return-object v0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 426
    packed-switch p1, :pswitch_data_0

    .line 453
    invoke-super {p0, p1, p2}, Landroid/app/ProgressDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 429
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$8;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$8(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$8;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060041

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 432
    const v2, 0x7f06002a

    new-instance v3, Lnet/yostore/aws/view/capture/QuickUploadActivity$8$1;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$8$1;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity$8;)V

    .line 431
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 444
    const v2, 0x7f06002b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 445
    .local v0, show:Landroid/app/AlertDialog;
    const/4 v1, 0x0

    goto :goto_0

    .line 449
    .end local v0           #show:Landroid/app/AlertDialog;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ProgressDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
