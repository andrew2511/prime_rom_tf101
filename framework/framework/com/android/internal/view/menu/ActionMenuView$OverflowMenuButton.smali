.class Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuView;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuView;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 382
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuView;

    .line 383
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 385
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;->setClickable(Z)V

    .line 386
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;->setFocusable(Z)V

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;->setVisibility(I)V

    .line 388
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;->setEnabled(Z)V

    .line 389
    return-void
.end method


# virtual methods
.method public performClick()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 393
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 399
    :goto_8
    return v0

    .line 397
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;->playSoundEffect(I)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuView;->showOverflowMenu()Z

    move v0, v1

    .line 399
    goto :goto_8
.end method
