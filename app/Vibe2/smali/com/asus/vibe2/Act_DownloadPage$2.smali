.class Lcom/asus/vibe2/Act_DownloadPage$2;
.super Landroid/database/ContentObserver;
.source "Act_DownloadPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Act_DownloadPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Act_DownloadPage;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Act_DownloadPage;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/asus/vibe2/Act_DownloadPage$2;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 73
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage$2;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v0}, Lcom/asus/vibe2/Act_DownloadPage;->access$000(Lcom/asus/vibe2/Act_DownloadPage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    return-void
.end method
