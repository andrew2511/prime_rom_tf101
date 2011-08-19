.class Lcom/asus/reader/ui/GoogleInfo$1;
.super Ljava/lang/Object;
.source "GoogleInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/ui/GoogleInfo;->onUpdate(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ui/GoogleInfo;

.field final synthetic val$cover:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/asus/reader/ui/GoogleInfo;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/asus/reader/ui/GoogleInfo$1;->this$0:Lcom/asus/reader/ui/GoogleInfo;

    iput-object p2, p0, Lcom/asus/reader/ui/GoogleInfo$1;->val$cover:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/asus/reader/ui/GoogleInfo$1;->this$0:Lcom/asus/reader/ui/GoogleInfo;

    iget-object v0, v0, Lcom/asus/reader/ui/GoogleInfo;->mBookCover:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/asus/reader/ui/GoogleInfo$1;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    return-void
.end method
