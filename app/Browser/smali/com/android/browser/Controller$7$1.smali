.class Lcom/android/browser/Controller$7$1;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller$7;->onReceiveValue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Controller$7;

.field final synthetic val$length:J

.field final synthetic val$manager:Landroid/app/DownloadManager;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller$7;Ljava/lang/String;Landroid/app/DownloadManager;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/android/browser/Controller$7$1;->this$1:Lcom/android/browser/Controller$7;

    iput-object p3, p0, Lcom/android/browser/Controller$7$1;->val$manager:Landroid/app/DownloadManager;

    iput-object p4, p0, Lcom/android/browser/Controller$7$1;->val$value:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/browser/Controller$7$1;->val$length:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 1634
    iget-object v0, p0, Lcom/android/browser/Controller$7$1;->val$manager:Landroid/app/DownloadManager;

    iget-object v1, p0, Lcom/android/browser/Controller$7$1;->this$1:Lcom/android/browser/Controller$7;

    iget-object v1, v1, Lcom/android/browser/Controller$7;->val$title:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/Controller$7$1;->val$value:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/android/browser/Controller$7$1;->val$value:Ljava/lang/String;

    const-string v4, "application/x-webarchive-xml"

    iget-object v5, p0, Lcom/android/browser/Controller$7$1;->val$value:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/browser/Controller$7$1;->val$length:J

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    .line 1638
    return-void

    .line 1634
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Controller$7$1;->this$1:Lcom/android/browser/Controller$7;

    iget-object v1, v1, Lcom/android/browser/Controller$7;->val$title:Ljava/lang/String;

    goto :goto_0
.end method
