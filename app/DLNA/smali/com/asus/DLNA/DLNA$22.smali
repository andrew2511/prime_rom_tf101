.class Lcom/asus/DLNA/DLNA$22;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/DLNA;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 2396
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$22;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 2399
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$22;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->isHidingControllerPanel()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 2400
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$22;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$22;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$600(Lcom/asus/DLNA/DLNA;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(ZZ)V

    .line 2405
    :goto_0
    return-void

    .line 2402
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$22;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(Z)V

    goto :goto_0
.end method
