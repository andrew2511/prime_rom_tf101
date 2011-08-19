.class Lcom/asus/Viewer/ViewImage$11;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Lcom/asus/Viewer/DLNAImageGetterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/ViewImage;->loadNextImage(IJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/ViewImage;

.field final synthetic val$firstCall:Z

.field final synthetic val$requestedPos:I

.field final synthetic val$targetDisplayTime:J


# direct methods
.method constructor <init>(Lcom/asus/Viewer/ViewImage;JIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    iput-wide p2, p0, Lcom/asus/Viewer/ViewImage$11;->val$targetDisplayTime:J

    iput p4, p0, Lcom/asus/Viewer/ViewImage$11;->val$requestedPos:I

    iput-boolean p5, p0, Lcom/asus/Viewer/ViewImage$11;->val$firstCall:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Exception()V
    .locals 3

    .prologue
    .line 917
    const v0, 0x7f07000b

    .line 918
    .local v0, message:I
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 919
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v1}, Lcom/asus/Viewer/ViewImage;->finish()V

    .line 920
    return-void
.end method

.method public completed()V
    .locals 0

    .prologue
    .line 923
    return-void
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;Z)V
    .locals 9
    .parameter "pos"
    .parameter "offset"
    .parameter "bitmap"
    .parameter "isError"

    .prologue
    .line 936
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/asus/Viewer/ViewImage$11;->val$targetDisplayTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 938
    .local v6, timeRemaining:J
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$3400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/GetterHandler;

    move-result-object v8

    new-instance v0, Lcom/asus/Viewer/ViewImage$11$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/asus/Viewer/ViewImage$11$1;-><init>(Lcom/asus/Viewer/ViewImage$11;IILandroid/graphics/Bitmap;Z)V

    invoke-virtual {v8, v0, v6, v7}, Lcom/asus/Viewer/GetterHandler;->postDelayedGetterCallback(Ljava/lang/Runnable;J)V

    .line 995
    return-void
.end method

.method public loadOrder()[I
    .locals 1

    .prologue
    .line 930
    invoke-static {}, Lcom/asus/Viewer/ViewImage;->access$2400()[I

    move-result-object v0

    return-object v0
.end method

.method public wantsFullImage(II)Z
    .locals 2
    .parameter "pos"
    .parameter "offset"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/BitmapCache;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/BitmapCache;->clearCache(I)V

    .line 927
    const/4 v0, 0x1

    return v0
.end method
