.class public Lcom/google/googlenav/ui/android/AndroidBubbleView;
.super Landroid/widget/AbsoluteLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidBubbleView;->onLayout(ZIIII)V

    return-void
.end method
