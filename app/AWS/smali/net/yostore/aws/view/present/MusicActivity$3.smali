.class Lnet/yostore/aws/view/present/MusicActivity$3;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lnet/yostore/aws/view/present/MusicActivity$3;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v4, 0x1

    .line 144
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$3;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->play:Landroid/widget/ImageButton;

    invoke-static {}, Lnet/yostore/aws/view/present/MusicActivity;->access$3()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 146
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$3;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/MusicActivity;->access$2(Lnet/yostore/aws/view/present/MusicActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$3;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$3;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/present/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 151
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    :goto_2
    return v4

    .line 148
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 154
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "MusicActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 160
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "MusicActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
