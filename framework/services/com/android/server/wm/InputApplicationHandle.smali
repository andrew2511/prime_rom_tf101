.class public final Lcom/android/server/wm/InputApplicationHandle;
.super Ljava/lang/Object;
.source "InputApplicationHandle.java"


# instance fields
.field public final appWindowToken:Lcom/android/server/wm/AppWindowToken;

.field private ptr:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .registers 2
    .parameter "appWindowToken"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/wm/InputApplicationHandle;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 39
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
    .line 43
    invoke-direct {p0}, Lcom/android/server/wm/InputApplicationHandle;->nativeDispose()V

    .line 44
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 45
    return-void
.end method
