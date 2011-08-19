.class Lcom/ecareme/pixwe/media/HudLayer$42$2;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer$42;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/media/HudLayer$42;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer$42;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$42$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$42;

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 854
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 855
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 857
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$42$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$42;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer$42;->access$0(Lcom/ecareme/pixwe/media/HudLayer$42;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 858
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$42$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$42;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer$42;->access$0(Lcom/ecareme/pixwe/media/HudLayer$42;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 859
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$42$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$42;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer$42;->access$0(Lcom/ecareme/pixwe/media/HudLayer$42;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 860
    const v1, 0x7f0600ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 861
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 863
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 864
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 865
    return-void
.end method
