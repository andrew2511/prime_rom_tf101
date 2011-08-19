.class Lcom/android/providers/downloads/ui/DownloadList$3;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 248
    instance-of v0, p2, Lcom/android/providers/downloads/ui/DownloadItem;

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 258
    .end local p2
    :goto_0
    return v0

    .line 252
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$200(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 253
    check-cast p2, Lcom/android/providers/downloads/ui/DownloadItem;

    .end local p2
    invoke-virtual {p2, v2}, Lcom/android/providers/downloads/ui/DownloadItem;->setChecked(Z)V

    :goto_1
    move v0, v2

    .line 258
    goto :goto_0

    .line 255
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$600(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;->moveCursorToChildPosition(II)Z

    .line 256
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$800(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$900(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    goto :goto_1
.end method
