.class public Lcom/google/android/music/ScrollViewFillingLayout;
.super Landroid/widget/RelativeLayout;
.source "ScrollViewFillingLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollViewFilling"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "c"
    .parameter "a"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/google/android/music/ScrollViewFillingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 26
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/widget/ScrollView;

    if-eqz v3, :cond_0

    .line 29
    move-object v0, v1

    check-cast v0, Landroid/widget/ScrollView;

    move-object v2, v0

    .line 30
    .local v2, scroll:Landroid/widget/ScrollView;
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result p2

    .line 31
    invoke-virtual {p0, p2}, Lcom/google/android/music/ScrollViewFillingLayout;->setMinimumHeight(I)V

    .line 33
    .end local v2           #scroll:Landroid/widget/ScrollView;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 34
    return-void
.end method
