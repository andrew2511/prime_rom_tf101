.class public final Lcom/google/android/gm/provider/MessageCursorLoader$ReloadContentObserver;
.super Landroid/database/ContentObserver;
.source "MessageCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MessageCursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReloadContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/MessageCursorLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MessageCursorLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/gm/provider/MessageCursorLoader$ReloadContentObserver;->this$0:Lcom/google/android/gm/provider/MessageCursorLoader;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 42
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader$ReloadContentObserver;->this$0:Lcom/google/android/gm/provider/MessageCursorLoader;

    invoke-static {v0}, Lcom/google/android/gm/provider/MessageCursorLoader;->access$000(Lcom/google/android/gm/provider/MessageCursorLoader;)V

    .line 52
    return-void
.end method
