.class Lnet/yostore/aws/view/search/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/SearchActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$2;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$2;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity;->access$4(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    .line 685
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$2;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity;->access$3(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 686
    return-void
.end method
