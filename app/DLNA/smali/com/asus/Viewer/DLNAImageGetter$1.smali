.class Lcom/asus/Viewer/DLNAImageGetter$1;
.super Ljava/lang/Object;
.source "DLNAImageGetter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/DLNAImageGetter;->callback(IILandroid/graphics/Bitmap;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/DLNAImageGetter;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$isError:Z

.field final synthetic val$offset:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/asus/Viewer/DLNAImageGetter;IILandroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/asus/Viewer/DLNAImageGetter$1;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    iput p2, p0, Lcom/asus/Viewer/DLNAImageGetter$1;->val$position:I

    iput p3, p0, Lcom/asus/Viewer/DLNAImageGetter$1;->val$offset:I

    iput-object p4, p0, Lcom/asus/Viewer/DLNAImageGetter$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p5, p0, Lcom/asus/Viewer/DLNAImageGetter$1;->val$isError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/asus/Viewer/DLNAImageGetter$1;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v0}, Lcom/asus/Viewer/DLNAImageGetter;->access$000(Lcom/asus/Viewer/DLNAImageGetter;)Lcom/asus/Viewer/DLNAImageGetterCallback;

    move-result-object v0

    iget v1, p0, Lcom/asus/Viewer/DLNAImageGetter$1;->val$position:I

    iget v2, p0, Lcom/asus/Viewer/DLNAImageGetter$1;->val$offset:I

    iget-object v3, p0, Lcom/asus/Viewer/DLNAImageGetter$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v4, p0, Lcom/asus/Viewer/DLNAImageGetter$1;->val$isError:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/asus/Viewer/DLNAImageGetterCallback;->imageLoaded(IILandroid/graphics/Bitmap;Z)V

    .line 75
    return-void
.end method
