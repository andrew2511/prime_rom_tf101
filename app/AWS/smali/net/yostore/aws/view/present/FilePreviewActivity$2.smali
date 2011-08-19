.class Lnet/yostore/aws/view/present/FilePreviewActivity$2;
.super Ljava/lang/Object;
.source "FilePreviewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/FilePreviewActivity;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/FilePreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$2;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 227
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$2;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 228
    return-void
.end method
