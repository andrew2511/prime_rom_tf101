.class Lcom/splashtop/remote/DesktopActivity$3;
.super Ljava/lang/Object;
.source "DesktopActivity.java"

# interfaces
.implements Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/DesktopActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/DesktopActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/DesktopActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/splashtop/remote/DesktopActivity$3;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHotkeyShowing()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity$3;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-static {v0}, Lcom/splashtop/remote/DesktopActivity;->access$200(Lcom/splashtop/remote/DesktopActivity;)Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->isHotkeyShowing()Z

    move-result v0

    return v0
.end method

.method public releaseHotkey()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity$3;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-static {v0}, Lcom/splashtop/remote/DesktopActivity;->access$200(Lcom/splashtop/remote/DesktopActivity;)Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->releaseHotkey()V

    .line 173
    return-void
.end method
