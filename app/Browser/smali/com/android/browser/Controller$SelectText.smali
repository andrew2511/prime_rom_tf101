.class Lcom/android/browser/Controller$SelectText;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectText"
.end annotation


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 2098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2099
    iput-object p1, p0, Lcom/android/browser/Controller$SelectText;->mWebView:Landroid/webkit/WebView;

    .line 2100
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/android/browser/Controller$SelectText;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2093
    iget-object v0, p0, Lcom/android/browser/Controller$SelectText;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectText()Z

    move-result v0

    .line 2095
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
