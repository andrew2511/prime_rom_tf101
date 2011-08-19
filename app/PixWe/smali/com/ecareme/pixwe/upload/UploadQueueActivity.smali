.class public Lcom/ecareme/pixwe/upload/UploadQueueActivity;
.super Landroid/app/Activity;
.source "UploadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/upload/UploadQueueActivity$UploadBroadcastRecv;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadQueueActivity"


# instance fields
.field adapter:Lcom/ecareme/pixwe/upload/LazyAdapter;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field list:Landroid/widget/ListView;

.field private taggle:Landroid/widget/Button;

.field private ulBrocastRecv:Lcom/ecareme/pixwe/upload/UploadQueueActivity$UploadBroadcastRecv;

.field private ulFilter:Landroid/content/IntentFilter;

.field userUploadQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 36
    iput-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->taggle:Landroid/widget/Button;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->userUploadQueue:Ljava/util/List;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/upload/UploadQueueActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->getPlayListDispInQueue()V

    return-void
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/upload/UploadQueueActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private getPlayListDispInQueue()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->getUploadAlbumQueue(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->userUploadQueue:Ljava/util/List;

    .line 159
    new-instance v0, Lcom/ecareme/pixwe/upload/LazyAdapter;

    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->userUploadQueue:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/ecareme/pixwe/upload/LazyAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->adapter:Lcom/ecareme/pixwe/upload/LazyAdapter;

    .line 160
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->adapter:Lcom/ecareme/pixwe/upload/LazyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->adapter:Lcom/ecareme/pixwe/upload/LazyAdapter;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/upload/LazyAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->taggle:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method protected doTaggle()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->taggle:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    :try_start_0
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    if-eqz v1, :cond_1

    .line 138
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    invoke-interface {v1}, Lcom/ecareme/pixwe/service/UploadServiceInterface;->getUploadStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    invoke-interface {v1}, Lcom/ecareme/pixwe/service/UploadServiceInterface;->getUploadStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 139
    :cond_0
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    invoke-interface {v1}, Lcom/ecareme/pixwe/service/UploadServiceInterface;->stardUpload()V

    .line 141
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->taggle:Landroid/widget/Button;

    const v2, 0x7f0600b6

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 142
    const-string v1, "UploadQueueActivity"

    const-string v2, "do Resume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->taggle:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    return-void

    .line 145
    :cond_2
    :try_start_1
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    invoke-interface {v1}, Lcom/ecareme/pixwe/service/UploadServiceInterface;->pouseUpload()V

    .line 147
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->taggle:Landroid/widget/Button;

    const v2, 0x7f0600b7

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 148
    const-string v1, "UploadQueueActivity"

    const-string v2, "do Pause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->setContentView(I)V

    .line 50
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 51
    iput-object p0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->ctx:Landroid/content/Context;

    .line 53
    const v1, 0x7f090048

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->list:Landroid/widget/ListView;

    .line 55
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/ecareme/pixwe/upload/UploadQueueActivity$1;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/upload/UploadQueueActivity$1;-><init>(Lcom/ecareme/pixwe/upload/UploadQueueActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 64
    const v1, 0x7f090049

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->taggle:Landroid/widget/Button;

    .line 65
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->taggle:Landroid/widget/Button;

    new-instance v2, Lcom/ecareme/pixwe/upload/UploadQueueActivity$2;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/upload/UploadQueueActivity$2;-><init>(Lcom/ecareme/pixwe/upload/UploadQueueActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :try_start_0
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    if-eqz v1, :cond_1

    .line 73
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    invoke-interface {v1}, Lcom/ecareme/pixwe/service/UploadServiceInterface;->getUploadStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    invoke-interface {v1}, Lcom/ecareme/pixwe/service/UploadServiceInterface;->getUploadStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->taggle:Landroid/widget/Button;

    const v2, 0x7f0600b7

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_1
    :goto_0
    new-instance v1, Lcom/ecareme/pixwe/upload/UploadQueueActivity$UploadBroadcastRecv;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/upload/UploadQueueActivity$UploadBroadcastRecv;-><init>(Lcom/ecareme/pixwe/upload/UploadQueueActivity;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->ulBrocastRecv:Lcom/ecareme/pixwe/upload/UploadQueueActivity$UploadBroadcastRecv;

    .line 86
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.ecareme.pixwe.service.UploadService"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->ulFilter:Landroid/content/IntentFilter;

    .line 88
    return-void

    .line 76
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->taggle:Landroid/widget/Button;

    const v2, 0x7f0600b6

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 83
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->adapter:Lcom/ecareme/pixwe/upload/LazyAdapter;

    iget-object v1, v1, Lcom/ecareme/pixwe/upload/LazyAdapter;->imageLoader:Lcom/ecareme/pixwe/upload/ImageLoader;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/upload/ImageLoader;->stopThread()V

    .line 103
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->list:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->ulBrocastRecv:Lcom/ecareme/pixwe/upload/UploadQueueActivity$UploadBroadcastRecv;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->ulBrocastRecv:Lcom/ecareme/pixwe/upload/UploadQueueActivity$UploadBroadcastRecv;

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 109
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UploadQueueActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    invoke-direct {p0}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->getPlayListDispInQueue()V

    .line 95
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->ulBrocastRecv:Lcom/ecareme/pixwe/upload/UploadQueueActivity$UploadBroadcastRecv;

    iget-object v1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->ulFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method protected showItemContextMenu(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 114
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0600ba

    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 115
    .local v1, itemArray:[Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    iget-object v2, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->userUploadQueue:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;

    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 117
    new-instance v3, Lcom/ecareme/pixwe/upload/UploadQueueActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/ecareme/pixwe/upload/UploadQueueActivity$3;-><init>(Lcom/ecareme/pixwe/upload/UploadQueueActivity;I)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 130
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 131
    return-void
.end method
