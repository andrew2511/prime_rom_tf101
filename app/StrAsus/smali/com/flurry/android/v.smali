.class final Lcom/flurry/android/v;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/text/SpannedString;

.field private final b:Landroid/text/SpannedString;


# direct methods
.method public constructor <init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 213
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 209
    new-instance v0, Landroid/text/SpannedString;

    const-string v1, "<html><div=\'style:font-size:7px\'>&lt; Previous</div></html>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/flurry/android/v;->a:Landroid/text/SpannedString;

    .line 210
    new-instance v0, Landroid/text/SpannedString;

    const-string v1, "<html><div=\'style:font-size:7px;color:#ffA500\'>&lt; Previous</div></html>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/flurry/android/v;->b:Landroid/text/SpannedString;

    .line 216
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/flurry/android/v;->setBackgroundColor(I)V

    .line 219
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 220
    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 221
    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 222
    iget-object v1, p0, Lcom/flurry/android/v;->a:Landroid/text/SpannedString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {v0, v6, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 224
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 225
    new-instance v1, Lcom/flurry/android/w;

    invoke-direct {v1, p0, v0}, Lcom/flurry/android/w;-><init>(Lcom/flurry/android/v;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 234
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 238
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 239
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 240
    invoke-virtual {p0, v1}, Lcom/flurry/android/v;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 244
    invoke-virtual {v1, v4, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 245
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 246
    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/v;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/v;)Landroid/text/SpannedString;
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/flurry/android/v;->b:Landroid/text/SpannedString;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/v;)Landroid/text/SpannedString;
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/flurry/android/v;->a:Landroid/text/SpannedString;

    return-object v0
.end method
