.class Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$3;
.super Ljava/lang/Object;
.source "UiSlideThumbnailPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$3;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "paramView"
    .parameter "paramMotionEvent"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$3;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->access$3(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
