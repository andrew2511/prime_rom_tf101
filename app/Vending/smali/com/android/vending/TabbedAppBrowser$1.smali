.class Lcom/android/vending/TabbedAppBrowser$1;
.super Ljava/lang/Object;
.source "TabbedAppBrowser.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/TabbedAppBrowser;->initTab(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLaunchedView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/vending/TabbedAppBrowser;

.field final synthetic val$radioButton:Landroid/widget/RadioButton;

.field final synthetic val$tabIntent:Landroid/content/Intent;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/TabbedAppBrowser;Landroid/widget/RadioButton;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/vending/TabbedAppBrowser$1;->this$0:Lcom/android/vending/TabbedAppBrowser;

    iput-object p2, p0, Lcom/android/vending/TabbedAppBrowser$1;->val$radioButton:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/android/vending/TabbedAppBrowser$1;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/vending/TabbedAppBrowser$1;->val$tabIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 139
    iget-object v5, p0, Lcom/android/vending/TabbedAppBrowser$1;->val$radioButton:Landroid/widget/RadioButton;

    if-eqz p2, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v9, v6}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 141
    if-nez p2, :cond_1

    .line 171
    :goto_1
    return-void

    .line 139
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 145
    :cond_1
    iget-object v5, p0, Lcom/android/vending/TabbedAppBrowser$1;->this$0:Lcom/android/vending/TabbedAppBrowser;

    const v6, 0x7f08008c

    invoke-virtual {v5, v6}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 146
    .local v1, contentArea:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 150
    iget-object v5, p0, Lcom/android/vending/TabbedAppBrowser$1;->this$0:Lcom/android/vending/TabbedAppBrowser;

    const v6, 0x7f08003d

    invoke-virtual {v5, v6}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vending/velvet/CarouselView;

    .line 151
    .local v0, carouselView:Lcom/android/vending/velvet/CarouselView;
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView;->reset()V

    .line 155
    :cond_2
    iget-object v5, p0, Lcom/android/vending/TabbedAppBrowser$1;->this$0:Lcom/android/vending/TabbedAppBrowser;

    invoke-static {v5}, Lcom/android/vending/TabbedAppBrowser;->access$000(Lcom/android/vending/TabbedAppBrowser;)Landroid/app/LocalActivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/vending/TabbedAppBrowser$1;->val$tag:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/vending/TabbedAppBrowser$1;->val$tabIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6, v7}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    .line 157
    .local v3, w:Landroid/view/Window;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 160
    .local v4, wd:Landroid/view/View;
    :goto_2
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 162
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v5, p0, Lcom/android/vending/TabbedAppBrowser$1;->mLaunchedView:Landroid/view/View;

    if-eq v5, v4, :cond_3

    iget-object v5, p0, Lcom/android/vending/TabbedAppBrowser$1;->mLaunchedView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 164
    iget-object v5, p0, Lcom/android/vending/TabbedAppBrowser$1;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 165
    iget-object v5, p0, Lcom/android/vending/TabbedAppBrowser$1;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 168
    :cond_3
    iput-object v4, p0, Lcom/android/vending/TabbedAppBrowser$1;->mLaunchedView:Landroid/view/View;

    .line 169
    iget-object v5, p0, Lcom/android/vending/TabbedAppBrowser$1;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    iget-object v5, p0, Lcom/android/vending/TabbedAppBrowser$1;->val$tag:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/vending/TabbedAppBrowser;->access$102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #wd:Landroid/view/View;
    :cond_4
    move-object v4, v9

    .line 157
    goto :goto_2
.end method
