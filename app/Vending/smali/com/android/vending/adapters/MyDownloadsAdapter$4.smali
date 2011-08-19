.class Lcom/android/vending/adapters/MyDownloadsAdapter$4;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/adapters/MyDownloadsAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

.field final synthetic val$sectionAction:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;


# direct methods
.method constructor <init>(Lcom/android/vending/adapters/MyDownloadsAdapter;Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$4;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    iput-object p2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$4;->val$sectionAction:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$4;->val$sectionAction:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    iget-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$4;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    iget-object v1, v1, Lcom/android/vending/adapters/MyDownloadsAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$4;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->run(Landroid/app/Activity;Lcom/android/vending/adapters/MyDownloadsAdapter;)V

    .line 356
    return-void
.end method
