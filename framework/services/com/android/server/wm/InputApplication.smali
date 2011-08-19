.class public final Lcom/android/server/wm/InputApplication;
.super Ljava/lang/Object;
.source "InputApplication.java"


# instance fields
.field public dispatchingTimeoutNanos:J

.field public inputApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recycle()V
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputApplication;->inputApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    .line 36
    return-void
.end method
