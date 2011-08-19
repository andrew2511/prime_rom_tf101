.class public Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/FileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field icadd:Landroid/widget/CheckBox;

.field icon:Landroid/widget/ImageView;

.field private isAdded:Z

.field private isFolder:Z

.field public path:Ljava/lang/String;

.field position:I

.field size:Landroid/widget/TextView;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/yostore/aws/view/capture/FileAdapter;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/capture/FileAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 248
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->this$0:Lnet/yostore/aws/view/capture/FileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-boolean v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isFolder:Z

    .line 256
    iput-boolean v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isAdded:Z

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;)Z
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-boolean v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isAdded:Z

    return v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;)Z
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-boolean v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isFolder:Z

    return v0
.end method

.method private initAddIcon()V
    .locals 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isFolder:Z

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icadd:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isAdded:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icadd:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method private initFsIcon()V
    .locals 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isFolder:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->this$0:Lnet/yostore/aws/view/capture/FileAdapter;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/FileAdapter;->access$2(Lnet/yostore/aws/view/capture/FileAdapter;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 276
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icadd:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 281
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->this$0:Lnet/yostore/aws/view/capture/FileAdapter;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/FileAdapter;->access$3(Lnet/yostore/aws/view/capture/FileAdapter;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icadd:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method getIsAdd()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isAdded:Z

    return v0
.end method

.method getIsFolder()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isFolder:Z

    return v0
.end method

.method setIsAdd(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 262
    iput-boolean p1, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isAdded:Z

    .line 263
    invoke-direct {p0}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->initAddIcon()V

    .line 264
    return-void
.end method

.method setIsFolder(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 266
    iput-boolean p1, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isFolder:Z

    .line 267
    invoke-direct {p0}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->initFsIcon()V

    .line 268
    return-void
.end method

.method taggleAdd()V
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->isAdded:Z

    .line 271
    invoke-direct {p0}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->initAddIcon()V

    .line 272
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
