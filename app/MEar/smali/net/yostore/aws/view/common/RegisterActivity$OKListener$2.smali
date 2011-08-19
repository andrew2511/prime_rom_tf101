.class Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;
.super Ljava/lang/Thread;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    .line 127
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 131
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$5(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$9(Lnet/yostore/aws/view/common/RegisterActivity;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$6(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$10(Lnet/yostore/aws/view/common/RegisterActivity;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$4(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, email:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$11(Lnet/yostore/aws/view/common/RegisterActivity;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, language:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v7

    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v2}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v2

    invoke-static {v2}, Lnet/yostore/aws/view/common/RegisterActivity;->access$1(Lnet/yostore/aws/view/common/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    iget-object v6, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v6}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v6

    invoke-static {v6}, Lnet/yostore/aws/view/common/RegisterActivity;->access$2(Lnet/yostore/aws/view/common/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lnet/yostore/aws/handler/RegisterHandler;->doRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    iput-object v0, v7, Lnet/yostore/aws/view/common/RegisterActivity;->registeras:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 137
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$12(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$13(Lnet/yostore/aws/view/common/RegisterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method
