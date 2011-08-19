.class Lcom/android/launcher2/PagedView$2;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/PagedView;->postInvalidatePageData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PagedView;

.field final synthetic val$clearViews:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/android/launcher2/PagedView$2;->this$0:Lcom/android/launcher2/PagedView;

    iput-boolean p2, p0, Lcom/android/launcher2/PagedView$2;->val$clearViews:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1521
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView$2;->val$clearViews:Z

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/android/launcher2/PagedView$2;->this$0:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->removeAllViews()V

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView$2;->this$0:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->invalidatePageData()V

    .line 1525
    return-void
.end method
