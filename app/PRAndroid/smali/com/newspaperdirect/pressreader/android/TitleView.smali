.class public Lcom/newspaperdirect/pressreader/android/TitleView;
.super Landroid/widget/TextView;
.source "TitleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/TitleView$OnLayoutSetupListener;
    }
.end annotation


# instance fields
.field private mLayoutSetupListener:Lcom/newspaperdirect/pressreader/android/TitleView$OnLayoutSetupListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 28
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 29
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TitleView;->mLayoutSetupListener:Lcom/newspaperdirect/pressreader/android/TitleView$OnLayoutSetupListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TitleView;->mLayoutSetupListener:Lcom/newspaperdirect/pressreader/android/TitleView$OnLayoutSetupListener;

    invoke-interface {v0}, Lcom/newspaperdirect/pressreader/android/TitleView$OnLayoutSetupListener;->onLayoutSetup()V

    .line 30
    :cond_0
    return-void
.end method

.method public setOnLayoutSetupListener(Lcom/newspaperdirect/pressreader/android/TitleView$OnLayoutSetupListener;)Lcom/newspaperdirect/pressreader/android/TitleView;
    .locals 0
    .parameter "listener"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/TitleView;->mLayoutSetupListener:Lcom/newspaperdirect/pressreader/android/TitleView$OnLayoutSetupListener;

    .line 34
    return-object p0
.end method
