.class Lcom/layar/UserLoginActivity$1;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserLoginActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserLoginActivity$1;->this$0:Lcom/layar/UserLoginActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, emailIntent:Landroid/content/Intent;
    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/layar/UserLoginActivity$1;->this$0:Lcom/layar/UserLoginActivity;

    invoke-virtual {v4}, Lcom/layar/UserLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/layar/UserLoginActivity$1;->this$0:Lcom/layar/UserLoginActivity;

    invoke-virtual {v2}, Lcom/layar/UserLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/layar/UserLoginActivity$1;->this$0:Lcom/layar/UserLoginActivity;

    iget-object v2, p0, Lcom/layar/UserLoginActivity$1;->this$0:Lcom/layar/UserLoginActivity;

    invoke-virtual {v2}, Lcom/layar/UserLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layar/UserLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
