.class Lcom/android/vending/AssetInfoActivity$CommentsSection$1;
.super Landroid/database/DataSetObserver;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity$CommentsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$CommentsSection;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$CommentsSection;)V
    .locals 0
    .parameter

    .prologue
    .line 2074
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$CommentsSection;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$CommentsSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->refresh()V

    .line 2078
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 2083
    return-void
.end method
