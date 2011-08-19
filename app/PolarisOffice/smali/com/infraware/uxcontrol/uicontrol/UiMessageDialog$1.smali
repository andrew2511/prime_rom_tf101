.class Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog$1;
.super Landroid/widget/TextView;
.source "UiMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 51
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 56
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog$1;->setGravity(I)V

    .line 57
    return-void
.end method
