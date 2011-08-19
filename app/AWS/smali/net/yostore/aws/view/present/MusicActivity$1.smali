.class Lnet/yostore/aws/view/present/MusicActivity$1;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/present/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/MusicActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/MusicActivity$1;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 184
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$1;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    invoke-virtual {v2}, Lnet/yostore/aws/view/present/MusicActivity;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 185
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$1;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    invoke-virtual {v2, v0}, Lnet/yostore/aws/view/present/MusicActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$1;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$1;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/PlayList;->getCurrentPlayItem()Lnet/yostore/aws/handler/entity/PlayItem;

    move-result-object v1

    .line 189
    .local v1, pi:Lnet/yostore/aws/handler/entity/PlayItem;
    if-eqz v1, :cond_0

    .line 190
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$1;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/present/MusicActivity;->play:Landroid/widget/ImageButton;

    invoke-static {}, Lnet/yostore/aws/view/present/MusicActivity;->access$0()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 192
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$1;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v3, p0, Lnet/yostore/aws/view/present/MusicActivity$1;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    const v4, 0x7f06009c

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/present/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lnet/yostore/aws/view/present/MusicActivity;->access$1(Lnet/yostore/aws/view/present/MusicActivity;Lnet/yostore/aws/handler/entity/PlayItem;Ljava/lang/String;)V

    .line 201
    .end local v1           #pi:Lnet/yostore/aws/handler/entity/PlayItem;
    :cond_0
    return-void
.end method
