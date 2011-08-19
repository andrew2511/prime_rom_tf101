.class Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer$1;
.super Ljava/lang/Object;
.source "UiUnit_Drawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->createNativeView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->toggle()V

    .line 50
    return-void
.end method
