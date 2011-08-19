.class Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner$1;
.super Ljava/lang/Object;
.source "UiUnit_Spinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->createNativeView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->access$1(Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->show(Z)V

    .line 55
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->getUserValue()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->m_strDefaultValue:Ljava/lang/CharSequence;

    .line 56
    return-void
.end method
