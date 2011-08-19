.class Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$1;
.super Ljava/lang/Object;
.source "PageCellsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->recycle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

.field private final synthetic val$bm:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$1;->val$bm:Landroid/graphics/Bitmap;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    return-void
.end method
