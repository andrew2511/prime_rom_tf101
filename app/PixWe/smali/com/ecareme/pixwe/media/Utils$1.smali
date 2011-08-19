.class Lcom/ecareme/pixwe/media/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/Utils;->playVideo(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$item:Lcom/ecareme/pixwe/media/MediaItem;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/MediaItem;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/Utils$1;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/Utils$1;->val$context:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 52
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/ecareme/pixwe/media/Utils$1;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Utils$1;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v2, v2, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/ecareme/pixwe/media/Utils$1;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Utils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 56
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Utils$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/Utils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
