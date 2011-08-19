.class Lcom/layar/TermsActivity$2;
.super Ljava/lang/Object;
.source "TermsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/TermsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/TermsActivity;


# direct methods
.method constructor <init>(Lcom/layar/TermsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/TermsActivity$2;->this$0:Lcom/layar/TermsActivity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/layar/TermsActivity$2;->this$0:Lcom/layar/TermsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/layar/TermsActivity;->setTermsAccepted(Z)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/layar/TermsActivity$2;->this$0:Lcom/layar/TermsActivity;

    const-class v2, Lcom/layar/Main;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/layar/TermsActivity$2;->this$0:Lcom/layar/TermsActivity;

    invoke-virtual {v1}, Lcom/layar/TermsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/layar/TermsActivity$2;->this$0:Lcom/layar/TermsActivity;

    invoke-virtual {v1, v0}, Lcom/layar/TermsActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    iget-object v1, p0, Lcom/layar/TermsActivity$2;->this$0:Lcom/layar/TermsActivity;

    invoke-virtual {v1}, Lcom/layar/TermsActivity;->finish()V

    .line 61
    return-void
.end method
