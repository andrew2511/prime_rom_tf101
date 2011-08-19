.class Lcom/asus/vibe2/Act_DownloadPage$4;
.super Ljava/lang/Object;
.source "Act_DownloadPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 86
    iput-object p1, p0, Lcom/asus/vibe2/Act_DownloadPage$4;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage$4;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v0}, Lcom/asus/vibe2/Act_DownloadPage;->access$200(Lcom/asus/vibe2/Act_DownloadPage;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 89
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage$4;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v0}, Lcom/asus/vibe2/Act_DownloadPage;->access$200(Lcom/asus/vibe2/Act_DownloadPage;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 90
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage$4;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    iget-object v1, p0, Lcom/asus/vibe2/Act_DownloadPage$4;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v1}, Lcom/asus/vibe2/Act_DownloadPage;->access$200(Lcom/asus/vibe2/Act_DownloadPage;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/vibe2/Act_DownloadPage;->access$300(Lcom/asus/vibe2/Act_DownloadPage;Landroid/database/Cursor;)V

    .line 92
    :cond_0
    return-void
.end method
