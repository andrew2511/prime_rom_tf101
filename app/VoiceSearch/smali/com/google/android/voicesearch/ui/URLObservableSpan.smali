.class public Lcom/google/android/voicesearch/ui/URLObservableSpan;
.super Landroid/text/style/URLSpan;
.source "URLObservableSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;


# direct methods
.method public constructor <init>(Landroid/text/style/URLSpan;Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/google/android/voicesearch/ui/URLObservableSpan;->mListener:Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;

    .line 39
    return-void
.end method

.method public static replace(Landroid/text/Spanned;Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;)Landroid/text/Spanned;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 48
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 51
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    invoke-interface {p0, v6, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 53
    array-length v5, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v2, v4, v6

    .line 54
    instance-of v1, v2, Landroid/text/style/URLSpan;

    if-eqz v1, :cond_0

    .line 55
    new-instance v7, Lcom/google/android/voicesearch/ui/URLObservableSpan;

    move-object v0, v2

    check-cast v0, Landroid/text/style/URLSpan;

    move-object v1, v0

    invoke-direct {v7, v1, p1}, Lcom/google/android/voicesearch/ui/URLObservableSpan;-><init>(Landroid/text/style/URLSpan;Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;)V

    .line 56
    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v7, v1, v8, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 53
    :goto_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3, v2, v1, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 64
    :cond_1
    return-object v3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/URLObservableSpan;->mListener:Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/ui/URLObservableSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;->onClick(Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    .line 45
    return-void
.end method
