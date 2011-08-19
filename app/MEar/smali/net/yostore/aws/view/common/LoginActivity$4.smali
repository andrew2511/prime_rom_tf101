.class Lnet/yostore/aws/view/common/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/LoginActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/LoginActivity$4;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 134
    const-string v2, "https://www.asuswebstorage.com/member/forgetpass/"

    .line 135
    .local v2, urlStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lnet/yostore/aws/view/common/LoginActivity$4;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-virtual {v3, v0}, Lnet/yostore/aws/view/common/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method
