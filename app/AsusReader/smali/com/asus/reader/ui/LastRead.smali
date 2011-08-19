.class public Lcom/asus/reader/ui/LastRead;
.super Landroid/widget/RelativeLayout;
.source "LastRead.java"


# instance fields
.field private mAuthor:Landroid/widget/TextView;

.field private mColon:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/asus/reader/ui/LastRead;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/asus/reader/ui/LastRead;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 4
    .parameter "coverPath"
    .parameter "title"
    .parameter "author"
    .parameter "handler"

    .prologue
    const v2, 0x7f0b007b

    const/4 v3, 0x1

    .line 60
    iget-object v1, p0, Lcom/asus/reader/ui/LastRead;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 61
    iput-object p4, p0, Lcom/asus/reader/ui/LastRead;->mHandler:Landroid/os/Handler;

    .line 62
    :cond_0
    if-eqz p1, :cond_1

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, coverFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {p0, v2}, Lcom/asus/reader/ui/LastRead;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 70
    .end local v0           #coverFile:Ljava/io/File;
    :cond_1
    :goto_0
    const v1, 0x7f0b007c

    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/LastRead;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/asus/reader/ui/LastRead;->mAuthor:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/asus/reader/ui/LastRead;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_2
    const v1, 0x7f0b007a

    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/LastRead;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x828283

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v1, p0, Lcom/asus/reader/ui/LastRead;->mColon:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/asus/reader/ui/LastRead;->mColon:Landroid/widget/TextView;

    const v2, 0x7f070038

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    :cond_3
    invoke-virtual {p0, v3}, Lcom/asus/reader/ui/LastRead;->setEnabled(Z)V

    .line 77
    invoke-virtual {p0, v3}, Lcom/asus/reader/ui/LastRead;->setFocusable(Z)V

    .line 78
    invoke-virtual {p0, v3}, Lcom/asus/reader/ui/LastRead;->setFocusableInTouchMode(Z)V

    .line 79
    return-void

    .line 67
    .restart local v0       #coverFile:Ljava/io/File;
    :cond_4
    invoke-virtual {p0, v2}, Lcom/asus/reader/ui/LastRead;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/LastRead;->setEnabled(Z)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/LastRead;->setFocusable(Z)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/LastRead;->setFocusableInTouchMode(Z)V

    .line 113
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/LastRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, -0xb9b9ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/LastRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/asus/reader/ui/LastRead;->mAuthor:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/asus/reader/ui/LastRead;->mAuthor:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/ui/LastRead;->mColon:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/asus/reader/ui/LastRead;->mColon:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/LastRead;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 39
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/LastRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/LastRead;->mColon:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/LastRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/LastRead;->mAuthor:Landroid/widget/TextView;

    .line 41
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/asus/reader/ui/LastRead;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/asus/reader/ui/LastRead;->isFocusableInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0, v3}, Lcom/asus/reader/ui/LastRead;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0, v3}, Lcom/asus/reader/ui/LastRead;->setFocusableInTouchMode(Z)V

    .line 49
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 50
    .local v0, result:Z
    invoke-virtual {p0, v2}, Lcom/asus/reader/ui/LastRead;->setFocusable(Z)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/asus/reader/ui/LastRead;->setFocusableInTouchMode(Z)V

    move v1, v0

    .line 54
    .end local v0           #result:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "author"

    .prologue
    .line 82
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/LastRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/asus/reader/ui/LastRead;->mAuthor:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/asus/reader/ui/LastRead;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    return-void
.end method
