.class Lnet/yostore/aws/view/present/MusicActivity$4;
.super Ljava/lang/Thread;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/MusicActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lnet/yostore/aws/view/present/MusicActivity$4;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 171
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity$4;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    .line 172
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$4;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->mNowFolder:Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$4;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    invoke-virtual {v2}, Lnet/yostore/aws/view/present/MusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "dispArr"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lnet/yostore/aws/view/present/MusicActivity$4;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    invoke-virtual {v3}, Lnet/yostore/aws/view/present/MusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "urlArr"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 175
    iget-object v4, p0, Lnet/yostore/aws/view/present/MusicActivity$4;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    invoke-virtual {v4}, Lnet/yostore/aws/view/present/MusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Position"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 171
    invoke-static {v1, v2, v3, v4}, Lnet/yostore/aws/handler/MusicPlayerHandler;->compose(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)Lnet/yostore/aws/handler/entity/PlayList;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    .line 177
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity$4;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/MusicActivity;->access$4(Lnet/yostore/aws/view/present/MusicActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$4;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/MusicActivity;->access$5(Lnet/yostore/aws/view/present/MusicActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method
