.class Lcom/android/launcher2/PagedViewIcon$1$1;
.super Ljava/lang/Object;
.source "PagedViewIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/PagedViewIcon$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PagedViewIcon$1;

.field final synthetic val$holographicOutline:Landroid/graphics/Bitmap;

.field final synthetic val$icon:Lcom/android/launcher2/PagedViewIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedViewIcon$1;Lcom/android/launcher2/PagedViewIcon;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/launcher2/PagedViewIcon$1$1;->this$0:Lcom/android/launcher2/PagedViewIcon$1;

    iput-object p2, p0, Lcom/android/launcher2/PagedViewIcon$1$1;->val$icon:Lcom/android/launcher2/PagedViewIcon;

    iput-object p3, p0, Lcom/android/launcher2/PagedViewIcon$1$1;->val$holographicOutline:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon$1$1;->val$icon:Lcom/android/launcher2/PagedViewIcon;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewIcon$1$1;->val$holographicOutline:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/launcher2/PagedViewIcon;->access$402(Lcom/android/launcher2/PagedViewIcon;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 95
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon$1$1;->val$icon:Lcom/android/launcher2/PagedViewIcon;

    invoke-static {v0}, Lcom/android/launcher2/PagedViewIcon;->access$600(Lcom/android/launcher2/PagedViewIcon;)Lcom/android/launcher2/PagedViewIconCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewIcon$1$1;->val$icon:Lcom/android/launcher2/PagedViewIcon;

    invoke-static {v1}, Lcom/android/launcher2/PagedViewIcon;->access$500(Lcom/android/launcher2/PagedViewIcon;)Lcom/android/launcher2/PagedViewIconCache$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/PagedViewIcon$1$1;->val$holographicOutline:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedViewIconCache;->addOutline(Lcom/android/launcher2/PagedViewIconCache$Key;Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon$1$1;->val$icon:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewIcon;->getHolographicOutlineView()Lcom/android/launcher2/HolographicPagedViewIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HolographicPagedViewIcon;->invalidate()V

    .line 97
    return-void
.end method
