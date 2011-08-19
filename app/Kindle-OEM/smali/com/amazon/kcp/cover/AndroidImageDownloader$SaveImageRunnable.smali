.class Lcom/amazon/kcp/cover/AndroidImageDownloader$SaveImageRunnable;
.super Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;
.source "AndroidImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/AndroidImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveImageRunnable"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final image:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/amazon/kcp/cover/AndroidImageDownloader;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/AndroidImageDownloader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter "id"
    .parameter "image"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$SaveImageRunnable;->this$0:Lcom/amazon/kcp/cover/AndroidImageDownloader;

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;-><init>(Lcom/amazon/kcp/cover/AndroidImageDownloader;J)V

    .line 176
    iput-object p2, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$SaveImageRunnable;->id:Ljava/lang/String;

    .line 177
    iput-object p3, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$SaveImageRunnable;->image:Landroid/graphics/Bitmap;

    .line 178
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$SaveImageRunnable;->this$0:Lcom/amazon/kcp/cover/AndroidImageDownloader;

    iget-object v1, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$SaveImageRunnable;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$SaveImageRunnable;->image:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/cover/AndroidImageDownloader;->access$200(Lcom/amazon/kcp/cover/AndroidImageDownloader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 184
    return-void
.end method
