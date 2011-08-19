.class Lcom/amazon/kcp/periodicals/CoverActivity$1;
.super Ljava/lang/Object;
.source "CoverActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/CoverActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/CoverActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/CoverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/CoverActivity$1;->this$0:Lcom/amazon/kcp/periodicals/CoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/CoverActivity$1;->this$0:Lcom/amazon/kcp/periodicals/CoverActivity;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/CoverActivity;->access$000(Lcom/amazon/kcp/periodicals/CoverActivity;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method
