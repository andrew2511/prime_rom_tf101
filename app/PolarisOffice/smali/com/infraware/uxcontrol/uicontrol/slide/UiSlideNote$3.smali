.class Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$3;
.super Ljava/lang/Object;
.source "UiSlideNote.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$3;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$3;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    iget-object v1, v1, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->m_oActivity:Lcom/infraware/slide/UxSlideEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/slide/UxSlideEditorActivity;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    check-cast v0, Lcom/infraware/slide/UxSlideToolBarUpdater;

    .line 141
    .local v0, oToolbarUpdater:Lcom/infraware/slide/UxSlideToolBarUpdater;
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/infraware/slide/UxSlideToolBarUpdater;->setEditableMode(Z)V

    .line 142
    return-void

    .line 141
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
