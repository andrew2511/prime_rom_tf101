.class Lcom/ecareme/pixwe/media/HudLayer$44$2;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer$44;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/media/HudLayer$44;

.field private final synthetic val$editComment:Landroid/widget/EditText;

.field private final synthetic val$item:Lcom/ecareme/pixwe/media/MediaItem;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer$44;Lcom/ecareme/pixwe/media/MediaItem;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$44;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iput-object p3, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$editComment:Landroid/widget/EditText;

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 921
    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$editComment:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/ecareme/pixwe/media/MediaItem;->mDescription:Ljava/lang/String;

    .line 922
    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$44;

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer$44;->access$0(Lcom/ecareme/pixwe/media/HudLayer$44;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v4

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.ecareme.contentprovider.pixwe"

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 924
    .local v2, mProviderClient:Landroid/content/ContentProviderClient;
    :try_start_0
    sget-object v4, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUM_MEDIAS_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v5, v5, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-wide v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 925
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 926
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "file_id"

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-wide v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 927
    const-string v4, "album_folder"

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v5, v5, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 928
    const-string v4, "file_name"

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mCaption:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v4, "file_type"

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v4, "rotate"

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 931
    const-string v4, "file_modify_time"

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-wide v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 932
    const-string v4, "transcode_status"

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mVideoTranscodeState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 933
    const-string v4, "upload_status"

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mUploadState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 934
    const-string v4, "username"

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string v4, "note"

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 938
    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$44;

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer$44;->access$0(Lcom/ecareme/pixwe/media/HudLayer$44;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v4

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v5, v5, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v5, v5, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-static {v4, v5, v6}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer$44$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$44;

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer$44;->access$0(Lcom/ecareme/pixwe/media/HudLayer$44;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v4

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    .line 944
    return-void

    .line 939
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 941
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
