.class Landroid/widget/TextView$InsertionPointCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionPointCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_FADE_OUT:I = 0xfa0

.field private static final DELAY_BEFORE_PASTE:I = 0x7d0

.field private static final RECENT_CUT_COPY_DURATION:I = 0x3a98


# instance fields
.field private mHandle:Landroid/widget/TextView$HandleView;

.field private mHider:Ljava/lang/Runnable;

.field private mPastePopupShower:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 9026
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9026
    invoke-direct {p0, p1}, Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/widget/TextView$InsertionPointCursorController;)Landroid/widget/TextView$HandleView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9026
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->getHandle()Landroid/widget/TextView$HandleView;

    move-result-object v0

    return-object v0
.end method

.method private getHandle()Landroid/widget/TextView$HandleView;
    .registers 4

    .prologue
    .line 9140
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    if-nez v0, :cond_e

    .line 9141
    new-instance v0, Landroid/widget/TextView$HandleView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    .line 9143
    :cond_e
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    return-object v0
.end method

.method private hideDelayed()V
    .registers 5

    .prologue
    .line 9081
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->removeHiderCallback()V

    .line 9082
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_e

    .line 9083
    new-instance v0, Landroid/widget/TextView$InsertionPointCursorController$2;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InsertionPointCursorController$2;-><init>(Landroid/widget/TextView$InsertionPointCursorController;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    .line 9089
    :cond_e
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9090
    return-void
.end method

.method private removeHiderCallback()V
    .registers 3

    .prologue
    .line 9067
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 9068
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9070
    :cond_b
    return-void
.end method

.method private removePastePopupCallback()V
    .registers 3

    .prologue
    .line 9061
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPastePopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 9062
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPastePopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9064
    :cond_b
    return-void
.end method


# virtual methods
.method public getCurrentOffset(Landroid/widget/TextView$HandleView;)I
    .registers 3
    .parameter "handle"

    .prologue
    .line 9126
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 9073
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    if-eqz v0, :cond_9

    .line 9074
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 9076
    :cond_9
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->removeHiderCallback()V

    .line 9077
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->removePastePopupCallback()V

    .line 9078
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 9093
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onDetached()V
    .registers 1

    .prologue
    .line 9148
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->removeHiderCallback()V

    .line 9149
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->removePastePopupCallback()V

    .line 9150
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 9130
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .parameter "isInTouchMode"

    .prologue
    .line 9134
    if-nez p1, :cond_5

    .line 9135
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 9137
    :cond_5
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 9037
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Landroid/widget/TextView$InsertionPointCursorController;->show(I)V

    .line 9038
    return-void
.end method

.method public show(I)V
    .registers 8
    .parameter "delayBeforePaste"

    .prologue
    .line 9041
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->getHandle()Landroid/widget/TextView$HandleView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView$HandleView;->show()V

    .line 9042
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed()V

    .line 9043
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->removePastePopupCallback()V

    .line 9044
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/widget/TextView;->access$5100()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 9045
    .local v0, durationSinceCutOrCopy:J
    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-gez v2, :cond_1e

    .line 9046
    const/4 p1, 0x0

    .line 9048
    :cond_1e
    if-eqz p1, :cond_28

    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$2300(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 9049
    :cond_28
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPastePopupShower:Ljava/lang/Runnable;

    if-nez v2, :cond_33

    .line 9050
    new-instance v2, Landroid/widget/TextView$InsertionPointCursorController$1;

    invoke-direct {v2, p0}, Landroid/widget/TextView$InsertionPointCursorController$1;-><init>(Landroid/widget/TextView$InsertionPointCursorController;)V

    iput-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPastePopupShower:Ljava/lang/Runnable;

    .line 9056
    :cond_33
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPastePopupShower:Ljava/lang/Runnable;

    int-to-long v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9058
    :cond_3b
    return-void
.end method

.method public updateOffset(Landroid/widget/TextView$HandleView;I)V
    .registers 4
    .parameter "handle"
    .parameter "offset"

    .prologue
    .line 9108
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 9109
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    .line 9110
    return-void
.end method

.method public updatePosition()V
    .registers 4

    .prologue
    .line 9113
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 9115
    .local v0, offset:I
    if-gez v0, :cond_13

    .line 9117
    const-string v1, "TextView"

    const-string v2, "Update cursor controller position called with no cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9118
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 9123
    :goto_12
    return-void

    .line 9122
    :cond_13
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->getHandle()Landroid/widget/TextView$HandleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView$HandleView;->positionAtCursor(I)V

    goto :goto_12
.end method

.method public updatePosition(Landroid/widget/TextView$HandleView;II)V
    .registers 7
    .parameter "handle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 9097
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 9098
    .local v1, previousOffset:I
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p2, p3}, Landroid/widget/TextView;->getOffset(II)I

    move-result v0

    .line 9100
    .local v0, newOffset:I
    if-eq v0, v1, :cond_14

    .line 9101
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView$InsertionPointCursorController;->updateOffset(Landroid/widget/TextView$HandleView;I)V

    .line 9102
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->removePastePopupCallback()V

    .line 9104
    :cond_14
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed()V

    .line 9105
    return-void
.end method
