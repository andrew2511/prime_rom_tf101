.class Lcom/splashtop/remote/DesktopActivity$2;
.super Ljava/lang/Object;
.source "DesktopActivity.java"

# interfaces
.implements Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;


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
    .line 160
    iput-object p1, p0, Lcom/splashtop/remote/DesktopActivity$2;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setHotkeyPressed(Z)V
    .locals 1
    .parameter "isPressed"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity$2;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-static {v0}, Lcom/splashtop/remote/DesktopActivity;->access$000(Lcom/splashtop/remote/DesktopActivity;)Lcom/splashtop/remote/DesktopView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/splashtop/remote/DesktopView;->setbHotkeyPressed(Z)V

    .line 165
    return-void
.end method
