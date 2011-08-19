.class Lcom/asus/vibe2/Act_DownloadPage$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/asus/vibe2/Act_DownloadPage;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/asus/vibe2/Act_DownloadPage$1;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage$1;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-virtual {v0}, Lcom/asus/vibe2/Act_DownloadPage;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->notifyDataSetChanged()V

    .line 66
    :cond_0
    return-void
.end method
