.class public abstract Lcom/amazon/kcp/library/ui/CoverRowView;
.super Landroid/widget/RelativeLayout;
.source "CoverRowView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public abstract getCoverView()Lcom/amazon/kcp/library/ui/BookCoverView;
.end method

.method public abstract setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;F)V
.end method
