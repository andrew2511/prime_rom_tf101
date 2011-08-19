.class Lcom/splashtop/remote/ServiceActivity$2;
.super Ljava/lang/Object;
.source "ServiceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/ServiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/ServiceActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/ServiceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/splashtop/remote/ServiceActivity$2;->this$0:Lcom/splashtop/remote/ServiceActivity;

    iput-object p2, p0, Lcom/splashtop/remote/ServiceActivity$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 32
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/splashtop/remote/ServiceActivity$2;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .local v1, marketIntent:Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/splashtop/remote/ServiceActivity$2;->this$0:Lcom/splashtop/remote/ServiceActivity;

    invoke-virtual {v3, v1}, Lcom/splashtop/remote/ServiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 35
    iget-object v3, p0, Lcom/splashtop/remote/ServiceActivity$2;->this$0:Lcom/splashtop/remote/ServiceActivity;

    invoke-virtual {v3}, Lcom/splashtop/remote/ServiceActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 38
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://market.android.com/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/splashtop/remote/ServiceActivity$2;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    .end local v1           #marketIntent:Landroid/content/Intent;
    .local v2, marketIntent:Landroid/content/Intent;
    :try_start_2
    iget-object v3, p0, Lcom/splashtop/remote/ServiceActivity$2;->this$0:Lcom/splashtop/remote/ServiceActivity;

    invoke-virtual {v3, v2}, Lcom/splashtop/remote/ServiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    iget-object v3, p0, Lcom/splashtop/remote/ServiceActivity$2;->this$0:Lcom/splashtop/remote/ServiceActivity;

    invoke-virtual {v3}, Lcom/splashtop/remote/ServiceActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 42
    .end local v2           #marketIntent:Landroid/content/Intent;
    .restart local v1       #marketIntent:Landroid/content/Intent;
    goto :goto_0

    .line 41
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v1           #marketIntent:Landroid/content/Intent;
    .restart local v2       #marketIntent:Landroid/content/Intent;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2           #marketIntent:Landroid/content/Intent;
    .restart local v1       #marketIntent:Landroid/content/Intent;
    goto :goto_0
.end method
