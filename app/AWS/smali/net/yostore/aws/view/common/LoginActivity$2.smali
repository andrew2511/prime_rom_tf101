.class Lnet/yostore/aws/view/common/LoginActivity$2;
.super Lnet/yostore/aws/ansytask/LoginTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/LoginActivity;->loginFunction(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/LoginActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/LoginActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/LoginActivity$2;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    .line 103
    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/ansytask/LoginTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected connectFail()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected loginFail()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method
