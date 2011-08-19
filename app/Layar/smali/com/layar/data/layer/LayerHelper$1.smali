.class Lcom/layar/data/layer/LayerHelper$1;
.super Ljava/lang/Object;
.source "LayerHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/layer/LayerHelper;->checkStatus(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$layer:Lcom/layar/data/layer/Layer20;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/layer/LayerHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/layar/data/layer/LayerHelper$1;->val$layer:Lcom/layar/data/layer/Layer20;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 103
    iget-object v2, p0, Lcom/layar/data/layer/LayerHelper$1;->val$context:Landroid/content/Context;

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, message:Ljava/lang/String;
    const-string v2, "%layername%"

    iget-object v3, p0, Lcom/layar/data/layer/LayerHelper$1;->val$layer:Lcom/layar/data/layer/Layer20;

    iget-object v3, v3, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, i:Landroid/content/Intent;
    const-string v2, "message/rfc822"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/layar/data/layer/LayerHelper$1;->val$layer:Lcom/layar/data/layer/Layer20;

    iget-object v5, v5, Lcom/layar/data/layer/Layer20;->publisherEmail:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v2, p0, Lcom/layar/data/layer/LayerHelper$1;->val$context:Landroid/content/Context;

    const-string v3, "Select email application."

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method
