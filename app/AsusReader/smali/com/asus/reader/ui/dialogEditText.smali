.class public Lcom/asus/reader/ui/dialogEditText;
.super Landroid/widget/RelativeLayout;
.source "dialogEditText.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lcom/asus/reader/ui/dialogEditText;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object p1, p0, Lcom/asus/reader/ui/dialogEditText;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 28
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/dialogEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asus/reader/ui/dialogEditText;->mEditText:Landroid/widget/EditText;

    .line 29
    iget-object v0, p0, Lcom/asus/reader/ui/dialogEditText;->mEditText:Landroid/widget/EditText;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 30
    return-void
.end method
