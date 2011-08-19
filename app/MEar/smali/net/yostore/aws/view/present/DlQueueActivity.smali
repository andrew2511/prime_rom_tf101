.class public Lnet/yostore/aws/view/present/DlQueueActivity;
.super Landroid/app/ListActivity;
.source "DlQueueActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DlQueueActivity"


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

.field isPaused:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private msgtxt:Landroid/widget/TextView;

.field private taggle:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 31
    iput-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->list:Ljava/util/List;

    .line 36
    iput-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->taggle:Landroid/widget/Button;

    .line 37
    iput-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->msgtxt:Landroid/widget/TextView;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->isPaused:Z

    .line 28
    return-void
.end method

.method private getPlayListDispInQueue()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 96
    new-instance v2, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v4, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->ctx:Landroid/content/Context;

    invoke-direct {v2, v4}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 97
    iget-object v2, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "dlqueue"

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "plistid"

    aput-object v4, v3, v11

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "username=\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 101
    .local v10, cr:Landroid/database/Cursor;
    const-string v3, ""

    .line 102
    .local v3, where:Ljava/lang/String;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 107
    iget-object v2, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 108
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 109
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "plistid in("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    const-string v4, "playlist"

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "display"

    aput-object v1, v2, v11

    move-object v1, v4

    move-object v4, v5

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 112
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    iget-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 119
    return-void

    .line 103
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->list:Ljava/util/List;

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method protected doTaggle()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    iget-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->taggle:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    :try_start_0
    iget-boolean v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->isPaused:Z

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayListServiceInterface;->ResumeDownload()V

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->isPaused:Z

    .line 71
    iget-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->taggle:Landroid/widget/Button;

    const v2, 0x7f0600a0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 72
    iget-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->msgtxt:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    const-string v1, "DlQueueActivity"

    const-string v2, "do Resume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->taggle:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    return-void

    .line 76
    :cond_0
    :try_start_1
    sget-object v1, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayListServiceInterface;->PauseeDownload()V

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->isPaused:Z

    .line 78
    iget-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->taggle:Landroid/widget/Button;

    const v2, 0x7f0600a1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 79
    iget-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->msgtxt:Landroid/widget/TextView;

    const v2, 0x7f0600a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->msgtxt:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    const-string v1, "DlQueueActivity"

    const-string v2, "do Pause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/DlQueueActivity;->setContentView(I)V

    .line 46
    const-string v0, "MearPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/present/DlQueueActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 47
    iget-object v0, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 48
    iput-object p0, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->ctx:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->ctx:Landroid/content/Context;

    const v2, 0x1090003

    iget-object v3, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->list:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 52
    iget-object v0, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/DlQueueActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/DlQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->taggle:Landroid/widget/Button;

    .line 55
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/DlQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->msgtxt:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->taggle:Landroid/widget/Button;

    new-instance v1, Lnet/yostore/aws/view/present/DlQueueActivity$1;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/DlQueueActivity$1;-><init>(Lnet/yostore/aws/view/present/DlQueueActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 125
    invoke-direct {p0}, Lnet/yostore/aws/view/present/DlQueueActivity;->getPlayListDispInQueue()V

    .line 127
    :try_start_0
    sget-object v2, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayListServiceInterface;->getDownloadMessage()I

    move-result v1

    .line 128
    .local v1, msgid:I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 129
    iget-object v2, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->msgtxt:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v2, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->msgtxt:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_0
    sget-object v2, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayListServiceInterface;->getDownloadStatus()I

    move-result v2

    sget-object v3, Lnet/yostore/aws/service/PlayListService$STATUS;->PAUSED:Lnet/yostore/aws/service/PlayListService$STATUS;

    invoke-virtual {v3}, Lnet/yostore/aws/service/PlayListService$STATUS;->getInt()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 137
    iget-object v2, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->taggle:Landroid/widget/Button;

    const v3, 0x7f0600a1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    .end local v1           #msgid:I
    :goto_1
    iget-object v2, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/present/DlQueueActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    return-void

    .line 133
    .restart local v1       #msgid:I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->msgtxt:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 144
    .end local v1           #msgid:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 145
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #msgid:I
    :cond_1
    :try_start_2
    sget-object v2, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayListServiceInterface;->getDownloadStatus()I

    move-result v2

    sget-object v3, Lnet/yostore/aws/service/PlayListService$STATUS;->COMPLETED:Lnet/yostore/aws/service/PlayListService$STATUS;

    invoke-virtual {v3}, Lnet/yostore/aws/service/PlayListService$STATUS;->getInt()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 139
    sget-object v2, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayListServiceInterface;->cliarNotification()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 146
    .end local v1           #msgid:I
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 149
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #msgid:I
    :cond_2
    :try_start_3
    iget-object v2, p0, Lnet/yostore/aws/view/present/DlQueueActivity;->taggle:Landroid/widget/Button;

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
