.class Lnet/yostore/aws/view/present/FilePreviewActivity$4;
.super Ljava/lang/Object;
.source "FilePreviewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$4;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 253
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$4;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicStop(Landroid/view/View;)V

    .line 254
    return-void
.end method
