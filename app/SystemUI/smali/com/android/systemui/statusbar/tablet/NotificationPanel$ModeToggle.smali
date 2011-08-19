.class Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;
.super Landroid/view/View;
.source "NotificationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/NotificationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModeToggle"
.end annotation


# instance fields
.field mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

.field mTitle:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 86
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 87
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return v5

    .line 89
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->mTitle:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->mTitle:Landroid/view/View;

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->getHeight()I

    move-result v3

    if-ge v1, v3, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 98
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->mTitle:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->mTitle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->sendAccessibilityEvent(I)V

    .line 103
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->playSoundEffect(I)V

    .line 104
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->mTitle:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPanel(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    .line 79
    return-void
.end method

.method public setTitleArea(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$ModeToggle;->mTitle:Landroid/view/View;

    .line 82
    return-void
.end method
