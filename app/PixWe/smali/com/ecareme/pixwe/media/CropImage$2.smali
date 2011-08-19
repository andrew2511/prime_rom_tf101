.class Lcom/ecareme/pixwe/media/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/CropImage;->launchCropperOrFinish(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$contentUri:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;

.field private final synthetic val$item:Lcom/ecareme/pixwe/media/MediaItem;

.field private final synthetic val$myExtras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ecareme/pixwe/media/MediaItem;Landroid/app/ProgressDialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$contentUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iput-object p4, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p5, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$myExtras:Landroid/os/Bundle;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 6

    .prologue
    .line 132
    invoke-static {}, Lcom/ecareme/pixwe/media/CropImage;->access$7()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScannerConnection;

    .line 133
    .local v0, connection:Landroid/media/MediaScannerConnection;
    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    iget-object v3, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$contentUri:Ljava/lang/String;

    .line 136
    sget-object v5, Lcom/ecareme/pixwe/media/LocalDataSource;->DOWNLOAD_BUCKET_NAME:Ljava/lang/String;

    .line 135
    invoke-static {v3, v4, v5}, Lcom/ecareme/pixwe/media/UriTexture;->writeHttpDataInDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 138
    iget-object v3, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 140
    .restart local v2       #path:Ljava/lang/String;
    :cond_1
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/media/CropImage$2;->shutdown(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v2           #path:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 143
    .local v1, e:Ljava/lang/Exception;
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/media/CropImage$2;->shutdown(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/CropImage$2;->shutdown(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public shutdown(Ljava/lang/String;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 154
    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$myExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ecareme/pixwe/media/CropImage;->access$8(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/ecareme/pixwe/media/CropImage;->access$7()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScannerConnection;

    .line 156
    .local v0, connection:Landroid/media/MediaScannerConnection;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 158
    invoke-static {}, Lcom/ecareme/pixwe/media/CropImage;->access$7()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/CropImage$2;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    return-void
.end method
