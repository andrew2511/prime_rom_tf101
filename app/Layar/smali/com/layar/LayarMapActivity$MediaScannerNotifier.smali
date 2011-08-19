.class public Lcom/layar/LayarMapActivity$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "LayarMapActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/LayarMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mDlg:Lcom/layar/ui/SmartDialog;

.field private mMimeType:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/LayarMapActivity;


# direct methods
.method public constructor <init>(Lcom/layar/LayarMapActivity;Lcom/layar/ui/SmartDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "dlg"
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->this$0:Lcom/layar/LayarMapActivity;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mDlg:Lcom/layar/ui/SmartDialog;

    .line 305
    iput-object p3, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mPath:Ljava/lang/String;

    .line 306
    iput-object p4, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mMimeType:Ljava/lang/String;

    .line 307
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 308
    iget-object v0, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 8
    .parameter "path"
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 318
    const-string v2, "layar.LayarMapActivity"

    const-string v3, "onScanCompleted(%s,%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v2, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mDlg:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v2}, Lcom/layar/ui/SmartDialog;->dismiss()V

    .line 322
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->this$0:Lcom/layar/LayarMapActivity;

    const-class v3, Lcom/layar/ScreenshotActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 324
    iget-object v2, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->this$0:Lcom/layar/LayarMapActivity;

    iget-object v2, v2, Lcom/layar/LayarMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v2, v2, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v2}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v1

    .line 325
    .local v1, layer:Lcom/layar/data/layer/Layer20;
    const-string v2, "layer"

    iget-object v3, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v2, "title"

    iget-object v3, v1, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v2, "layer"

    iget-object v3, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    iget-object v2, v1, Lcom/layar/data/layer/Layer20;->hostedShareUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 329
    const-string v2, "hosted:url"

    iget-object v3, v1, Lcom/layar/data/layer/Layer20;->hostedShareUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v2, "hosted:text"

    iget-object v3, v1, Lcom/layar/data/layer/Layer20;->hostedShareText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    :cond_0
    const-string v2, "path"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v2, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->this$0:Lcom/layar/LayarMapActivity;

    invoke-virtual {v2, v0}, Lcom/layar/LayarMapActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-object v2, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 336
    iput-object v7, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 337
    iput-object v7, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mDlg:Lcom/layar/ui/SmartDialog;

    .line 339
    return-void

    .line 334
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #layer:Lcom/layar/data/layer/Layer20;
    :catchall_0
    move-exception v2

    .line 335
    iget-object v3, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 336
    iput-object v7, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 337
    iput-object v7, p0, Lcom/layar/LayarMapActivity$MediaScannerNotifier;->mDlg:Lcom/layar/ui/SmartDialog;

    .line 338
    throw v2
.end method
