.class Lcom/android/browser/BookmarkItem;
.super Landroid/widget/LinearLayout;
.source "BookmarkItem.java"


# instance fields
.field protected mImageView:Landroid/widget/ImageView;

.field protected mTextView:Landroid/widget/TextView;

.field protected mTitle:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;

.field protected mUrlText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f040017

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    const v2, 0x7f100002

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/browser/BookmarkItem;->mTextView:Landroid/widget/TextView;

    .line 50
    const v2, 0x7f100003

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/browser/BookmarkItem;->mUrlText:Landroid/widget/TextView;

    .line 51
    const v2, 0x7f100001

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    .line 52
    const v2, 0x7f10004a

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, star:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method setFaviconBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/16 v1, 0x50

    .line 108
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BookmarkItem;->mTitle:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    const/16 v1, 0x50

    .line 126
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
