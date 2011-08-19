.class Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field final synthetic val$listPosition:I

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings/deviceinfo/FileItemInfoLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listPosition:I

    iput-object p4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v3

    .line 272
    :goto_0
    return v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listPosition:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move v0, v4

    .line 272
    goto :goto_0

    :cond_1
    move v2, v3

    .line 271
    goto :goto_1
.end method
