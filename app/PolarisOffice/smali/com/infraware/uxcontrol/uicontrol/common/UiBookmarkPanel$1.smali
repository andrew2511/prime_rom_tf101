.class Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$1;
.super Ljava/lang/Object;
.source "UiBookmarkPanel.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->m_oAddBookmarkButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->getNativeView()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 109
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
