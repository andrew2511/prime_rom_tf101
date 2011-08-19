.class Lcom/ecareme/pixwe/media/GridInputProcessor$2;
.super Ljava/lang/Object;
.source "GridInputProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/GridInputProcessor;->selectSlot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/GridInputProcessor;

.field private final synthetic val$item:Lcom/ecareme/pixwe/media/MediaItem;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/GridInputProcessor;Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$2;->this$0:Lcom/ecareme/pixwe/media/GridInputProcessor;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/GridInputProcessor$2;)Lcom/ecareme/pixwe/media/GridInputProcessor;
    .locals 1
    .parameter

    .prologue
    .line 729
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$2;->this$0:Lcom/ecareme/pixwe/media/GridInputProcessor;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 733
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 734
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 736
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$2;->this$0:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->access$0(Lcom/ecareme/pixwe/media/GridInputProcessor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 737
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$2;->this$0:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->access$0(Lcom/ecareme/pixwe/media/GridInputProcessor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/ecareme/pixwe/media/GridInputProcessor$2$1;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$2;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    invoke-direct {v2, p0, v3}, Lcom/ecareme/pixwe/media/GridInputProcessor$2$1;-><init>(Lcom/ecareme/pixwe/media/GridInputProcessor$2;Lcom/ecareme/pixwe/media/MediaItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 748
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$2;->this$0:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->access$0(Lcom/ecareme/pixwe/media/GridInputProcessor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 749
    const v1, 0x7f0600c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 750
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 751
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 752
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 753
    return-void
.end method
