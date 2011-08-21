.class Lcom/android/server/wm/InputManager$2;
.super Landroid/database/ContentObserver;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/InputManager;->registerTouchpadModeSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InputManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InputManager;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/server/wm/InputManager$2;->this$0:Lcom/android/server/wm/InputManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/server/wm/InputManager$2;->this$0:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0}, Lcom/android/server/wm/InputManager;->updateTouchpadModeFromSettings()V

    .line 448
    return-void
.end method
