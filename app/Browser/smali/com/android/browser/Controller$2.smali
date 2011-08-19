.class Lcom/android/browser/Controller$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->start(Landroid/os/Bundle;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$currentTab:I

.field final synthetic val$icicle:Landroid/os/Bundle;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$restoreIncognitoTabs:Z


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/browser/Controller$2;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$2;->val$icicle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/browser/Controller$2;->val$intent:Landroid/content/Intent;

    iput p4, p0, Lcom/android/browser/Controller$2;->val$currentTab:I

    iput-boolean p5, p0, Lcom/android/browser/Controller$2;->val$restoreIncognitoTabs:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/browser/Controller$2;->this$0:Lcom/android/browser/Controller;

    iget-object v1, p0, Lcom/android/browser/Controller$2;->val$icicle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/browser/Controller$2;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/browser/Controller$2;->val$currentTab:I

    iget-boolean v4, p0, Lcom/android/browser/Controller$2;->val$restoreIncognitoTabs:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/browser/Controller;->access$100(Lcom/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;IZ)V

    .line 288
    return-void
.end method
