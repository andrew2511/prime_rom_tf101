.class Lcom/android/browser/Tab$3$3;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$3;->setupAutoFill(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$3;

.field final synthetic val$layout:Landroid/view/View;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$3;Landroid/view/View;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/android/browser/Tab$3$3;->this$1:Lcom/android/browser/Tab$3;

    iput-object p2, p0, Lcom/android/browser/Tab$3$3;->val$layout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/browser/Tab$3$3;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1170
    iget-object v2, p0, Lcom/android/browser/Tab$3$3;->val$layout:Landroid/view/View;

    const v3, 0x7f10005a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1173
    .local v0, disableAutoFill:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1175
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    .line 1176
    .local v1, s:Lcom/android/browser/BrowserSettings;
    iget-object v2, p0, Lcom/android/browser/Tab$3$3;->this$1:Lcom/android/browser/Tab$3;

    iget-object v2, v2, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$1800(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->addObserver(Landroid/webkit/WebSettings;)Lcom/android/browser/BrowserSettings$Observer;

    .line 1177
    iget-object v2, p0, Lcom/android/browser/Tab$3$3;->this$1:Lcom/android/browser/Tab$3;

    iget-object v2, v2, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->disableAutoFill(Landroid/content/Context;)V

    .line 1178
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->update()V

    .line 1179
    iget-object v2, p0, Lcom/android/browser/Tab$3$3;->this$1:Lcom/android/browser/Tab$3;

    iget-object v2, v2, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900b7

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1188
    .end local v1           #s:Lcom/android/browser/BrowserSettings;
    :goto_0
    return-void

    .line 1186
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab$3$3;->this$1:Lcom/android/browser/Tab$3;

    iget-object v2, v2, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Tab$3$3;->val$msg:Landroid/os/Message;

    invoke-interface {v2, v3}, Lcom/android/browser/WebViewController;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_0
.end method
