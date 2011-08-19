.class Lnet/yostore/aws/view/present/MusicActivity$2;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lnet/yostore/aws/view/present/MusicActivity$2;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$2;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/MusicActivity;->access$2(Lnet/yostore/aws/view/present/MusicActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$2;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 137
    return-void

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
