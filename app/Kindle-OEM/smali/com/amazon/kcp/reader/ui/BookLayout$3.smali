.class Lcom/amazon/kcp/reader/ui/BookLayout$3;
.super Ljava/lang/Object;
.source "BookLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/BookLayout;->onFinishInflate()V
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
    .line 153
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

    iget v0, v0, Lcom/amazon/kcp/reader/ui/BookLayout;->visibleOverlays:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
