.class Lnet/yostore/aws/view/search/SearchActivity$19;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/SearchActivity;->showCreateNewPlayList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/SearchActivity;

.field private final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/SearchActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    iput-object p2, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->val$textEntryView:Landroid/view/View;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 522
    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->val$textEntryView:Landroid/view/View;

    const/high16 v4, 0x7f08

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, playlistEdit:Ljava/lang/String;
    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v3, v2}, Lnet/yostore/aws/view/search/SearchActivity;->access$32(Lnet/yostore/aws/view/search/SearchActivity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 524
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 525
    const/4 v0, 0x1

    .line 527
    .local v0, createSuccess:Z
    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity;->access$2(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity;->access$2(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 528
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity;->access$2(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 535
    .end local v1           #i:I
    :cond_0
    :goto_1
    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity;->access$3(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 536
    if-eqz v0, :cond_1

    .line 537
    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v3, v2}, Lnet/yostore/aws/view/search/SearchActivity;->access$33(Lnet/yostore/aws/view/search/SearchActivity;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    .line 539
    :cond_1
    if-nez v0, :cond_2

    .line 540
    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity;->access$6(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060094

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 545
    .end local v0           #createSuccess:Z
    :cond_2
    :goto_2
    return-void

    .line 529
    .restart local v0       #createSuccess:Z
    .restart local v1       #i:I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity;->access$2(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 530
    const/4 v0, 0x0

    .line 531
    goto :goto_1

    .line 528
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    .end local v0           #createSuccess:Z
    .end local v1           #i:I
    :cond_5
    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity;->access$10(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity$19;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$34(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
