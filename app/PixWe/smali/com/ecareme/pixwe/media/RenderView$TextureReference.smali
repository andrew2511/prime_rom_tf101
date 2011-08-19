.class final Lcom/ecareme/pixwe/media/RenderView$TextureReference;
.super Ljava/lang/ref/WeakReference;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextureReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/ecareme/pixwe/media/Texture;",
        ">;"
    }
.end annotation


# instance fields
.field public final activeListEntry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/DirectLinkedList$Entry",
            "<",
            "Lcom/ecareme/pixwe/media/RenderView$TextureReference;",
            ">;"
        }
    .end annotation
.end field

.field public final gl:Ljavax/microedition/khronos/opengles/GL11;

.field public final textureId:I


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/media/Texture;Ljavax/microedition/khronos/opengles/GL11;Ljava/lang/ref/ReferenceQueue;I)V
    .locals 1
    .parameter "texture"
    .parameter "gl"
    .parameter "referenceQueue"
    .parameter "textureId"

    .prologue
    .line 107
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 114
    new-instance v0, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/RenderView$TextureReference;->activeListEntry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 108
    iput p4, p0, Lcom/ecareme/pixwe/media/RenderView$TextureReference;->textureId:I

    .line 109
    iput-object p2, p0, Lcom/ecareme/pixwe/media/RenderView$TextureReference;->gl:Ljavax/microedition/khronos/opengles/GL11;

    .line 110
    return-void
.end method
