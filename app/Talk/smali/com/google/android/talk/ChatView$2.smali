.class Lcom/google/android/talk/ChatView$2;
.super Landroid/database/ContentObserver;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->initialize(Landroid/content/Intent;Landroid/database/Cursor;Landroid/os/Bundle;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/google/android/talk/ChatView$2;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 451
    iget-object v0, p0, Lcom/google/android/talk/ChatView$2;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$300(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->requeryForContactInfo()V

    .line 452
    return-void
.end method
