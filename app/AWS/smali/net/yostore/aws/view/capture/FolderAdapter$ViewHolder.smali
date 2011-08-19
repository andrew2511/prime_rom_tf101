.class public Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field private isFolder:Z

.field public path:Ljava/lang/String;

.field position:I

.field size:Landroid/widget/TextView;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/yostore/aws/view/capture/FolderAdapter;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/capture/FolderAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->this$0:Lnet/yostore/aws/view/capture/FolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->isFolder:Z

    return-void
.end method

.method private initFsIcon()V
    .locals 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->isFolder:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->this$0:Lnet/yostore/aws/view/capture/FolderAdapter;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/FolderAdapter;->access$0(Lnet/yostore/aws/view/capture/FolderAdapter;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->this$0:Lnet/yostore/aws/view/capture/FolderAdapter;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/FolderAdapter;->access$1(Lnet/yostore/aws/view/capture/FolderAdapter;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method getIsFolder()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->isFolder:Z

    return v0
.end method

.method setIsFolder(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 134
    iput-boolean p1, p0, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->isFolder:Z

    .line 135
    invoke-direct {p0}, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->initFsIcon()V

    .line 136
    return-void
.end method
