.class Lcom/layar/Layar3DActivity$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "Layar3DActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/Layar3DActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mDlg:Lcom/layar/ui/SmartDialog;

.field private mMimeType:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/Layar3DActivity;


# direct methods
.method public constructor <init>(Lcom/layar/Layar3DActivity;Lcom/layar/ui/SmartDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "dlg"
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->this$0:Lcom/layar/Layar3DActivity;

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    iput-object p2, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mDlg:Lcom/layar/ui/SmartDialog;

    .line 1119
    iput-object p3, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mPath:Ljava/lang/String;

    .line 1120
    iput-object p4, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mMimeType:Ljava/lang/String;

    .line 1121
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 1122
    iget-object v0, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 9
    .parameter "path"
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 1132
    const-string v3, "layar.Layar3DActivity"

    const-string v4, "onScanCompleted(%s,%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v3, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mDlg:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v3}, Lcom/layar/ui/SmartDialog;->dismiss()V

    .line 1136
    :try_start_0
    iget-object v3, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->this$0:Lcom/layar/Layar3DActivity;

    iget-boolean v3, v3, Lcom/layar/Layar3DActivity;->running:Z

    if-eqz v3, :cond_1

    .line 1137
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->this$0:Lcom/layar/Layar3DActivity;

    const-class v4, Lcom/layar/ScreenshotActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1138
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1139
    iget-object v3, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->this$0:Lcom/layar/Layar3DActivity;

    instance-of v3, v3, Lcom/layar/OneLayer3DActivity;

    if-eqz v3, :cond_0

    .line 1141
    iget-object v3, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->this$0:Lcom/layar/Layar3DActivity;

    check-cast v3, Lcom/layar/OneLayer3DActivity;

    iget-object v2, v3, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 1142
    .local v2, layerHandler:Lcom/layar/data/layer/LayerHandler;
    invoke-virtual {v2}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v1

    .line 1143
    .local v1, layer:Lcom/layar/data/layer/Layer20;
    const-string v3, "layer"

    iget-object v4, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1144
    const-string v3, "title"

    iget-object v4, v1, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    const-string v3, "layer"

    iget-object v4, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    iget-object v3, v1, Lcom/layar/data/layer/Layer20;->hostedShareUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1147
    const-string v3, "hosted:url"

    iget-object v4, v1, Lcom/layar/data/layer/Layer20;->hostedShareUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    const-string v3, "hosted:text"

    iget-object v4, v1, Lcom/layar/data/layer/Layer20;->hostedShareText:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    .end local v1           #layer:Lcom/layar/data/layer/Layer20;
    .end local v2           #layerHandler:Lcom/layar/data/layer/LayerHandler;
    :cond_0
    const-string v3, "path"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    iget-object v3, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->this$0:Lcom/layar/Layar3DActivity;

    invoke-virtual {v3, v0}, Lcom/layar/Layar3DActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1156
    iput-object v8, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 1157
    iput-object v8, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mDlg:Lcom/layar/ui/SmartDialog;

    .line 1159
    return-void

    .line 1154
    :catchall_0
    move-exception v3

    .line 1155
    iget-object v4, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v4}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1156
    iput-object v8, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 1157
    iput-object v8, p0, Lcom/layar/Layar3DActivity$MediaScannerNotifier;->mDlg:Lcom/layar/ui/SmartDialog;

    .line 1158
    throw v3
.end method
