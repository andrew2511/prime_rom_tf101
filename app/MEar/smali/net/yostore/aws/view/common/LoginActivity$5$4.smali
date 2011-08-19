.class Lnet/yostore/aws/view/common/LoginActivity$5$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/LoginActivity$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/common/LoginActivity$5;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/LoginActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/LoginActivity$5$4;->this$1:Lnet/yostore/aws/view/common/LoginActivity$5;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 214
    sget-object v0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->goHome(Landroid/content/Context;)V

    .line 215
    sget-object p0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 216
    return-void
.end method
