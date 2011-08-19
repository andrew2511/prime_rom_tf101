.class public Lnet/yostore/aws/view/navigate/BrowseAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BrowseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;,
        Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnet/yostore/aws/handler/entity/BrowseRaw;",
        ">;"
    }
.end annotation


# instance fields
.field public browseFolderid:J

.field private ctx:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/BrowseRaw;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private textViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/BrowseRaw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->textViewResourceId:I

    .line 45
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->ctx:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    iput-object p3, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    .line 55
    iput p2, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->textViewResourceId:I

    .line 56
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->ctx:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/navigate/BrowseAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->ctx:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/handler/entity/BrowseRaw;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->add(Lnet/yostore/aws/handler/entity/BrowseRaw;)V

    return-void
.end method

.method public add(Lnet/yostore/aws/handler/entity/BrowseRaw;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 61
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getItem(I)Lnet/yostore/aws/handler/entity/BrowseRaw;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnet/yostore/aws/handler/entity/BrowseRaw;
    .locals 1
    .parameter "position"

    .prologue
    .line 73
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 79
    if-nez p2, :cond_3

    .line 80
    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->textViewResourceId:I

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 81
    new-instance v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;-><init>(Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    .line 82
    .local v2, holder:Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
    const v3, 0x7f080001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 83
    const v3, 0x7f08001a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->playingicon:Landroid/widget/ImageView;

    .line 84
    const v3, 0x7f08001b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->offlineicon:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    :goto_0
    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 94
    .local v0, br:Lnet/yostore/aws/handler/entity/BrowseRaw;
    iget-object v3, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/BrowseRaw;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/BrowseRaw;->getFid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->id:Ljava/lang/String;

    .line 98
    :try_start_0
    iget-wide v3, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    sget-wide v5, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/BrowseRaw;->getFid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v5}, Lnet/yostore/aws/service/PlayerServiceInterface;->getPlayingFolderId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 99
    :cond_0
    iget-wide v3, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    sget-wide v5, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    sget-object v3, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v3}, Lnet/yostore/aws/service/PlayerServiceInterface;->getPlayingFolderId()J

    move-result-wide v3

    iget-wide v5, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    sget-object v3, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v3}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v3

    if-eq p1, v3, :cond_2

    .line 100
    :cond_1
    iget v3, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->textViewResourceId:I

    const v4, 0x7f030012

    if-eq v3, v4, :cond_4

    iget-wide v3, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    sget-wide v5, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    sget-object v3, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v3}, Lnet/yostore/aws/service/PlayerServiceInterface;->getPlayingFolderId()J

    move-result-wide v3

    sget-wide v5, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    sget-object v3, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v3}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v3

    if-ne p1, v3, :cond_4

    sget-object v3, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v3}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentSong()Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/BrowseRaw;->getText()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v4}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentSong()Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    :cond_2
    iget-object v3, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->playingicon:Landroid/widget/ImageView;

    const v4, 0x7f0200a2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :goto_1
    iget-wide v3, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    sget-wide v5, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/BrowseRaw;->getKind()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 108
    invoke-virtual {v2}, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->getStatus()Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 109
    iget-object v3, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->offlineicon:Landroid/widget/ImageView;

    new-instance v4, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;

    invoke-direct {v4, p0, v2}, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;-><init>(Lnet/yostore/aws/view/navigate/BrowseAdapter;Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 130
    :goto_2
    return-object p2

    .line 88
    .end local v0           #br:Lnet/yostore/aws/handler/entity/BrowseRaw;
    .end local v2           #holder:Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;

    .restart local v2       #holder:Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
    goto/16 :goto_0

    .line 103
    .restart local v0       #br:Lnet/yostore/aws/handler/entity/BrowseRaw;
    :cond_4
    :try_start_1
    iget-object v3, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->playingicon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 114
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 117
    .local v1, e:Ljava/lang/NumberFormatException;
    iget-object v3, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->playingicon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 111
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_5
    :try_start_2
    iget-object v3, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->offlineicon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 119
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 122
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->playingicon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 124
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 127
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/handler/entity/BrowseRaw;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->remove(Lnet/yostore/aws/handler/entity/BrowseRaw;)V

    return-void
.end method

.method public remove(Lnet/yostore/aws/handler/entity/BrowseRaw;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 66
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method
