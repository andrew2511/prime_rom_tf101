.class Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog$1;
.super Landroid/app/Dialog;
.source "UiUnit_Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->createNativeView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    .line 58
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 64
    .line 74
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
