.class public Lcom/android/contacts/quickcontact/QuickContactRootLayout;
.super Landroid/widget/LinearLayout;
.source "QuickContactRootLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactRootLayout$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/contacts/quickcontact/QuickContactRootLayout$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactRootLayout;->mListener:Lcom/android/contacts/quickcontact/QuickContactRootLayout$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactRootLayout;->mListener:Lcom/android/contacts/quickcontact/QuickContactRootLayout$Listener;

    invoke-interface {v0}, Lcom/android/contacts/quickcontact/QuickContactRootLayout$Listener;->onBackPressed()V

    .line 46
    :cond_0
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/quickcontact/QuickContactRootLayout$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactRootLayout;->mListener:Lcom/android/contacts/quickcontact/QuickContactRootLayout$Listener;

    .line 37
    return-void
.end method
