.class public Lcom/aws/mycloud/view/tutorial/Tutorial3;
.super Landroid/app/Activity;
.source "Tutorial3.java"


# static fields
.field private static final LOGIN:I = 0x1

.field private static final REGISTER:I = 0x2


# instance fields
.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aws/mycloud/view/tutorial/Tutorial3;->ctx:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public goback(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/aws/mycloud/view/tutorial/Tutorial2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/tutorial/Tutorial3;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/aws/mycloud/view/tutorial/Tutorial3;->finish()V

    .line 88
    return-void
.end method

.method public gologin(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/aws/account/view/LoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/aws/mycloud/view/tutorial/Tutorial3;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    return-void
.end method

.method public goregist(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/aws/account/view/RegisterActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/aws/mycloud/view/tutorial/Tutorial3;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 45
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 46
    invoke-static {}, Lcom/aws/mycloud/helper/FolderRootsConfig;->reset()V

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/tutorial/Tutorial3;->startActivity(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/aws/mycloud/view/tutorial/Tutorial3;->finish()V

    .line 64
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 38
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    iput-object p0, p0, Lcom/aws/mycloud/view/tutorial/Tutorial3;->ctx:Landroid/content/Context;

    .line 26
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/aws/mycloud/view/tutorial/Tutorial3;->setContentView(I)V

    .line 27
    const v1, 0x7f040053

    invoke-virtual {p0, v1}, Lcom/aws/mycloud/view/tutorial/Tutorial3;->setTitle(I)V

    .line 29
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/aws/mycloud/view/tutorial/Tutorial3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/aws/mycloud/view/tutorial/Tutorial3;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method
