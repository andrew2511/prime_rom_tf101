.class public Lcom/aws/mycloud/view/tutorial/Tutorial1;
.super Landroid/app/Activity;
.source "Tutorial1.java"


# instance fields
.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aws/mycloud/view/tutorial/Tutorial1;->ctx:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public gonext(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/aws/mycloud/view/tutorial/Tutorial2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/tutorial/Tutorial1;->startActivity(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0}, Lcom/aws/mycloud/view/tutorial/Tutorial1;->finish()V

    .line 35
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 28
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    iput-object p0, p0, Lcom/aws/mycloud/view/tutorial/Tutorial1;->ctx:Landroid/content/Context;

    .line 20
    const v0, 0x7f040047

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/tutorial/Tutorial1;->setTitle(I)V

    .line 21
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/tutorial/Tutorial1;->setContentView(I)V

    .line 23
    return-void
.end method
