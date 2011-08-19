.class public Lcom/asus/reader/ui/MySeekBar;
.super Landroid/widget/SeekBar;
.source "MySeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/ui/MySeekBar$InterceptKeyListener;
    }
.end annotation


# instance fields
.field private mInterceptKeyListener:Lcom/asus/reader/ui/MySeekBar$InterceptKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/asus/reader/ui/MySeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/reader/ui/MySeekBar;->mInterceptKeyListener:Lcom/asus/reader/ui/MySeekBar$InterceptKeyListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/asus/reader/ui/MySeekBar;->mInterceptKeyListener:Lcom/asus/reader/ui/MySeekBar$InterceptKeyListener;

    invoke-interface {v0, p1, p2}, Lcom/asus/reader/ui/MySeekBar$InterceptKeyListener;->interceptKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setInterceptKeyListener(Lcom/asus/reader/ui/MySeekBar$InterceptKeyListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/asus/reader/ui/MySeekBar;->mInterceptKeyListener:Lcom/asus/reader/ui/MySeekBar$InterceptKeyListener;

    .line 28
    return-void
.end method
