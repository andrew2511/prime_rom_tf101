.class Lcom/ecareme/pixwe/media/HudLayer$44;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer;->editComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/HudLayer;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$44;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/HudLayer$44;)Lcom/ecareme/pixwe/media/HudLayer;
    .locals 1
    .parameter

    .prologue
    .line 891
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$44;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 896
    iget-object v6, p0, Lcom/ecareme/pixwe/media/HudLayer$44;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v6}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v4

    .line 897
    .local v4, gridLayer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->getCurrentSelectedSlot()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/ecareme/pixwe/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v2

    .line 898
    .local v2, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    iget-object v5, v2, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    .line 899
    .local v5, item:Lcom/ecareme/pixwe/media/MediaItem;
    iget-object v1, v5, Lcom/ecareme/pixwe/media/MediaItem;->mDescription:Ljava/lang/String;

    .line 901
    .local v1, defaultComment:Ljava/lang/String;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_0

    .line 902
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 904
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/ecareme/pixwe/media/HudLayer$44;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v6}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 905
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/ecareme/pixwe/media/HudLayer$44;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v6}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 906
    new-instance v3, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/ecareme/pixwe/media/HudLayer$44;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v6}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 907
    .local v3, editComment:Landroid/widget/EditText;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 908
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v6, p0, Lcom/ecareme/pixwe/media/HudLayer$44;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v6}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060063

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/ecareme/pixwe/media/HudLayer$44$1;

    invoke-direct {v7, p0}, Lcom/ecareme/pixwe/media/HudLayer$44$1;-><init>(Lcom/ecareme/pixwe/media/HudLayer$44;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 916
    iget-object v6, p0, Lcom/ecareme/pixwe/media/HudLayer$44;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v6}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060062

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/ecareme/pixwe/media/HudLayer$44$2;

    invoke-direct {v7, p0, v5, v3}, Lcom/ecareme/pixwe/media/HudLayer$44$2;-><init>(Lcom/ecareme/pixwe/media/HudLayer$44;Lcom/ecareme/pixwe/media/MediaItem;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 947
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 948
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 949
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 950
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    .line 951
    return-void
.end method
