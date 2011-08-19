.class public Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BrowseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/BrowseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field offlineicon:Landroid/widget/ImageView;

.field playingicon:Landroid/widget/ImageView;

.field private status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/BrowseAdapter;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/navigate/BrowseAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->this$0:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    sget-object v0, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    return-void
.end method

.method private initStatusIcon()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    sget-object v1, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->offlineicon:Landroid/widget/ImageView;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    sget-object v1, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_incompleted:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->offlineicon:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    sget-object v1, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_ood:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->offlineicon:Landroid/widget/ImageView;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 256
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    sget-object v1, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_completed:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->offlineicon:Landroid/widget/ImageView;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getStatus()Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->this$0:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->access$3(Lnet/yostore/aws/view/navigate/BrowseAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->getPlayList(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/PlayList;

    move-result-object v0

    .line 240
    .local v0, pList:Lnet/yostore/aws/sqlite/entity/PlayList;
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, v0, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 242
    :cond_0
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->initStatusIcon()V

    .line 243
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    return-object v1
.end method

.method public setStatus(Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 248
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 249
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->initStatusIcon()V

    .line 250
    return-void
.end method
