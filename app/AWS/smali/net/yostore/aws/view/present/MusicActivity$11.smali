.class Lnet/yostore/aws/view/present/MusicActivity$11;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lnet/yostore/aws/view/present/MusicActivity$11;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 316
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$11;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$11;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v2, v2, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    iget-boolean v2, v2, Lnet/yostore/aws/handler/entity/PlayList;->isRandom:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lnet/yostore/aws/handler/entity/PlayList;->isRandom:Z

    .line 317
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$11;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    iget-boolean v1, v1, Lnet/yostore/aws/handler/entity/PlayList;->isRandom:Z

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$11;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->random:Landroid/widget/ImageButton;

    invoke-static {}, Lnet/yostore/aws/view/present/MusicActivity;->access$12()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 319
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$11;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$11;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    const v3, 0x7f0600a2

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/present/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 325
    :goto_1
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$11;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    invoke-virtual {v1}, Lnet/yostore/aws/view/present/MusicActivity;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 326
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$11;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    invoke-virtual {v1, v0}, Lnet/yostore/aws/view/present/MusicActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 327
    return-void

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_0
    move v2, v4

    .line 316
    goto :goto_0

    .line 322
    :cond_1
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$11;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->random:Landroid/widget/ImageButton;

    invoke-static {}, Lnet/yostore/aws/view/present/MusicActivity;->access$13()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 323
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$11;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$11;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    const v3, 0x7f0600a3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/present/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
