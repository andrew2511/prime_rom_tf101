.class final Lcom/asus/vibe2/Utils_Download$1;
.super Ljava/lang/Thread;
.source "Utils_Download.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/vibe2/Utils_Download;->downloadItem(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$manager:Landroid/app/DownloadManager;

.field final synthetic val$request:Landroid/app/DownloadManager$Request;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)V
    .locals 0
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p2, p0, Lcom/asus/vibe2/Utils_Download$1;->val$manager:Landroid/app/DownloadManager;

    iput-object p3, p0, Lcom/asus/vibe2/Utils_Download$1;->val$request:Landroid/app/DownloadManager$Request;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/asus/vibe2/Utils_Download$1;->val$manager:Landroid/app/DownloadManager;

    iget-object v1, p0, Lcom/asus/vibe2/Utils_Download$1;->val$request:Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 76
    return-void
.end method