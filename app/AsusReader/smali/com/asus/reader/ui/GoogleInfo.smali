.class public Lcom/asus/reader/ui/GoogleInfo;
.super Landroid/widget/ScrollView;
.source "GoogleInfo.java"

# interfaces
.implements Lcom/asus/reader/util/Downloader$UpdateListener;


# instance fields
.field public mBookCover:Landroid/widget/ImageView;

.field private mBookInfoDESC:Landroid/widget/TextView;

.field private mBookInfoIcon:Landroid/widget/Button;

.field private mBookInfoLabel:Landroid/widget/TextView;

.field private mBookInfoMISC:Landroid/widget/TextView;

.field private mButtonEPUB:Landroid/widget/Button;

.field private mButtonLink:Landroid/widget/Button;

.field private mButtonPDF:Landroid/widget/Button;

.field private mButtonPreview:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCover:Landroid/graphics/Bitmap;

.field private mCoverPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mHandler:Landroid/os/Handler;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mLoadingTimes:I

    .line 53
    iput-object p1, p0, Lcom/asus/reader/ui/GoogleInfo;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mHandler:Landroid/os/Handler;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mLoadingTimes:I

    .line 58
    iput-object p1, p0, Lcom/asus/reader/ui/GoogleInfo;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method


# virtual methods
.method public checkAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mCoverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mCoverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mLoadingTimes:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mCoverPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/asus/reader/util/Downloader;->loadURLImage(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;)V

    .line 223
    iget v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mLoadingTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mLoadingTimes:I

    .line 225
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 65
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/GoogleInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mBookInfoIcon:Landroid/widget/Button;

    .line 66
    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/GoogleInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mBookInfoLabel:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/GoogleInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mBookInfoMISC:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/GoogleInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mBookInfoDESC:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/GoogleInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mBookCover:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/GoogleInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mButtonLink:Landroid/widget/Button;

    .line 73
    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/GoogleInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mButtonPreview:Landroid/widget/Button;

    .line 74
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/GoogleInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mButtonPDF:Landroid/widget/Button;

    .line 75
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/GoogleInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mButtonEPUB:Landroid/widget/Button;

    .line 82
    return-void
.end method

.method public onUpdate(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "cover"
    .parameter "path"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/asus/reader/ui/GoogleInfo;->mCover:Landroid/graphics/Bitmap;

    .line 211
    iget-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mCoverPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/asus/reader/ui/GoogleInfo;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/asus/reader/ui/GoogleInfo$1;

    invoke-direct {v1, p0, p1}, Lcom/asus/reader/ui/GoogleInfo$1;-><init>(Lcom/asus/reader/ui/GoogleInfo;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_0
    return-void
.end method
