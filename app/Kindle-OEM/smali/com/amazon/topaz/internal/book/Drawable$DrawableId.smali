.class public Lcom/amazon/topaz/internal/book/Drawable$DrawableId;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableId"
.end annotation


# instance fields
.field public final pageNum_:I

.field public val_:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "pageNum"
    .parameter "id"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->pageNum_:I

    .line 48
    iput p2, p0, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->val_:I

    .line 49
    return-void
.end method
