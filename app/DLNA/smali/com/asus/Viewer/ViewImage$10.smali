.class Lcom/asus/Viewer/ViewImage$10;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/Viewer/ViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/ViewImage;


# direct methods
.method constructor <init>(Lcom/asus/Viewer/ViewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/16 v6, 0x34

    const/4 v5, 0x0

    const/16 v4, 0xbb8

    const/4 v3, 0x1

    .line 756
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 758
    :sswitch_0
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v1}, Lcom/asus/Viewer/ViewImage;->playSlideShow()V

    goto :goto_0

    .line 762
    :sswitch_1
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v1, v4, v3}, Lcom/asus/Viewer/ViewImage;->show(IZ)V

    .line 763
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/asus/Viewer/ViewImage;->access$1900(Lcom/asus/Viewer/ViewImage;I)V

    goto :goto_0

    .line 767
    :sswitch_2
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v1, v4, v3}, Lcom/asus/Viewer/ViewImage;->show(IZ)V

    .line 768
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1, v3}, Lcom/asus/Viewer/ViewImage;->access$1900(Lcom/asus/Viewer/ViewImage;I)V

    goto :goto_0

    .line 772
    :sswitch_3
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    const v2, 0x36ee80

    invoke-virtual {v1, v2, v3}, Lcom/asus/Viewer/ViewImage;->show(IZ)V

    .line 773
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    new-instance v2, Lcom/asus/Viewer/ViewImage$RenderListAdapter;

    iget-object v3, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    iget-object v4, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v4}, Lcom/asus/Viewer/ViewImage;->access$2100(Lcom/asus/Viewer/ViewImage;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/asus/Viewer/ViewImage$RenderListAdapter;-><init>(Lcom/asus/Viewer/ViewImage;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/asus/Viewer/ViewImage;->access$2002(Lcom/asus/Viewer/ViewImage;Lcom/asus/Viewer/ViewImage$RenderListAdapter;)Lcom/asus/Viewer/ViewImage$RenderListAdapter;

    .line 776
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 777
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v2}, Lcom/asus/Viewer/ViewImage;->access$2000(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/ViewImage$RenderListAdapter;

    move-result-object v2

    new-instance v3, Lcom/asus/Viewer/ViewImage$10$1;

    invoke-direct {v3, p0}, Lcom/asus/Viewer/ViewImage$10$1;-><init>(Lcom/asus/Viewer/ViewImage$10;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 788
    new-instance v1, Lcom/asus/Viewer/ViewImage$10$2;

    invoke-direct {v1, p0}, Lcom/asus/Viewer/ViewImage$10$2;-><init>(Lcom/asus/Viewer/ViewImage$10;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 793
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/Viewer/ViewImage;->access$2302(Lcom/asus/Viewer/ViewImage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 794
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$2300(Lcom/asus/Viewer/ViewImage;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 798
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_4
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v1, v3}, Lcom/asus/Viewer/ViewImage;->setMode(I)V

    .line 799
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$400(Lcom/asus/Viewer/ViewImage;)I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 800
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    const/16 v2, 0x31

    invoke-static {v1, v2}, Lcom/asus/Viewer/ViewImage;->access$000(Lcom/asus/Viewer/ViewImage;I)V

    .line 806
    :goto_1
    :sswitch_5
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v1, v3}, Lcom/asus/Viewer/ViewImage;->setMode(I)V

    .line 807
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$400(Lcom/asus/Viewer/ViewImage;)I

    move-result v1

    if-eq v1, v6, :cond_1

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$400(Lcom/asus/Viewer/ViewImage;)I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v1, v4, v3}, Lcom/asus/Viewer/ViewImage;->show(IZ)V

    goto/16 :goto_0

    .line 802
    :cond_2
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$10;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v1, v4, v5}, Lcom/asus/Viewer/ViewImage;->show(IZ)V

    goto :goto_1

    .line 756
    :sswitch_data_0
    .sparse-switch
        0x7f080011 -> :sswitch_2
        0x7f080015 -> :sswitch_3
        0x7f080029 -> :sswitch_4
        0x7f08002d -> :sswitch_5
        0x7f08002e -> :sswitch_1
        0x7f080035 -> :sswitch_0
    .end sparse-switch
.end method
