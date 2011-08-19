.class Lnet/yostore/aws/view/present/MusicActivity$13;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/MusicActivity;->initControls()V
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
    iput-object p1, p0, Lnet/yostore/aws/view/present/MusicActivity$13;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, pi:Lnet/yostore/aws/handler/entity/PlayItem;
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$13;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$13;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/PlayList;->getNextPlayItem()Lnet/yostore/aws/handler/entity/PlayItem;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_1

    .line 341
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$13;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$13;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    const v3, 0x7f06009c

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/present/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lnet/yostore/aws/view/present/MusicActivity;->access$1(Lnet/yostore/aws/view/present/MusicActivity;Lnet/yostore/aws/handler/entity/PlayItem;Ljava/lang/String;)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$13;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/yostore/aws/handler/entity/PlayList;->getPlayItem(I)Lnet/yostore/aws/handler/entity/PlayItem;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$13;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->nowFile:Landroid/widget/TextView;

    iget-object v2, v0, Lnet/yostore/aws/handler/entity/PlayItem;->disp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$13;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->play:Landroid/widget/ImageButton;

    invoke-static {}, Lnet/yostore/aws/view/present/MusicActivity;->access$3()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
