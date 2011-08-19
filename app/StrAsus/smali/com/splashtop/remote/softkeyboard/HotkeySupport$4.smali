.class Lcom/splashtop/remote/softkeyboard/HotkeySupport$4;
.super Ljava/lang/Object;
.source "HotkeySupport.java"

# interfaces
.implements Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/softkeyboard/HotkeySupport;
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
    .line 159
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$4;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$4;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->finish(Z)Z

    .line 164
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$4;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->showHotkeyBar(I)V

    .line 165
    return-void
.end method
