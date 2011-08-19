.class Lcom/asus/DLNA/DLNA$31;
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
    .line 2595
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$31;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$31;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$600(Lcom/asus/DLNA/DLNA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2599
    :goto_0
    return-void

    .line 2598
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$31;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->clickOnVoluUpBTN()V

    goto :goto_0
.end method
