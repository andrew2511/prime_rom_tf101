.class Lcom/android/browser/TitleBarBase$1;
.super Ljava/lang/Object;
.source "TitleBarBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/TitleBarBase;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/TitleBarBase;

.field final synthetic val$currentTab:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/TitleBarBase;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/browser/TitleBarBase$1;->this$0:Lcom/android/browser/TitleBarBase;

    iput-object p2, p0, Lcom/android/browser/TitleBarBase$1;->val$currentTab:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/browser/TitleBarBase$1;->this$0:Lcom/android/browser/TitleBarBase;

    invoke-virtual {v0}, Lcom/android/browser/TitleBarBase;->clearFocus()V

    .line 138
    iget-object v0, p0, Lcom/android/browser/TitleBarBase$1;->val$currentTab:Lcom/android/browser/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/TitleBarBase$1;->this$0:Lcom/android/browser/TitleBarBase;

    iget-boolean v0, v0, Lcom/android/browser/TitleBarBase;->mInVoiceMode:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/browser/TitleBarBase$1;->this$0:Lcom/android/browser/TitleBarBase;

    iget-object v1, p0, Lcom/android/browser/TitleBarBase$1;->val$currentTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method
