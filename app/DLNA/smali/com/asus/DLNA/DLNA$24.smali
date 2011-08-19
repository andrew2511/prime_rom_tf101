.class Lcom/asus/DLNA/DLNA$24;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 2484
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$24;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 2486
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$24;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$600(Lcom/asus/DLNA/DLNA;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2489
    :goto_0
    return v0

    .line 2488
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$24;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/asus/DLNA/MediaControl;->TouchOnPlayPauseBTN(Landroid/view/View;Landroid/view/MotionEvent;)V

    move v0, v1

    .line 2489
    goto :goto_0
.end method
