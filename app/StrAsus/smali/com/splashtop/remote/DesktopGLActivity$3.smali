.class Lcom/splashtop/remote/DesktopGLActivity$3;
.super Ljava/lang/Object;
.source "DesktopGLActivity.java"

# interfaces
.implements Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/DesktopGLActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/DesktopGLActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/DesktopGLActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/splashtop/remote/DesktopGLActivity$3;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHotkeyShowing()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity$3;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-static {v0}, Lcom/splashtop/remote/DesktopGLActivity;->access$200(Lcom/splashtop/remote/DesktopGLActivity;)Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->isHotkeyShowing()Z

    move-result v0

    return v0
.end method

.method public releaseHotkey()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity$3;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-static {v0}, Lcom/splashtop/remote/DesktopGLActivity;->access$200(Lcom/splashtop/remote/DesktopGLActivity;)Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->releaseHotkey()V

    .line 152
    return-void
.end method
