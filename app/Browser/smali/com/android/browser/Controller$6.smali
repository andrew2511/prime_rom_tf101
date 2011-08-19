.class Lcom/android/browser/Controller$6;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$extra:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/android/browser/Controller$6;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$6;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 1381
    iget-object v2, p0, Lcom/android/browser/Controller$6;->this$0:Lcom/android/browser/Controller;

    invoke-static {v2}, Lcom/android/browser/Controller;->access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1382
    .local v1, parent:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/Controller$6;->this$0:Lcom/android/browser/Controller;

    iget-object v3, p0, Lcom/android/browser/Controller$6;->val$extra:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/Tab;Ljava/lang/String;Z)Lcom/android/browser/Tab;

    move-result-object v0

    .line 1384
    .local v0, newTab:Lcom/android/browser/Tab;
    if-eq v0, v1, :cond_0

    .line 1385
    invoke-virtual {v1, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 1387
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
