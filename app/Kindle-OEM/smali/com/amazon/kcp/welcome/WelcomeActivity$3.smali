.class Lcom/amazon/kcp/welcome/WelcomeActivity$3;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/welcome/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/welcome/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$3;->this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$3;->this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-static {v0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->access$200(Lcom/amazon/kcp/welcome/WelcomeActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$3;->this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-static {v0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->access$300(Lcom/amazon/kcp/welcome/WelcomeActivity;)V

    move v0, v1

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
