.class Lcom/android/videoeditor/widgets/ProgressBar;
.super Ljava/lang/Object;
.source "ProgressBar.java"


# static fields
.field private static mProgressBar:Lcom/android/videoeditor/widgets/ProgressBar;


# instance fields
.field private final mProgressLeftBitmap:Landroid/graphics/Bitmap;

.field private final mProgressRightBitmap:Landroid/graphics/Bitmap;

.field private final mProgressSrcRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020053

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressLeftBitmap:Landroid/graphics/Bitmap;

    .line 66
    const v1, 0x7f020054

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressRightBitmap:Landroid/graphics/Bitmap;

    .line 69
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressSrcRect:Landroid/graphics/Rect;

    .line 71
    return-void
.end method

.method public static getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    sget-object v0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressBar:Lcom/android/videoeditor/widgets/ProgressBar;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/videoeditor/widgets/ProgressBar;

    invoke-direct {v0, p0}, Lcom/android/videoeditor/widgets/ProgressBar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressBar:Lcom/android/videoeditor/widgets/ProgressBar;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressBar:Lcom/android/videoeditor/widgets/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;ILandroid/graphics/Rect;II)V
    .locals 3
    .parameter "canvas"
    .parameter "progress"
    .parameter "dest"
    .parameter "left"
    .parameter "width"

    .prologue
    const/4 v2, 0x0

    .line 90
    sparse-switch p2, :sswitch_data_0

    .line 106
    sub-int v0, p5, p4

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x64

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 109
    if-lez p2, :cond_0

    .line 110
    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 111
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 114
    :cond_0
    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    .line 115
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 116
    iput p5, p3, Landroid/graphics/Rect;->right:I

    .line 117
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressRightBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 92
    :sswitch_0
    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 93
    iput p5, p3, Landroid/graphics/Rect;->right:I

    .line 94
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressRightBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 99
    :sswitch_1
    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 100
    iput p5, p3, Landroid/graphics/Rect;->right:I

    .line 101
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProgressBar;->mProgressLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method
