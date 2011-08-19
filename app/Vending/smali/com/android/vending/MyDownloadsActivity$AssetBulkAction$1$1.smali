.class Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1$1;
.super Ljava/lang/Thread;
.source "MyDownloadsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;->run(Landroid/app/Activity;Lcom/android/vending/adapters/MyDownloadsAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$toCancel:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1$1;->this$0:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;

    iput-object p2, p0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1$1;->val$toCancel:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1$1;->this$0:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1$1;->val$toCancel:Ljava/util/Collection;

    invoke-static {v0, v1, v2}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;->access$100(Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;Landroid/app/Activity;Ljava/util/Collection;)V

    .line 103
    return-void
.end method
