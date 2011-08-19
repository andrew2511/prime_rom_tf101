.class Lnet/yostore/aws/view/present/PlayerActivity$2$1;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/PlayerActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/present/PlayerActivity$2;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity$2$1;->this$1:Lnet/yostore/aws/view/present/PlayerActivity$2;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 248
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2$1;->this$1:Lnet/yostore/aws/view/present/PlayerActivity$2;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity$2;->access$0(Lnet/yostore/aws/view/present/PlayerActivity$2;)Lnet/yostore/aws/view/present/PlayerActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 249
    return-void
.end method
