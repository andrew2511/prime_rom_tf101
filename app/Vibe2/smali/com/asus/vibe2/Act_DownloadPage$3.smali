.class Lcom/asus/vibe2/Act_DownloadPage$3;
.super Ljava/lang/Object;
.source "Act_DownloadPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 77
    iput-object p1, p0, Lcom/asus/vibe2/Act_DownloadPage$3;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    .local v0, id:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/asus/vibe2/Act_DownloadPage$3;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v1}, Lcom/asus/vibe2/Act_DownloadPage;->access$100(Lcom/asus/vibe2/Act_DownloadPage;)Landroid/app/DownloadManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/asus/vibe2/Act_DownloadPage$3;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v1}, Lcom/asus/vibe2/Act_DownloadPage;->access$100(Lcom/asus/vibe2/Act_DownloadPage;)Landroid/app/DownloadManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    int-to-long v4, v0

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->remove([J)I

    .line 83
    :cond_0
    return-void
.end method
