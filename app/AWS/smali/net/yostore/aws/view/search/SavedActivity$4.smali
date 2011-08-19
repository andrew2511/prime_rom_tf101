.class Lnet/yostore/aws/view/search/SavedActivity$4;
.super Ljava/lang/Object;
.source "SavedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/SavedActivity;->showFileContextMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/SavedActivity;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/SavedActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/SavedActivity$4;->this$0:Lnet/yostore/aws/view/search/SavedActivity;

    iput p2, p0, Lnet/yostore/aws/view/search/SavedActivity$4;->val$position:I

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 225
    packed-switch p2, :pswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 228
    :pswitch_0
    new-instance v0, Lnet/yostore/aws/ansytask/FileRemoveTask;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/SavedActivity$4;->this$0:Lnet/yostore/aws/view/search/SavedActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/SavedActivity;->access$3(Lnet/yostore/aws/view/search/SavedActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/SavedActivity$4;->this$0:Lnet/yostore/aws/view/search/SavedActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/SavedActivity;->access$2(Lnet/yostore/aws/view/search/SavedActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v3

    iget v4, p0, Lnet/yostore/aws/view/search/SavedActivity$4;->val$position:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/FileRemoveTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
