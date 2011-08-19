.class Lcom/amazon/kcp/reader/ui/BookLayout$5;
.super Ljava/lang/Object;
.source "BookLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/BookLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BookLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BookLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookLayout$5;->this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout$5;->this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->access$200(Lcom/amazon/kcp/reader/ui/BookLayout;)Lcom/amazon/kcp/ui/SyncMessageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/ui/SyncMessageView;->isShowing()Z

    move-result v0

    return v0
.end method
