.class Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->access$000(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)V

    .line 59
    return-void
.end method
