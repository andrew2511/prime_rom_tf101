.class public Lorg/acra/CrashReportDialog;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v0, p0, Lorg/acra/CrashReportDialog;->b:Landroid/widget/EditText;

    .line 49
    iput-object v0, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic a(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x3

    const/high16 v9, 0x3f80

    const/16 v8, 0xa

    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REPORT_FILE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 63
    :cond_0
    invoke-virtual {p0, v10}, Lorg/acra/CrashReportDialog;->requestWindowFeature(I)Z

    .line 64
    invoke-static {}, Lorg/acra/ACRA;->getCrashResources()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 69
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 70
    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    invoke-direct {v3, v6, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    const-string v4, "RES_DIALOG_TEXT"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 78
    invoke-virtual {p0, v4}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v2, v3, v6, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 86
    const-string v2, "RES_DIALOG_COMMENT_PROMPT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 87
    if-eqz v2, :cond_1

    .line 88
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0, v2}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    .line 92
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 91
    invoke-virtual {v3, v2, v8, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 93
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/acra/CrashReportDialog;->b:Landroid/widget/EditText;

    .line 98
    iget-object v2, p0, Lorg/acra/CrashReportDialog;->b:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 100
    iget-object v2, p0, Lorg/acra/CrashReportDialog;->b:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    .line 108
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 107
    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 110
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 111
    const v4, 0x1040013

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 112
    new-instance v4, Lorg/acra/c;

    invoke-direct {v4, p0, v0}, Lorg/acra/c;-><init>(Lorg/acra/CrashReportDialog;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    invoke-direct {v4, v6, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 138
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 141
    const v4, 0x1040009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 142
    new-instance v4, Lorg/acra/d;

    invoke-direct {v4, p0}, Lorg/acra/d;-><init>(Lorg/acra/CrashReportDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    invoke-direct {v4, v6, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 151
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 153
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->setContentView(Landroid/view/View;)V

    .line 159
    const-string v1, "RES_DIALOG_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 160
    if-eqz v1, :cond_2

    .line 161
    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->setTitle(I)V

    .line 165
    :cond_2
    const-string v1, "RES_DIALOG_ICON"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 166
    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 174
    :goto_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0x29a

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 175
    return-void

    .line 170
    :cond_3
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 171
    const v1, 0x1080027

    .line 170
    invoke-virtual {v0, v10, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    goto :goto_0
.end method
