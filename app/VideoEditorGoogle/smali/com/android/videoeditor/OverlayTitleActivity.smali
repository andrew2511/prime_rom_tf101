.class public Lcom/android/videoeditor/OverlayTitleActivity;
.super Landroid/app/Activity;
.source "OverlayTitleActivity.java"


# static fields
.field public static final PARAM_MEDIA_ITEM_ID:Ljava/lang/String; = "media_item_id"

.field public static final PARAM_OVERLAY_ATTRIBUTES:Ljava/lang/String; = "attributes"

.field public static final PARAM_OVERLAY_ID:Ljava/lang/String; = "overlay_id"


# instance fields
.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field private mOverlayImageView:Landroid/widget/ImageView;

.field private mOverlayType:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private final mTextWatcher:Landroid/text/TextWatcher;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Lcom/android/videoeditor/OverlayTitleActivity$1;

    invoke-direct {v0, p0}, Lcom/android/videoeditor/OverlayTitleActivity$1;-><init>(Lcom/android/videoeditor/OverlayTitleActivity;)V

    iput-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/OverlayTitleActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mOverlayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/videoeditor/OverlayTitleActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mOverlayBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/videoeditor/OverlayTitleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mOverlayType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/OverlayTitleActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/OverlayTitleActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mSubtitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/videoeditor/OverlayTitleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/videoeditor/OverlayTitleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/videoeditor/OverlayTitleActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mOverlayImageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;)V
    .locals 8
    .parameter "target"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 119
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v1, extras:Landroid/content/Intent;
    const-string v5, "media_item_id"

    invoke-virtual {p0}, Lcom/android/videoeditor/OverlayTitleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "media_item_id"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/android/videoeditor/OverlayTitleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "overlay_id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, overlayId:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 125
    const-string v5, "overlay_id"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_0
    const v5, 0x7f080023

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/OverlayTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 129
    .local v4, titleView:Landroid/widget/TextView;
    const v5, 0x7f080024

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/OverlayTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    .local v3, subTitleView:Landroid/widget/TextView;
    iget v5, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mOverlayType:I

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/videoeditor/service/MovieOverlay;->buildUserAttributes(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, attributes:Landroid/os/Bundle;
    const-string v5, "attributes"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v1}, Lcom/android/videoeditor/OverlayTitleActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/videoeditor/OverlayTitleActivity;->finish()V

    goto :goto_0

    .line 140
    .end local v0           #attributes:Landroid/os/Bundle;
    .end local v1           #extras:Landroid/content/Intent;
    .end local v2           #overlayId:Ljava/lang/String;
    .end local v3           #subTitleView:Landroid/widget/TextView;
    .end local v4           #titleView:Landroid/widget/TextView;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/videoeditor/OverlayTitleActivity;->finish()V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x7f080025
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/OverlayTitleActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/OverlayTitleActivity;->setFinishOnTouchOutside(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/android/videoeditor/OverlayTitleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "attributes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 86
    .local v7, attributes:Landroid/os/Bundle;
    invoke-static {v7}, Lcom/android/videoeditor/service/MovieOverlay;->getType(Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mOverlayType:I

    .line 87
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/OverlayTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mOverlayImageView:Landroid/widget/ImageView;

    .line 90
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 91
    .local v8, dbo:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/videoeditor/OverlayTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020022

    invoke-static {v0, v1, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 93
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mPreviewWidth:I

    .line 94
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mPreviewHeight:I

    .line 96
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/OverlayTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mTitleView:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/OverlayTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mSubtitleView:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mSubtitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    if-nez p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mTitleView:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/videoeditor/service/MovieOverlay;->getTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mSubtitleView:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/videoeditor/service/MovieOverlay;->getSubtitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mOverlayBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mOverlayType:I

    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mPreviewWidth:I

    iget v6, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mPreviewHeight:I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/util/ImageUtils;->buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 110
    iget-object v0, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mOverlayImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/videoeditor/OverlayTitleActivity;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method
