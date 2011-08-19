.class public Lcom/aws/mycloud/view/tutorial/Tutorial2;
.super Landroid/app/Activity;
.source "Tutorial2.java"


# instance fields
.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aws/mycloud/view/tutorial/Tutorial2;->ctx:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public goback(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/aws/mycloud/view/tutorial/Tutorial1;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/tutorial/Tutorial2;->startActivity(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lcom/aws/mycloud/view/tutorial/Tutorial2;->finish()V

    .line 52
    return-void
.end method

.method public gonext(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/tutorial/Tutorial2;->startActivity(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/aws/mycloud/view/tutorial/Tutorial2;->finish()V

    .line 45
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iput-object p0, p0, Lcom/aws/mycloud/view/tutorial/Tutorial2;->ctx:Landroid/content/Context;

    .line 25
    const v1, 0x7f04004f

    invoke-virtual {p0, v1}, Lcom/aws/mycloud/view/tutorial/Tutorial2;->setTitle(I)V

    .line 26
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/aws/mycloud/view/tutorial/Tutorial2;->setContentView(I)V

    .line 28
    const v1, 0x7f060017

    invoke-virtual {p0, v1}, Lcom/aws/mycloud/view/tutorial/Tutorial2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/aws/mycloud/view/tutorial/Tutorial2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method
