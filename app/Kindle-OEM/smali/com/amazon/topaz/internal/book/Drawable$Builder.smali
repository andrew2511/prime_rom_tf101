.class public abstract Lcom/amazon/topaz/internal/book/Drawable$Builder;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field private altTextID:I

.field private baseline:I

.field private final id:I

.field private final pageNum:I


# direct methods
.method protected constructor <init>(Lcom/amazon/topaz/internal/book/Drawable$DrawableId;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget v0, p1, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->pageNum_:I

    iput v0, p0, Lcom/amazon/topaz/internal/book/Drawable$Builder;->pageNum:I

    .line 81
    iget v0, p1, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->val_:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->val_:I

    iput v0, p0, Lcom/amazon/topaz/internal/book/Drawable$Builder;->id:I

    .line 82
    return-void
.end method

.method protected constructor <init>(Lcom/amazon/topaz/internal/book/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Drawable;->access$000(Lcom/amazon/topaz/internal/book/Drawable;)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/book/Drawable$Builder;->id:I

    .line 92
    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Drawable;->access$100(Lcom/amazon/topaz/internal/book/Drawable;)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/book/Drawable$Builder;->pageNum:I

    .line 93
    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Drawable;->access$200(Lcom/amazon/topaz/internal/book/Drawable;)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/book/Drawable$Builder;->baseline:I

    .line 94
    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Drawable;->access$300(Lcom/amazon/topaz/internal/book/Drawable;)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/book/Drawable$Builder;->altTextID:I

    .line 95
    return-void
.end method


# virtual methods
.method public abstract build()Lcom/amazon/topaz/internal/book/Drawable;
.end method

.method protected final getAltTextID()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable$Builder;->altTextID:I

    return v0
.end method

.method public final getBaseline()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable$Builder;->baseline:I

    return v0
.end method

.method protected final getID()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable$Builder;->id:I

    return v0
.end method

.method protected final getPageNum()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/amazon/topaz/internal/book/Drawable$Builder;->pageNum:I

    return v0
.end method

.method public final setAltTextID(I)Lcom/amazon/topaz/internal/book/Drawable$Builder;
    .locals 0
    .parameter "altTextID"

    .prologue
    .line 143
    iput p1, p0, Lcom/amazon/topaz/internal/book/Drawable$Builder;->altTextID:I

    .line 144
    return-object p0
.end method

.method public final setBaseline(I)Lcom/amazon/topaz/internal/book/Drawable$Builder;
    .locals 0
    .parameter "baseline"

    .prologue
    .line 123
    iput p1, p0, Lcom/amazon/topaz/internal/book/Drawable$Builder;->baseline:I

    .line 124
    return-object p0
.end method
