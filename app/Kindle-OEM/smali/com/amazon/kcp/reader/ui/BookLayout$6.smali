.class Lcom/amazon/kcp/reader/ui/BookLayout$6;
.super Ljava/lang/Object;
.source "BookLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/BookLayout;->setOverlayVisible(Landroid/view/View;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

.field final synthetic val$overlay:Landroid/view/View;

.field final synthetic val$overlayFlag:I

.field final synthetic val$visibleOverlays:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BookLayout;Landroid/view/View;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/BookLayout$6;->val$overlay:Landroid/view/View;

    iput p3, p0, Lcom/amazon/kcp/reader/ui/BookLayout$6;->val$visibleOverlays:I

    iput p4, p0, Lcom/amazon/kcp/reader/ui/BookLayout$6;->val$overlayFlag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout$6;->val$overlay:Landroid/view/View;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout$6;->val$visibleOverlays:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/BookLayout$6;->val$overlayFlag:I

    and-int/2addr v1, v2

    iget v2, p0, Lcom/amazon/kcp/reader/ui/BookLayout$6;->val$overlayFlag:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 519
    return-void

    .line 518
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
