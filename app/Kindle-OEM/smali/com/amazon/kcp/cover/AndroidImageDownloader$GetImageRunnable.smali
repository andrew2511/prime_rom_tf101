.class Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;
.super Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;
.source "AndroidImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/AndroidImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetImageRunnable"
.end annotation


# instance fields
.field private final finishListener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

.field private final id:Ljava/lang/String;

.field private final maxHeight:I

.field private final maxWidth:I

.field final synthetic this$0:Lcom/amazon/kcp/cover/AndroidImageDownloader;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/AndroidImageDownloader;Ljava/lang/String;IILcom/amazon/kcp/cover/OnImageUpdateListener;)V
    .locals 2
    .parameter
    .parameter "id"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "finishListener"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;->this$0:Lcom/amazon/kcp/cover/AndroidImageDownloader;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;-><init>(Lcom/amazon/kcp/cover/AndroidImageDownloader;J)V

    .line 144
    iput-object p2, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;->id:Ljava/lang/String;

    .line 145
    iput p3, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;->maxWidth:I

    .line 146
    iput p4, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;->maxHeight:I

    .line 147
    iput-object p5, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;->finishListener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    .line 148
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;->this$0:Lcom/amazon/kcp/cover/AndroidImageDownloader;

    iget-object v1, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;->id:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;->maxWidth:I

    iget v3, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;->maxHeight:I

    iget-object v4, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;->finishListener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/cover/AndroidImageDownloader;->access$100(Lcom/amazon/kcp/cover/AndroidImageDownloader;Ljava/lang/String;IILcom/amazon/kcp/cover/OnImageUpdateListener;)V

    .line 154
    return-void
.end method
