.class final Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;
.super Ljava/lang/Object;
.source "RecentApplicationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentApplicationsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DetailInfo"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter "_view"
    .parameter "_title"
    .parameter "_desc"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;->view:Landroid/view/View;

    .line 97
    iput-object p2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;->title:Landroid/widget/TextView;

    .line 98
    iput-object p3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;->description:Landroid/widget/TextView;

    .line 99
    return-void
.end method

.method private resizeView(Landroid/view/View;II)V
    .locals 6
    .parameter "view"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x8000

    .line 122
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    or-int v1, v2, v3

    .line 124
    .local v1, widthSpec:I
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    or-int v0, v2, v3

    .line 126
    .local v0, heightSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 128
    const-string v2, "RecentApplicationsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESIZED VIEW: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"

    .prologue
    .line 106
    iget-object v3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;->view:Landroid/view/View;

    const/16 v4, 0xc8

    const/16 v5, 0x50

    invoke-direct {p0, v3, v4, v5}, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;->resizeView(Landroid/view/View;II)V

    .line 107
    iget-object v3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 108
    .local v2, desiredWidth:I
    iget-object v3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 109
    .local v1, desiredHeight:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 111
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 113
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 114
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;->view:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 115
    return-object p1
.end method
