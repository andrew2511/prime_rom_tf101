.class Lcom/splashtop/remote/softkeyboard/HotkeySupport$1;
.super Ljava/lang/Object;
.source "HotkeySupport.java"

# interfaces
.implements Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/softkeyboard/HotkeySupport;->getHotkeyBar(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/softkeyboard/HotkeySupport;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$1;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$1;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v0}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->releaseHotkey()V

    .line 74
    return-void
.end method
