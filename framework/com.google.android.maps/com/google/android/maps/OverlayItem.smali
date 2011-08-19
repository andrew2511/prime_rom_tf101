.class public Lcom/google/android/maps/OverlayItem;
.super Ljava/lang/Object;
.source "OverlayItem.java"


# static fields
.field public static final ITEM_STATE_FOCUSED_MASK:I = 0x4

.field public static final ITEM_STATE_PRESSED_MASK:I = 0x1

.field public static final ITEM_STATE_SELECTED_MASK:I = 0x2

.field private static final ITEM_STATE_TO_STATE_SET:[[I


# instance fields
.field protected mMarker:Landroid/graphics/drawable/Drawable;

.field protected final mPoint:Lcom/google/android/maps/GeoPoint;

.field protected final mSnippet:Ljava/lang/String;

.field protected final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v7, [I

    sget v2, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    neg-int v2, v2

    aput v2, v1, v4

    sget v2, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    neg-int v2, v2

    aput v2, v1, v5

    sget v2, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    neg-int v2, v2

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [I

    sget v2, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    neg-int v2, v2

    aput v2, v1, v4

    sget v2, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    neg-int v2, v2

    aput v2, v1, v5

    sget v2, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [I

    sget v2, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    neg-int v2, v2

    aput v2, v1, v4

    sget v2, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    aput v2, v1, v5

    sget v2, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    neg-int v2, v2

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [I

    sget v2, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    neg-int v2, v2

    aput v2, v1, v4

    sget v2, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    aput v2, v1, v5

    sget v2, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    aput v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v7, [I

    sget v3, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    aput v3, v2, v4

    sget v3, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    neg-int v3, v3

    aput v3, v2, v5

    sget v3, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    neg-int v3, v3

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [I

    sget v3, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    aput v3, v2, v4

    sget v3, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    neg-int v3, v3

    aput v3, v2, v5

    sget v3, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [I

    sget v3, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    aput v3, v2, v4

    sget v3, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    aput v3, v2, v5

    sget v3, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    neg-int v3, v3

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [I

    sget v3, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    aput v3, v2, v4

    sget v3, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    aput v3, v2, v5

    sget v3, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/OverlayItem;->ITEM_STATE_TO_STATE_SET:[[I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "point"
    .parameter "title"
    .parameter "snippet"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    .line 99
    iput-object p1, p0, Lcom/google/android/maps/OverlayItem;->mPoint:Lcom/google/android/maps/GeoPoint;

    .line 100
    iput-object p2, p0, Lcom/google/android/maps/OverlayItem;->mTitle:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/google/android/maps/OverlayItem;->mSnippet:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static setState(Landroid/graphics/drawable/Drawable;I)V
    .registers 3
    .parameter "drawable"
    .parameter "stateBitset"

    .prologue
    .line 149
    sget-object v0, Lcom/google/android/maps/OverlayItem;->ITEM_STATE_TO_STATE_SET:[[I

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 150
    return-void
.end method


# virtual methods
.method public getMarker(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "stateBitset"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/google/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/google/android/maps/OverlayItem;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 134
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPoint()Lcom/google/android/maps/GeoPoint;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/maps/OverlayItem;->mPoint:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/maps/OverlayItem;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/maps/OverlayItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public routableAddress()Ljava/lang/String;
    .registers 4

    .prologue
    const v2, 0x49742400

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/maps/OverlayItem;->mPoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Lcom/google/android/maps/OverlayItem;->mPoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setMarker(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "marker"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    .line 115
    return-void
.end method
