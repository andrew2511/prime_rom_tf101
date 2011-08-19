.class Lcom/layar/ui/smarttab/SmartTabHost$1;
.super Ljava/lang/Object;
.source "SmartTabHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/smarttab/SmartTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/smarttab/SmartTabHost;


# direct methods
.method constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabHost$1;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 121
    sparse-switch p2, :sswitch_data_0

    .line 130
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$1;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-static {v0}, Lcom/layar/ui/smarttab/SmartTabHost;->access$0(Lcom/layar/ui/smarttab/SmartTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 131
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$1;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-static {v0}, Lcom/layar/ui/smarttab/SmartTabHost;->access$0(Lcom/layar/ui/smarttab/SmartTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 128
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
