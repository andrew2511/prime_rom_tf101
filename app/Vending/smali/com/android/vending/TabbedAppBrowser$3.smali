.class Lcom/android/vending/TabbedAppBrowser$3;
.super Ljava/lang/Object;
.source "TabbedAppBrowser.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/TabbedAppBrowser;->initTab(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/TabbedAppBrowser;


# direct methods
.method constructor <init>(Lcom/android/vending/TabbedAppBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/vending/TabbedAppBrowser$3;->this$0:Lcom/android/vending/TabbedAppBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/vending/TabbedAppBrowser$3;->this$0:Lcom/android/vending/TabbedAppBrowser;

    invoke-static {v0, p1}, Lcom/android/vending/TabbedAppBrowser;->access$200(Lcom/android/vending/TabbedAppBrowser;Landroid/view/View;)V

    .line 182
    return-void
.end method
