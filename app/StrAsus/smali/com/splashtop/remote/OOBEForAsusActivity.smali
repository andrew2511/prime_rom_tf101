.class public Lcom/splashtop/remote/OOBEForAsusActivity;
.super Landroid/app/Activity;
.source "OOBEForAsusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private bUserTracking:Z

.field private mDialog:Landroid/app/ProgressDialog;

.field private mPageIndex:I

.field private scrheight:I

.field private scrwidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->bUserTracking:Z

    .line 31
    iput v1, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->mPageIndex:I

    .line 33
    iput v1, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrwidth:I

    .line 34
    iput v1, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrheight:I

    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/OOBEForAsusActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private showContents(I)V
    .locals 11
    .parameter "index"

    .prologue
    const/16 v10, 0x258

    const/4 v9, 0x4

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 156
    const v6, 0x7f090007

    invoke-virtual {p0, v6}, Lcom/splashtop/remote/OOBEForAsusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    .line 157
    .local v5, webView:Landroid/webkit/WebView;
    const v6, 0x7f090005

    invoke-virtual {p0, v6}, Lcom/splashtop/remote/OOBEForAsusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 158
    .local v4, imgView:Landroid/widget/ImageView;
    const v6, 0x7f090008

    invoke-virtual {p0, v6}, Lcom/splashtop/remote/OOBEForAsusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 159
    .local v2, descText:Landroid/widget/TextView;
    const v6, 0x7f090006

    invoke-virtual {p0, v6}, Lcom/splashtop/remote/OOBEForAsusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 160
    .local v3, eduLayout:Landroid/widget/RelativeLayout;
    const v6, 0x7f090009

    invoke-virtual {p0, v6}, Lcom/splashtop/remote/OOBEForAsusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 161
    .local v1, btnPositive:Landroid/widget/Button;
    const v6, 0x7f09000a

    invoke-virtual {p0, v6}, Lcom/splashtop/remote/OOBEForAsusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 163
    .local v0, btnNegative:Landroid/widget/Button;
    packed-switch p1, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 165
    :pswitch_0
    invoke-virtual {v5, v8}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 166
    iget v6, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrheight:I

    if-le v6, v10, :cond_0

    .line 167
    const v6, 0x7f020063

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    :goto_1
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    const v6, 0x7f07004e

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 173
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    const v6, 0x7f070049

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 175
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 169
    :cond_0
    const v6, 0x7f020064

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 178
    :pswitch_1
    invoke-virtual {v5, v8}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 179
    iget v6, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrheight:I

    if-le v6, v10, :cond_1

    .line 180
    const v6, 0x7f020065

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    const v6, 0x7f07004f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 186
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    const v6, 0x7f07004a

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 188
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_1
    const v6, 0x7f020066

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 191
    :pswitch_2
    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 192
    const-string v6, "file:///android_asset/V10_EULA_101111.html"

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 194
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    const v6, 0x7f07003d

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 198
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->mPageIndex:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->mPageIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->mPageIndex:I

    invoke-direct {p0, v0}, Lcom/splashtop/remote/OOBEForAsusActivity;->showContents(I)V

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget v1, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->mPageIndex:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 101
    iget v1, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->mPageIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->mPageIndex:I

    invoke-direct {p0, v1}, Lcom/splashtop/remote/OOBEForAsusActivity;->showContents(I)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FIRSTRUN"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "EULA_VERSION"

    const v3, 0x18af7

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/splashtop/remote/OOBEForAsusActivity;->setResult(I)V

    .line 107
    invoke-virtual {p0}, Lcom/splashtop/remote/OOBEForAsusActivity;->finish()V

    goto :goto_0

    .line 111
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :pswitch_1
    invoke-virtual {p0}, Lcom/splashtop/remote/OOBEForAsusActivity;->finish()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x7f090009
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/splashtop/remote/OOBEForAsusActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 41
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrwidth:I

    .line 42
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrheight:I

    .line 43
    iget v5, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrwidth:I

    iget v6, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrheight:I

    if-ge v5, v6, :cond_0

    .line 45
    iget v3, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrwidth:I

    .line 46
    .local v3, tmp:I
    iget v5, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrheight:I

    iput v5, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrwidth:I

    .line 47
    iput v3, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrheight:I

    .line 50
    .end local v3           #tmp:I
    :cond_0
    invoke-virtual {p0, v8}, Lcom/splashtop/remote/OOBEForAsusActivity;->requestWindowFeature(I)Z

    .line 51
    iget v5, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->scrheight:I

    const/16 v6, 0x258

    if-le v5, v6, :cond_1

    .line 52
    const v5, 0x7f030002

    invoke-virtual {p0, v5}, Lcom/splashtop/remote/OOBEForAsusActivity;->setContentView(I)V

    .line 55
    :goto_0
    invoke-virtual {p0, v7}, Lcom/splashtop/remote/OOBEForAsusActivity;->setRequestedOrientation(I)V

    .line 56
    invoke-virtual {p0, v7}, Lcom/splashtop/remote/OOBEForAsusActivity;->setResult(I)V

    .line 58
    const v5, 0x7f090009

    invoke-virtual {p0, v5}, Lcom/splashtop/remote/OOBEForAsusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 59
    .local v1, btnPositive:Landroid/widget/Button;
    const v5, 0x7f09000a

    invoke-virtual {p0, v5}, Lcom/splashtop/remote/OOBEForAsusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    .local v0, btnNegative:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 69
    iget-object v5, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 70
    iget-object v5, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 72
    const v5, 0x7f090007

    invoke-virtual {p0, v5}, Lcom/splashtop/remote/OOBEForAsusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 73
    .local v4, w:Landroid/webkit/WebView;
    new-instance v5, Lcom/splashtop/remote/OOBEForAsusActivity$1;

    invoke-direct {v5, p0}, Lcom/splashtop/remote/OOBEForAsusActivity$1;-><init>(Lcom/splashtop/remote/OOBEForAsusActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 80
    new-instance v5, Lcom/splashtop/remote/OOBEForAsusActivity$2;

    invoke-direct {v5, p0}, Lcom/splashtop/remote/OOBEForAsusActivity$2;-><init>(Lcom/splashtop/remote/OOBEForAsusActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 93
    iget v5, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->mPageIndex:I

    invoke-direct {p0, v5}, Lcom/splashtop/remote/OOBEForAsusActivity;->showContents(I)V

    .line 94
    return-void

    .line 54
    .end local v0           #btnNegative:Landroid/widget/Button;
    .end local v1           #btnPositive:Landroid/widget/Button;
    .end local v4           #w:Landroid/webkit/WebView;
    :cond_1
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/splashtop/remote/OOBEForAsusActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 134
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "USRTRACK"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->bUserTracking:Z

    .line 136
    iget-boolean v1, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->bUserTracking:Z

    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Lcom/splashtop/remote/utils/Common;->getFlurryKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 144
    iget-boolean v0, p0, Lcom/splashtop/remote/OOBEForAsusActivity;->bUserTracking:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 120
    :pswitch_0
    const v0, 0x7f02005f

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 123
    :pswitch_1
    const v0, 0x7f020060

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
