.class public final Lcom/android/server/wm/InputWindowHandle;
.super Ljava/lang/Object;
.source "InputWindowHandle.java"


# instance fields
.field public final inputApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

.field private ptr:I

.field public final windowState:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InputApplicationHandle;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 3
    .parameter "inputApplicationHandle"
    .parameter "windowState"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/wm/InputWindowHandle;->inputApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    .line 43
    iput-object p2, p0, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 44
    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/wm/InputWindowHandle;->nativeDispose()V

    .line 49
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 50
    return-void
.end method
