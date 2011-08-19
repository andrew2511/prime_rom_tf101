.class Lcom/android/gallery3d/app/ManageCachePage$2;
.super Lcom/android/gallery3d/ui/SlotView$SimpleListener;
.source "ManageCachePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/ManageCachePage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/ManageCachePage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ManageCachePage;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/gallery3d/app/ManageCachePage$2;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$2;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/ManageCachePage;->onSingleTapUp(I)V

    .line 208
    return-void
.end method
