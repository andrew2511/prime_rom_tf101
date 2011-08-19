.class public Lcom/splashtop/remote/softkeyboard/HKContext;
.super Ljava/lang/Object;
.source "HKContext.java"


# instance fields
.field private hotkey:Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public makeView(Landroid/content/res/Configuration;)Landroid/view/View;
    .locals 1
    .parameter "config"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HKContext;->hotkey:Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;

    invoke-interface {v0, p1}, Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;->getHotkeyView(Landroid/content/res/Configuration;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HKContext;->hotkey:Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;->releaseHotkey(Z)V

    .line 22
    return-void
.end method

.method public setHotkey(Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;)V
    .locals 0
    .parameter "hotkey"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/HKContext;->hotkey:Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;

    .line 14
    return-void
.end method
