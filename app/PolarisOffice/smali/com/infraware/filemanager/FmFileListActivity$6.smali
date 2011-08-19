.class Lcom/infraware/filemanager/FmFileListActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "FmFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/FmFileListActivity;->registerExternalStorageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmFileListActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmFileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileListActivity$6;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    .line 849
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    .line 853
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 854
    .local v2, strAction:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 855
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 857
    .local v4, strPath:Ljava/lang/String;
    const-string v6, "/data"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 858
    const-string v6, "/data"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 859
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_1

    .line 860
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 862
    :cond_1
    const-string v6, "android.intent.action.EPAD_EXTERNAL_MEDIA_MOUNTED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 865
    invoke-static {v4}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getExternalStorageIndexByPath(Ljava/lang/String;)I

    move-result v1

    .line 867
    .local v1, nStorageIndex:I
    if-eq v1, v8, :cond_2

    .line 869
    iget-object v6, p0, Lcom/infraware/filemanager/FmFileListActivity$6;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    iget-object v6, v6, Lcom/infraware/filemanager/FmFileListActivity;->m_oContext:Landroid/app/Activity;

    invoke-static {v6, v1}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getExternalStorageString(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v3

    .line 871
    .local v3, strExternalStorage:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getEnableExternalStorageList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_3

    .line 879
    :goto_1
    invoke-static {}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getEnableExternalStorageList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    .end local v0           #i:I
    .end local v1           #nStorageIndex:I
    .end local v3           #strExternalStorage:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 873
    .restart local v0       #i:I
    .restart local v1       #nStorageIndex:I
    .restart local v3       #strExternalStorage:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getEnableExternalStorageList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 875
    invoke-static {}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getEnableExternalStorageList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 871
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 882
    .end local v0           #i:I
    .end local v1           #nStorageIndex:I
    .end local v3           #strExternalStorage:Ljava/lang/String;
    :cond_5
    const-string v6, "android.intent.action.EPAD_EXTERNAL_MEDIA_UNMOUNTED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 884
    invoke-static {v4}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getExternalStorageIndexByPath(Ljava/lang/String;)I

    move-result v1

    .line 886
    .restart local v1       #nStorageIndex:I
    if-eq v1, v8, :cond_2

    .line 888
    iget-object v6, p0, Lcom/infraware/filemanager/FmFileListActivity$6;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    iget-object v6, v6, Lcom/infraware/filemanager/FmFileListActivity;->m_oContext:Landroid/app/Activity;

    invoke-static {v6, v1}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getExternalStorageString(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v3

    .line 890
    .restart local v3       #strExternalStorage:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    invoke-static {}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getEnableExternalStorageList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_6

    .line 899
    :goto_4
    iget-object v6, p0, Lcom/infraware/filemanager/FmFileListActivity$6;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-static {v6}, Lcom/infraware/filemanager/FmFileListActivity;->access$1(Lcom/infraware/filemanager/FmFileListActivity;)Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 900
    iget-object v6, p0, Lcom/infraware/filemanager/FmFileListActivity$6;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-static {v6}, Lcom/infraware/filemanager/FmFileListActivity;->access$1(Lcom/infraware/filemanager/FmFileListActivity;)Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->NotifyExternalStorageUnMount(I)V

    goto :goto_2

    .line 892
    :cond_6
    invoke-static {}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getEnableExternalStorageList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 894
    invoke-static {}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getEnableExternalStorageList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 890
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
