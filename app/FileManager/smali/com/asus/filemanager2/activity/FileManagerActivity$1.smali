.class Lcom/asus/filemanager2/activity/FileManagerActivity$1;
.super Landroid/os/Handler;
.source "FileManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager2/activity/FileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCountSize:J

.field private mPercent:I

.field private mTotalSize:J

.field final synthetic this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;


# direct methods
.method constructor <init>(Lcom/asus/filemanager2/activity/FileManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private SetProgress(I)V
    .locals 3
    .parameter "n"

    .prologue
    .line 152
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mPercent:I

    if-eq p1, v0, :cond_0

    .line 154
    iput p1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mPercent:I

    .line 155
    const-string v0, "FileManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mPercent:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 161
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 250
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local p0
    .restart local p1
    :sswitch_0
    const/4 v1, 0x1

    .line 164
    .local v1, forceUpdate:Z
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/asus/filemanager/adapter/ScanFile$Result;

    .line 165
    .local v5, result:Lcom/asus/filemanager/adapter/ScanFile$Result;
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v6}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$100(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/main/VFile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/asus/filemanager/adapter/ScanFile$Result;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v7}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    const/4 v1, 0x0

    .line 171
    :goto_1
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    iget-object v7, v5, Lcom/asus/filemanager/adapter/ScanFile$Result;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    invoke-static {v6, v7}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$302(Lcom/asus/filemanager2/activity/FileManagerActivity;[Lcom/asus/filemanager/main/VFile;)[Lcom/asus/filemanager/main/VFile;

    .line 172
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v6}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$400(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager2/adapter/FileListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v7}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$300(Lcom/asus/filemanager2/activity/FileManagerActivity;)[Lcom/asus/filemanager/main/VFile;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/asus/filemanager2/adapter/FileListAdapter;->updateAdapter([Lcom/asus/filemanager/main/VFile;Z)V

    .line 173
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v6}, Lcom/asus/filemanager2/activity/FileManagerActivity;->updateEditMode()V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    iget-object v7, v5, Lcom/asus/filemanager/adapter/ScanFile$Result;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    invoke-static {v6, v7}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$102(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager/main/VFile;)Lcom/asus/filemanager/main/VFile;

    .line 169
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    iget-object v7, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v7}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$100(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/main/VFile;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$200(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager/main/VFile;)V

    goto :goto_1

    .line 176
    .end local v1           #forceUpdate:Z
    .end local v5           #result:Lcom/asus/filemanager/adapter/ScanFile$Result;
    :sswitch_1
    const-string v6, "FileManagerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Msg.SCAN_PATH: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v6}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$100(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/main/VFile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    iget-object v7, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v7}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$100(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/main/VFile;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/asus/filemanager2/activity/FileManagerActivity;->StartScanFile(Lcom/asus/filemanager/main/VFile;I)V

    goto/16 :goto_0

    .line 180
    :cond_2
    const-string v6, "FileManagerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SCAN_PATH : not equals : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v8}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$100(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/main/VFile;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    :sswitch_2
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$500()Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 184
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$500()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 185
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$500()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/app/Activity;->removeDialog(I)V

    .line 192
    :cond_3
    :goto_2
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$502(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 194
    :cond_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/io/File;

    check-cast p1, [Ljava/io/File;

    invoke-static {v6, p1}, Lcom/asus/filemanager/dialog/DialogDelete;->ShowResult(I[Ljava/io/File;)V

    .line 195
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v6}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$600(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/edit/EditPool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/filemanager/edit/EditPool;->Clear()V

    .line 196
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v6}, Lcom/asus/filemanager2/activity/FileManagerActivity;->onDeselectAll()V

    goto/16 :goto_0

    .line 187
    .restart local p1
    :cond_5
    const-string v6, "FileManagerActivity"

    const-string v7, "force to close dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$500()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 189
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$500()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_2

    .line 199
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/asus/filemanager/main/FileInfo;

    .line 200
    .local v2, info:Lcom/asus/filemanager/main/FileInfo;
    iget-wide v6, v2, Lcom/asus/filemanager/main/FileInfo;->numSize:J

    iput-wide v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mTotalSize:J

    .line 201
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mCountSize:J

    .line 202
    const/4 v6, -0x1

    iput v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mPercent:I

    .line 203
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->SetProgress(I)V

    goto/16 :goto_0

    .line 206
    .end local v2           #info:Lcom/asus/filemanager/main/FileInfo;
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/asus/filemanager/edit/EditResult;

    .line 207
    .local v3, r:Lcom/asus/filemanager/edit/EditResult;
    iget-wide v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mCountSize:J

    iget-wide v8, v3, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mCountSize:J

    .line 208
    iget-wide v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mTotalSize:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    const/4 v6, 0x0

    :goto_3
    invoke-direct {p0, v6}, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->SetProgress(I)V

    goto/16 :goto_0

    :cond_6
    iget-wide v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mCountSize:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mTotalSize:J

    div-long/2addr v6, v8

    long-to-int v6, v6

    goto :goto_3

    .line 211
    .end local v3           #r:Lcom/asus/filemanager/edit/EditResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/asus/filemanager/edit/EditResult;

    .line 212
    .local v0, editResult:Lcom/asus/filemanager/edit/EditResult;
    iget-wide v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mTotalSize:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    const/4 v6, 0x0

    :goto_4
    invoke-direct {p0, v6}, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->SetProgress(I)V

    goto/16 :goto_0

    :cond_7
    iget-wide v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mCountSize:J

    iget-wide v8, v0, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->mTotalSize:J

    div-long/2addr v6, v8

    long-to-int v6, v6

    goto :goto_4

    .line 215
    .end local v0           #editResult:Lcom/asus/filemanager/edit/EditResult;
    :sswitch_6
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$000()Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$000()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 216
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$000()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/filemanager2/activity/FileManagerActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Lcom/asus/filemanager/edit/ExistPair;

    invoke-static {p0, p1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$702(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager/edit/ExistPair;)Lcom/asus/filemanager/edit/ExistPair;

    .line 217
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$000()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 219
    .restart local p0
    .restart local p1
    :cond_8
    const-string v6, "FileManagerActivity"

    const-string v7, "force unlock mutex"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/asus/filemanager/main/Mutex;->Unlock()V

    goto/16 :goto_0

    .line 224
    :sswitch_7
    const-string v6, "FileManagerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Msg.COPY_END: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$000()Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 226
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$000()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 227
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$000()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/app/Activity;->removeDialog(I)V

    .line 234
    :cond_9
    :goto_5
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$002(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 237
    :cond_a
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/asus/filemanager/edit/EditorAsyncHelper;->ShowCopyFileResult(ILjava/lang/String;)V

    .line 238
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v6}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$600(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/edit/EditPool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/filemanager/edit/EditPool;->Clear()V

    goto/16 :goto_0

    .line 229
    .restart local p1
    :cond_b
    const-string v6, "FileManagerActivity"

    const-string v7, "force to close dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$000()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 231
    invoke-static {}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$000()Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_5

    .line 242
    :sswitch_8
    const-string v6, "FileManagerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Msg.STORAGE_REMOVE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 244
    .local v4, removed:Ljava/lang/String;
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v6}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$100(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/main/VFile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    const-string v7, "/sdcard"

    invoke-static {v6, v7}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$800(Lcom/asus/filemanager2/activity/FileManagerActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x13ee -> :sswitch_2
        0x1450 -> :sswitch_3
        0x1451 -> :sswitch_4
        0x1452 -> :sswitch_5
        0x1453 -> :sswitch_6
        0x1454 -> :sswitch_7
        0x15e0 -> :sswitch_8
        0x1645 -> :sswitch_1
        0x1646 -> :sswitch_0
    .end sparse-switch
.end method
