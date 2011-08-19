.class Lcom/amazon/kcp/reader/ui/BookmarkFrame$1;
.super Ljava/lang/Object;
.source "BookmarkFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/BookmarkFrame;->crossFadeBookmarks(Landroid/widget/ImageView;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BookmarkFrame;

.field final synthetic val$toView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BookmarkFrame;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame$1;->this$0:Lcom/amazon/kcp/reader/ui/BookmarkFrame;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame$1;->val$toView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame$1;->val$toView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    return-void
.end method
