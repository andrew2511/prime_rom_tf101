.class Lnet/yostore/aws/view/common/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/RegisterActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/RegisterActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterActivity$2;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v0, intent:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 152
    :goto_0
    :pswitch_0
    return-void

    .line 149
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$2;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goLogin(Landroid/content/Context;)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
