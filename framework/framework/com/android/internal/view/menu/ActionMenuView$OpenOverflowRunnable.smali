.class Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuView;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuView;Lcom/android/internal/view/menu/MenuPopupHelper;)V
    .registers 3
    .parameter
    .parameter "popup"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 66
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 70
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuView;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    #setter for: Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->access$002(Lcom/android/internal/view/menu/ActionMenuView;Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 71
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/view/menu/ActionMenuView;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->access$102(Lcom/android/internal/view/menu/ActionMenuView;Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;)Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;

    .line 73
    :cond_15
    return-void
.end method
