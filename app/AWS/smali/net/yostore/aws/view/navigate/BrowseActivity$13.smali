.class Lnet/yostore/aws/view/navigate/BrowseActivity$13;
.super Ljava/lang/Object;
.source "BrowseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/BrowseActivity;->showCreateNewItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/BrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/navigate/BrowseActivity$13;)Lnet/yostore/aws/view/navigate/BrowseActivity;
    .locals 1
    .parameter

    .prologue
    .line 856
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 861
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->uploadFolder:J

    .line 862
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$7(Lnet/yostore/aws/view/navigate/BrowseActivity;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$0(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/vo/BrowseVo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseFolderId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "system."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$1(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".home.root"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->uploadFolder:J

    .line 871
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 962
    :goto_1
    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$0(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/vo/BrowseVo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->uploadFolder:J

    goto :goto_0

    .line 874
    :pswitch_0
    const-string v0, "BrowseActivity"

    const-string v1, "Camera is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-static {}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getCamRoot()Ljava/lang/String;

    move-result-object v7

    .line 877
    .local v7, CAMERA_ROOT:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 879
    sget-object v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f0600d7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 883
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 884
    .local v8, cr:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 887
    .local v9, fn:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    .local v10, intent:Landroid/content/Intent;
    new-instance v11, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    .local v11, newFile:Ljava/io/File;
    const-string v0, "output"

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 892
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$7(Lnet/yostore/aws/view/navigate/BrowseActivity;Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 904
    .end local v7           #CAMERA_ROOT:Ljava/lang/String;
    .end local v8           #cr:Ljava/io/File;
    .end local v9           #fn:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #newFile:Ljava/io/File;
    :pswitch_1
    const-string v0, "BrowseActivity"

    const-string v1, "Camcord is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    .restart local v10       #intent:Landroid/content/Intent;
    const-string v0, "uploadFolder"

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    iget-wide v1, v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->uploadFolder:J

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 907
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 911
    .end local v10           #intent:Landroid/content/Intent;
    :pswitch_2
    const-string v0, "BrowseActivity"

    const-string v1, "Audio is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-static {}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getAdoRoot()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 914
    sget-object v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f0600d7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 918
    :cond_2
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 919
    .restart local v10       #intent:Landroid/content/Intent;
    sget-object v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const-class v1, Lnet/yostore/aws/view/capture/AudioActivity;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 920
    const-string v0, "uploadFolder"

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    iget-wide v1, v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->uploadFolder:J

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 921
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v10, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 925
    .end local v10           #intent:Landroid/content/Intent;
    :pswitch_3
    const-string v0, "BrowseActivity"

    const-string v1, "Note is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-static {}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getNotRoot()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 928
    sget-object v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f0600d7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 932
    :cond_3
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 933
    .restart local v10       #intent:Landroid/content/Intent;
    sget-object v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const-class v1, Lnet/yostore/aws/view/capture/NoteActivity;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 934
    const-string v0, "uploadFolder"

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    iget-wide v1, v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->uploadFolder:J

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 935
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v10, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 939
    .end local v10           #intent:Landroid/content/Intent;
    :pswitch_4
    const-string v0, "BrowseActivity"

    const-string v1, "File is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-static {}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getFilRoot()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 942
    sget-object v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f0600d7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 947
    :cond_4
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseActivity$13$1;

    sget-object v2, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$1(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v4

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    iget-wide v5, v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->uploadFolder:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/view/navigate/BrowseActivity$13$1;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity$13;Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 871
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
