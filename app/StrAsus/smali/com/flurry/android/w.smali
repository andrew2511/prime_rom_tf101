.class final Lcom/flurry/android/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/flurry/android/v;


# direct methods
.method constructor <init>(Lcom/flurry/android/v;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/flurry/android/w;->b:Lcom/flurry/android/v;

    iput-object p2, p0, Lcom/flurry/android/w;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 230
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/flurry/android/w;->b:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->a(Lcom/flurry/android/v;)Landroid/text/SpannedString;

    move-result-object v0

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/flurry/android/w;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/w;->b:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->b(Lcom/flurry/android/v;)Landroid/text/SpannedString;

    move-result-object v0

    goto :goto_0
.end method
